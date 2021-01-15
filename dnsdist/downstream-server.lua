--[[
Server weight policy:
https://dnsdist.org/guides/serverselection.html

leastOutstanding

The default load balancing policy is called leastOutstanding,
which means the server with the least queries ‘in the air’
is picked. The exact selection algorithm is:

* pick the server with the least queries ‘in the air’ ;
* in case of a tie, pick the one with the lowest configured ‘order’ ;
* in case of a tie, pick the one with the lowest measured latency
  (over an average on the last 128 queries answered by that server).
--]]

--[[ Template
newServer({
        address="",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)


]]

newServer({
        address="91.239.100.100",
        name="anycast.censurfridns.dk",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns2.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="89.233.43.71",
        name="unicast.censurfridns.dk.",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns2.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="185.109.89.254",
        name="bornfiber.anycast.censurfridns.dk",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="130.225.244.166",
        name="deic-lgb.anycast.censurfridns.dk",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="130.226.161.34",
        name="deic-ore.anycast.censurfridns.dk",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="185.38.24.52",
        name="kracon.anycast.censurfridns.dk",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="198.180.150.12",
        name="rgnet-iad.anycast.censurfridns.dk",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="94.126.178.9",
        name="solido.anycast.censurfridns.dk",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="1.1.1.1",
        name="CloudFlare-dns01",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="AAAA", 
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="1.0.0.1",
        name="CloudFlare-dns02",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="77.88.8.8",
        name="Yandex (RU)-dns01",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns1.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="77.88.8.2",
        name="Yandex (RU)-dns02",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="195.129.12.122",
        name="UUNET (CH)-dns01",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="AAAA",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="192.76.144.66",
        name="UUNET (DE)-dns01",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="158.43.240.3",
        name="UUNET (UK)-dns01",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="64.6.64.6",
        name="Verisign (US)-dns01",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns1.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="64.6.65.6",
        name="Verisign (US)-dns01",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns2.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="165.87.13.129",
        name="AT&T (US)",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns2.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="168.95.1.1",
        name="HiNet (TW)",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns1.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="208.67.222.222",
        name="OpenDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns1.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="208.67.220.220",
        name="OpenDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="144.217.51.168",
        name="Securolytics (CA)",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns2.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="198.101.242.72",
        name="Alternate DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns2.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="23.253.163.53",
        name="Alternate DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns2.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

--[[ DNS Server down
newServer({
        address="205.204.88.60",
        name="BlockAid Public DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns2.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="178.21.23.150",
        name="BlockAid Public DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

--[[ DNS Server down
newServer({
        address="209.59.210.167",
        name="Christoph Hochsttter",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="85.214.117.11",
        name="Christoph Hochsttter",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

--[[ DNS Server down
newServer({
        address="212.82.225.7",
        name="ClaraNet",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="212.82.226.212",
        name="ClaraNet",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

newServer({
        address="84.200.69.80",
        name="DNS.Watch",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="84.200.70.40",
        name="DNS.Watch",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

--[[ DNS Server down
newServer({
        address="104.236.210.29",
        name="DNSReactor",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="45.55.155.25",
        name="DNSReactor",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

newServer({
        address="216.146.35.35",
        name="DYN",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="216.146.36.36",
        name="DYN",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="80.67.169.12",
        name="FDN",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

--[[ DNS Server down
newServer({
        address="85.214.73.63",
        name="FoeBud",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

--[[ DNS Server down
newServer({
        address="87.118.111.215",
        name="FoolDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="213.187.11.62",
        name="FoolDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

newServer({
        address="37.235.1.174",
        name="FreeDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="37.235.1.177",
        name="FreeDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="80.80.80.80",
        name="Freenom World",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="80.80.81.81",
        name="Freenom World",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="ns1.dns.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

--[[ DNS Server down
newServer({
        address="87.118.100.175",
        name="German Privacy Foundation e.V.",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="94.75.228.29",
        name="German Privacy Foundation e.V.",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="85.25.251.254",
        name="German Privacy Foundation e.V.",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="62.141.58.13",
        name="German Privacy Foundation e.V.",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

--[[ DNS Server down
newServer({
        address="81.218.119.11",
        name="GreenTeamDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="209.88.198.133",
        name="GreenTeamDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

newServer({
        address="74.82.42.42",
        name="Hurricane Electric",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="209.244.0.3",
        name="Level3",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="209.244.0.4",
        name="Level3",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

--[[ DNS Server down
newServer({
        address="156.154.70.1",
        name="Neustar DNS Advantage",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="156.154.71.1",
        name="Neustar DNS Advantage",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

--[[ DNS Server down
newServer({
        address="5.45.96.220",
        name="New Nations",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="185.82.22.133",
        name="New Nations",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

newServer({
        address="198.153.192.1",
        name="Norton DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="198.153.194.1",
        name="Norton DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

--[[ DNS Server down
newServer({
        address="58.6.115.42",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="58.6.115.43",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="119.31.230.42",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="200.252.98.162",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="217.79.186.148",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="81.89.98.6",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="78.159.101.37",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="203.167.220.153",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="82.229.244.191",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="216.87.84.211",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="66.244.95.20",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="207.192.69.155",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="72.14.189.120",
        name="OpenNIC",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

--[[ DNS Server down
newServer({
        address="194.145.226.26",
        name="PowerNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="77.220.232.44",
        name="PowerNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

newServer({
        address="195.46.39.39",
        name="SafeDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="195.46.39.40",
        name="SafeDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="193.58.251.251",
        name="SkyDNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

--[[ DNS Server down
newServer({
        address="208.76.50.50",
        name="SmartViper Public DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="208.76.51.51",
        name="SmartViper Public DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]

newServer({
        address="77.88.8.88",
        name="Yandex.DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="77.88.8.2",
        name="Yandex.DNS",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

newServer({
        address="109.69.8.51",
        name="puntCAT",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)

--[[ Apperantly only active for DOH
newServer({
        address="136.144.215.158",
        name="doh.powerdns.org",
        order=200,
        weight="100",
        pool={'ci-test'},
        checkType="A",
        checkName="www.mypdns.org",
        mustResolve=true,
        tcpRecvTimeout=5,
        tcpSendTimeout=5,
        retries=3
        }
)
]]
