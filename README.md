<!-- 本文件由 ./readme.make.md 自动生成，请不要直接修改此文件 -->

# extract

util for extract text

## import

```
import { xml } from 'https://deno.land/x/extract@0.1.35/mod.js'
```

or export in your `deps.js`

```
export { xml } from 'https://deno.land/x/extract@0.1.35/mod.js'
```

## use

see [src/index_test.coffee](./src/index_test.coffee) or [lib/index_test.js](./lib/index_test.js)  for example

coffeescript version

```coffee
XML = """<?xml version="1.0"?>
<root xmlns="urn:schemas-upnp-org:device-1-0" configId="1337"><specVersion><major>1</major><minor>1</minor></specVersion><device><deviceType>urn:schemas-upnp-org:device:InternetGatewayDevice:1</deviceType><friendlyName>ASUS RT-AC54U Wireless Router</friendlyName><manufacturer>ASUSTek Computer Inc.</manufacturer><manufacturerURL>http://www.asus.com/</manufacturerURL><modelDescription>ASUS RT-AC54U Wireless Router</modelDescription><modelName>Wireless Router</modelName><modelNumber>RT-AC54U</modelNumber><modelURL>http://www.asus.com/Networking/RTAC54U/</modelURL><serialNumber>1.0</serialNumber><UDN>uuid:75802409-bccb-40e7-8e6c-747d24ac17e3</UDN><serviceList><service><serviceType>urn:schemas-upnp-org:service:Layer3Forwarding:1</serviceType><serviceId>urn:upnp-org:serviceId:L3Forwarding1</serviceId><SCPDURL>/L3F.xml</SCPDURL><controlURL>/ctl/L3F</controlURL><eventSubURL>/evt/L3F</eventSubURL></service></serviceList><deviceList><device><deviceType>urn:schemas-upnp-org:device:WANDevice:1</deviceType><friendlyName>WANDevice</friendlyName><manufacturer>MiniUPnP</manufacturer><manufacturerURL>http://miniupnp.free.fr/</manufacturerURL><modelDescription>WAN Device</modelDescription><modelName>WAN Device</modelName><modelNumber>20180604</modelNumber><modelURL>http://miniupnp.free.fr/</modelURL><serialNumber>1.0</serialNumber><UDN>uuid:75802409-bccb-40e7-8e6c-747d24ac17e4</UDN><UPC>000000000000</UPC><serviceList><service><serviceType>urn:schemas-upnp-org:service:WANCommonInterfaceConfig:1</serviceType><serviceId>urn:upnp-org:serviceId:WANCommonIFC1</serviceId><SCPDURL>/WANCfg.xml</SCPDURL><controlURL>/ctl/CmnIfCfg</controlURL><eventSubURL>/evt/CmnIfCfg</eventSubURL></service></serviceList><deviceList><device><deviceType>urn:schemas-upnp-org:device:WANConnectionDevice:1</deviceType><friendlyName>WANConnectionDevice</friendlyName><manufacturer>MiniUPnP</manufacturer><manufacturerURL>http://miniupnp.free.fr/</manufacturerURL><modelDescription>MiniUPnP daemon</modelDescription><modelName>MiniUPnPd</modelName><modelNumber>20180604</modelNumber><modelURL>http://miniupnp.free.fr/</modelURL><serialNumber>1.0</serialNumber><UDN>uuid:75802409-bccb-40e7-8e6c-747d24ac17e5</UDN><UPC>000000000000</UPC><serviceList><service><serviceType>urn:schemas-upnp-org:service:WANIPConnection:1</serviceType><serviceId>urn:upnp-org:serviceId:WANIPConn1</serviceId><SCPDURL>/WANIPCn.xml</SCPDURL><controlURL>/ctl/IPConn</controlURL><eventSubURL>/evt/IPConn</eventSubURL></service></serviceList></device></deviceList></device></deviceList><presentationURL>http://192.168.123.1/</presentationURL></device></root>"""

import Xml, {li,one} from './xml.js'

for i from li(XML, 'service')
  xml = Xml(i)
  for j from ['serviceId','serviceType','controlURL']
    console.log j,":",xml.one(j)
  console.log i+"\n"


```

