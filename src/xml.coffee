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

export dict = (xml, tag_li)=>
  result = {}
  for tag from tag_li
    r = one(xml, tag)
    if r != undefined
      result[tag] = r
  result

export Xml = class Xml
  constructor: (@$)->
  dict: (tag_li)->
    dict(@$, tag_li)
  li: (tag)->
    li(@$, tag)
  one: (tag)->
    one(@$, tag)

export default ($)=>
  new Xml($)


