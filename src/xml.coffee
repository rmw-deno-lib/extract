export li = (xml, tag)=>
  r = []
  begin = 0
  tag_len = tag.length + 2
  loop
    pos = xml.indexOf("<#{tag}>", begin)
    if pos < 0
      return r
    begin = pos+tag_len
    end = xml.indexOf("</#{tag}>", begin)
    if end < 0
      return r
    r.push xml[begin...end].trim()
    begin = end+tag_len+1
  return

export one = (xml, tag)=>
  len = tag.length + 2
  pos = xml.indexOf("<#{tag}>")
  if pos < 0
    return
  begin = pos+len
  end = xml.indexOf("</#{tag}>", begin)
  if end < 0
    return
  return xml[begin...end].trim()

export Xml = class Xml
  constructor: (@$)->
  li: (tag)->
    li(@$, tag)
  one: (tag)->
    one(@$, tag)

export default ($)=>
  new Xml($)