javascript version

```javascript
// Generated by CoffeeScript 2.5.1
var XML, i, j, ref, ref1, xml;

XML = `<?xml version="1.0"?>
<root xmlns="urn:schemas-upnp-org:device-1-0" configId="1337"><specVersion><major>1</major><minor>1</minor></specVersion><device><deviceType>urn:schemas-upnp-org:device:InternetGatewayDevice:1</deviceType><friendlyName>ASUS RT-AC54U Wireless Router</friendlyName><manufacturer>ASUSTek Computer Inc.</manufacturer><manufacturerURL>http://www.asus.com/</manufacturerURL><modelDescription>ASUS RT-AC54U Wireless Router</modelDescription><modelName>Wireless Router</modelName><modelNumber>RT-AC54U</modelNumber><modelURL>http://www.asus.com/Networking/RTAC54U/</modelURL><serialNumber>1.0</serialNumber><UDN>uuid:75802409-bccb-40e7-8e6c-747d24ac17e3</UDN><serviceList><service><serviceType>urn:schemas-upnp-org:service:Layer3Forwarding:1</serviceType><serviceId>urn:upnp-org:serviceId:L3Forwarding1</serviceId><SCPDURL>/L3F.xml</SCPDURL><controlURL>/ctl/L3F</controlURL><eventSubURL>/evt/L3F</eventSubURL></service></serviceList><deviceList><device><deviceType>urn:schemas-upnp-org:device:WANDevice:1</deviceType><friendlyName>WANDevice</friendlyName><manufacturer>MiniUPnP</manufacturer><manufacturerURL>http://miniupnp.free.fr/</manufacturerURL><modelDescription>WAN Device</modelDescription><modelName>WAN Device</modelName><modelNumber>20180604</modelNumber><modelURL>http://miniupnp.free.fr/</modelURL><serialNumber>1.0</serialNumber><UDN>uuid:75802409-bccb-40e7-8e6c-747d24ac17e4</UDN><UPC>000000000000</UPC><serviceList><service><serviceType>urn:schemas-upnp-org:service:WANCommonInterfaceConfig:1</serviceType><serviceId>urn:upnp-org:serviceId:WANCommonIFC1</serviceId><SCPDURL>/WANCfg.xml</SCPDURL><controlURL>/ctl/CmnIfCfg</controlURL><eventSubURL>/evt/CmnIfCfg</eventSubURL></service></serviceList><deviceList><device><deviceType>urn:schemas-upnp-org:device:WANConnectionDevice:1</deviceType><friendlyName>WANConnectionDevice</friendlyName><manufacturer>MiniUPnP</manufacturer><manufacturerURL>http://miniupnp.free.fr/</manufacturerURL><modelDescription>MiniUPnP daemon</modelDescription><modelName>MiniUPnPd</modelName><modelNumber>20180604</modelNumber><modelURL>http://miniupnp.free.fr/</modelURL><serialNumber>1.0</serialNumber><UDN>uuid:75802409-bccb-40e7-8e6c-747d24ac17e5</UDN><UPC>000000000000</UPC><serviceList><service><serviceType>urn:schemas-upnp-org:service:WANIPConnection:1</serviceType><serviceId>urn:upnp-org:serviceId:WANIPConn1</serviceId><SCPDURL>/WANIPCn.xml</SCPDURL><controlURL>/ctl/IPConn</controlURL><eventSubURL>/evt/IPConn</eventSubURL></service></serviceList></device></deviceList></device></deviceList><presentationURL>http://192.168.123.1/</presentationURL></device></root>`;

import Xml, {
  li,
  one
} from './xml.js';

ref = li(XML, 'service');
for (i of ref) {
  xml = Xml(i);
  ref1 = ['serviceId', 'serviceType', 'controlURL'];
  for (j of ref1) {
    console.log(j, ":", xml.one(j));
  }
  console.log(i + "\n");
}

//# sourceMappingURL=index_test.js.map

```

