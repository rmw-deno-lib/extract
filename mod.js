var li = (xml, tag)=>{
    var begin, end, pos, r, tag_len;
    r = [];
    begin = 0;
    tag_len = tag.length + 2;
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
    begin = pos + len;
    end = xml.indexOf(`</${tag}>`, begin);
    if (end < 0) {
        return;
    }
    return xml.slice(begin, end).trim();
};
var Xml = Xml = class Xml1 {
    constructor($1){
        this.$ = $1;
    }
    li(tag) {
        return li(this.$, tag);
    }
    one(tag) {
        return one(this.$, tag);
    }
};
const __default = ($)=>{
    return new Xml($);
};
const mod = function() {
    return {
        li: li,
        one: one,
        Xml: Xml,
        default: __default
    };
}();
export { mod as xml };

