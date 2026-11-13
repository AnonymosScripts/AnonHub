// JavaScript · build-protected-release.cjs · AnonHub · Windows/Node
// Uses darklua 0.19.0; fails closed on any compiler comparison mismatch.
const fs=require('node:fs'),path=require('node:path'),cp=require('node:child_process'),crypto=require('node:crypto');
const {escapeStrings}=require('./escape-luau-strings.cjs');
const [sourceDir,outputDir,darklua,luau]=process.argv.slice(2);
if(!luau)throw Error('Usage: node build-protected-release.cjs SOURCE OUTPUT DARKLUA_EXE LUAU_COMPILE_EXE');
if(path.resolve(sourceDir)===path.resolve(outputDir))throw Error('Source and output must be separate');
const routes=['superpower/main.lua','potato/chapter2.lua','universal/main.lua'];
const publicFiles=['loader.lua',...routes,'superpower/module.lua','superpower/test.lua'];
function read(file){const s=fs.readFileSync(path.join(sourceDir,file),'utf8');if(s.includes('-- AnonHub protected distribution'))throw Error('Readable source required: '+file);return s;}
const loader=read('loader.lua');
const declared=[...new Set([...loader.matchAll(/path="([^"]+\.lua)"/g)].map(m=>m[1]))].sort();
if(JSON.stringify(declared)!==JSON.stringify([...routes].sort()))throw Error('Route inventory mismatch');
const begin=loader.indexOf('local function loadGame(route)'),end=loader.indexOf('\nlocal start',begin);
if(begin<0||end<0)throw Error('Loader changed');
const bundle='local bundled={}\n'+routes.map(f=>'bundled['+JSON.stringify(f)+']=function(...)\n'+read(f)+'\nend').join('\n')+'\n'+loader.slice(0,begin).replace(/^local root="https:\/\/raw\.githubusercontent\.com\/AnonymosScripts\/AnonHub\/main\/"\r?\n/m,'')+'local function loadGame(route) return bundled[route.path] end\n'+loader.slice(end);
if(!bundle.includes('sdk.validate')||!(/start\((true|not resumeTransfer)\)\s*$/.test(bundle)))throw Error('Auth or language gate missing');
const config=path.join(__dirname,'protection.darklua.json');
const temp=path.join(outputDir,'.build');fs.mkdirSync(temp,{recursive:true});
function run(exe,args,binary=false){const r=cp.spawnSync(exe,args,{encoding:binary?undefined:'utf8',maxBuffer:40*1024*1024});if(r.error||r.status!==0)throw Error(String(r.error||r.stderr||r.stdout));return r.stdout;}
function stringTable(bytes){
 // Luau CLI supplied with this workspace emits bytecode v14/type encoding v3.
 if(bytes[0]!==14||bytes[1]!==3)throw Error('Compiler bytecode changed; review exact string-table verification');
 let i=2;
 function number(){let result=0,shift=0,x;do{if(i>=bytes.length||shift>28)throw Error('Invalid varint');x=bytes[i++];result+=(x&127)*2**shift;shift+=7;}while(x&128);return result;}
 const count=number(),strings=[];
 for(let n=0;n<count;n++){const len=number();if(i+len>bytes.length)throw Error('Invalid string table');strings.push(bytes.subarray(i,i+len).toString('base64'));i+=len;}
 return JSON.stringify(strings);
}
function signature(file){return {instructions:run(luau,['--text','--dump-constants','-g0',file]),strings:stringTable(run(luau,['--binary','-g0',file],true))};}
function verify(before,after){const a=signature(before),b=signature(after);if(a.instructions!==b.instructions||a.strings!==b.strings)throw Error('Compiler equivalence mismatch: '+after);}
const hash=s=>crypto.createHash('sha256').update(s).digest('hex');
const manifest={version:loader.match(/local version="([^"]+)"/)[1],tool:'darklua 0.19.0',protection:'AST local renaming, dense formatting, decimal string escapes; not encryption',files:[]};
const pending=[];
for(const [index,file] of publicFiles.entries()){
 const source=file==='loader.lua'||file==='superpower/test.lua'?bundle:read(file);
 const raw=path.join(temp,index+'.original.lua'),normalized=path.join(temp,index+'.normalized.lua'),renamed=path.join(temp,index+'.renamed.lua'),encoded=path.join(temp,index+'.encoded.lua');
 fs.writeFileSync(raw,source);fs.writeFileSync(normalized,source.replace(/\r\n/g,'\n'));
 run(darklua,['process',normalized,renamed,'--config',config]);
 const escaped=escapeStrings(fs.readFileSync(renamed,'utf8'));
 const marker=source.match(/local BOOT_VERSION="([^"]+)"/);
 const header='-- Luau\n-- AnonHub protected distribution '+manifest.version+'\n'+(file!=='loader.lua'&&file!=='superpower/test.lua'&&marker?'-- local BOOT_VERSION="'+marker[1]+'"\n':'');
 fs.writeFileSync(encoded,header+escaped.source.replace(/[ \t]+$/gm,'')+'\n');
 verify(raw,renamed);verify(renamed,encoded);
 const content=fs.readFileSync(encoded);pending.push({file,content});
 manifest.files.push({file,sourceSha256:hash(source),outputSha256:hash(content),bytes:content.length,stringsEncoded:escaped.count,compilerEquivalence:true});
 console.log('Verified '+file+' ('+content.length+' bytes)');
}
// No distributable files are written until all comparisons pass.
for(const {file,content} of pending){const dst=path.join(outputDir,file);fs.mkdirSync(path.dirname(dst),{recursive:true});fs.writeFileSync(dst,content);}
fs.writeFileSync(path.join(outputDir,'protection-manifest.json'),JSON.stringify(manifest,null,2)+'\n');
console.log('All six outputs verified. Private intermediates remain in .build; never publish that folder.');
