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

_pos_begin = (xml, tag, offset=0)=>
  pos = xml.indexOf("<#{tag}", offset)
  if pos < 0
    return -1
  pos = pos + tag.length + 2
  c = xml.charAt(pos)
  switch c
    when ">"
      return pos
    when " "
      return xml.indexOf(">",pos+1)
  return -1

export one = (xml, tag)=>
  begin = _pos_begin(xml, tag)
  if begin < 0
    return

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


