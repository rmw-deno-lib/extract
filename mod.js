var li = (xml, tag)=>{
    var begin, end, pos, r, tag_len;
    r = [];
    begin = 0;
    tag_len = tag.length + 3;
    while(true){
        pos = xml.indexOf(`<${tag}>`, begin);
        if (pos < 0) {
            return r;
        }
        begin = pos + tag_len;
        end = xml.indexOf(`</${tag}>`, begin);
        if (end < 0) {
            return r;
        }
        r.push(xml.slice(begin, end).trim());
        begin = end + tag_len + 1;
    }
};
var one = (xml, tag)=>{
    var begin, end, len, pos;
    len = tag.length + 2;
    pos = xml.indexOf(`<${tag}>`);
    if (pos < 0) {
        return;
    }
    begin = pos + 1 + len;
    end = xml.indexOf(`</${tag}>`, begin);
    if (end < 0) {
        return;
    }
    return xml.slice(begin, end).trim();
};
const mod = function() {
    return {
        li: li,
        one: one
    };
}();
export { mod as xml };

