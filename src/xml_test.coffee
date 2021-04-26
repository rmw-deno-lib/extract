xml = """<?xml version="1.0"?>
<root xmlns="urn:schemas-upnp-org:device-1-0" configId="1337">
    <specVersion>
        <major>1</major>
        <minor>1</minor>
    </specVersion>
    <device>
        <deviceType>urn:schemas-upnp-org:device:InternetGatewayDevice:1</deviceType>
        <friendlyName>iKuaiOS router</friendlyName>
        <manufacturer>iKuaiOS</manufacturer>
        <manufacturerURL>http://www.ikuai8.com/</manufacturerURL>
        <modelDescription>iKuaiOS router</modelDescription>
        <modelName>iKuaiOS router</modelName>
        <modelNumber>1</modelNumber>
        <modelURL>http://www.ikuai8.com/</modelURL>
        <serialNumber>12345678</serialNumber>
        <UDN>uuid:3d3cec3a-8cf0-11e0-98ee-001a6bd2d07b</UDN>
        <serviceList>
            <service>
                <serviceType>urn:schemas-upnp-org:service:Layer3Forwarding:1</serviceType>
                <serviceId>urn:upnp-org:serviceId:L3Forwarding1</serviceId>
                <SCPDURL>/L3F.xml</SCPDURL>
                <controlURL>/ctl/L3F</controlURL>
                <eventSubURL>/evt/L3F</eventSubURL>
            </service>
        </serviceList>
        <deviceList>
            <device>
                <deviceType>urn:schemas-upnp-org:device:WANDevice:1</deviceType>
                <friendlyName>WANDevice</friendlyName>
                <manufacturer>MiniUPnP</manufacturer>
                <manufacturerURL>http://miniupnp.free.fr/</manufacturerURL>
                <modelDescription>WAN Device</modelDescription>
                <modelName>WAN Device</modelName>
                <modelNumber>20210121</modelNumber>
                <modelURL>http://miniupnp.free.fr/</modelURL>
                <serialNumber>12345678</serialNumber>
                <UDN>uuid:3d3cec3a-8cf0-11e0-98ee-001a6bd2d07c</UDN>
                <UPC>000000000000</UPC>
                <serviceList>
                    <service>
                        <serviceType>urn:schemas-upnp-org:service:WANCommonInterfaceConfig:1</serviceType>
                        <serviceId>urn:upnp-org:serviceId:WANCommonIFC1</serviceId>
                        <SCPDURL>/WANCfg.xml</SCPDURL>
                        <controlURL>/ctl/CmnIfCfg</controlURL>
                        <eventSubURL>/evt/CmnIfCfg</eventSubURL>
                    </service>
                </serviceList>
                <deviceList>
                    <device>
                        <deviceType>urn:schemas-upnp-org:device:WANConnectionDevice:1</deviceType>
                        <friendlyName>WANConnectionDevice</friendlyName>
                        <manufacturer>MiniUPnP</manufacturer>
                        <manufacturerURL>http://miniupnp.free.fr/</manufacturerURL>
                        <modelDescription>MiniUPnP daemon</modelDescription>
                        <modelName>MiniUPnPd</modelName>
                        <modelNumber>20210121</modelNumber>
                        <modelURL>http://miniupnp.free.fr/</modelURL>
                        <serialNumber>12345678</serialNumber>
                        <UDN>uuid:3d3cec3a-8cf0-11e0-98ee-001a6bd2d07d</UDN>
                        <UPC>000000000000</UPC>
                        <serviceList>
                            <service>
                                <serviceType>urn:schemas-upnp-org:service:WANIPConnection:1</serviceType>
                                <serviceId>urn:upnp-org:serviceId:WANIPConn1</serviceId>
                                <SCPDURL>/WANIPCn.xml</SCPDURL>
                                <controlURL>/ctl/IPConn</controlURL>
                                <eventSubURL>/evt/IPConn</eventSubURL>
                            </service>
                        </serviceList>
                    </device>
                </deviceList>
            </device>
        </deviceList>
        <presentationURL>http://192.168.1.1/</presentationURL>
    </device>
</root>"""


import {li,one} from './xml.js'

for i from li(xml, 'service')
  console.log one(i,'serviceId')

