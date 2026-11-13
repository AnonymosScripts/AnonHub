// Lexical string encoding only; the release build verifies identical Luau bytecode.
function bytes(value) { return [...Buffer.from(value,'utf8')].map(n=>'\\'+String(n).padStart(3,'0')).join(''); }
function escapeStrings(source) {
  let result='',i=0,count=0;
  while(i<source.length) {
    const ch=source[i];
    if(ch==='`') throw Error('Interpolated string requires explicit preprocessing.');
    if(ch==='"'||ch==="'") {
      const quote=ch;result+=quote;i++;count++;let closed=false;
      while(i<source.length) {
        if(source[i]===quote) { result+=quote;i++;closed=true;break; }
        if(source[i]==='\\') {
          const start=i++;const c=source[i++];
          if(c===undefined) throw Error('Incomplete string escape');
          if(/[0-9]/.test(c)) { for(let n=1;n<3&&/[0-9]/.test(source[i]||'');n++)i++; }
          else if(c==='x') i+=2;
          else if(c==='u'&&source[i]==='{') { const end=source.indexOf('}',i);if(end<0)throw Error('Unicode escape');i=end+1; }
          else if(c==='z') { while(i<source.length&&/\s/.test(source[i]))i++; }
          else if(c==='\r'&&source[i]==='\n') i++;
          result+=source.slice(start,i);
        } else {
          const char=String.fromCodePoint(source.codePointAt(i));result+=bytes(char);i+=char.length;
        }
      }
      if(!closed)throw Error('Unclosed quoted string');
    } else if(ch==='['&&/^\[=*\[/.test(source.slice(i))) {
      const open=source.slice(i).match(/^\[(=*)\[/)[0];const close=']'+open.slice(1,-1)+']';
      const end=source.indexOf(close,i+open.length);if(end<0)throw Error('Unclosed long string');
      let body=source.slice(i+open.length,end).replace(/\r\n|\n\r|\r/g,'\n');
      if(body.startsWith('\n'))body=body.slice(1);
      result+='"'+bytes(body)+'"';i=end+close.length;count++;
    } else { result+=ch;i++; }
  }
  return {source:result,count};
}
module.exports={escapeStrings};
