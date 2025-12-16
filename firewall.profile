[General]
dns-server = 8.8.8.8, 8.8.4.4, 2001:4860:4860::8888, 2001:4860:4860::8844
include-all-networks = true
include-local-networks = true
include-apns = true
include-cellular-services = true
use-local-host-item-for-proxy = false
all-hybrid = true
encrypted-dns-server = tls://dns.google
ipv6 = true
ipv6-vif = auto
compatibility-mode = 5
disable-geoip-db-auto-update = true
auto-suspend = false
loglevel = verbose
allow-wifi-access = true
allow-hotspot-access = true

[Rule]
NOT,((HOSTNAME-TYPE,DOMAIN)),REJECT
NOT,((OR,((DEST-PORT,8188), (DEST-PORT,123), (DEST-PORT,993), (DEST-PORT,443), (DEST-PORT,80), (DEST-PORT,5223), (DEST-PORT,3389), (DEST-PORT,853), (DEST-PORT,53)))),REJECT
CELLULAR-RADIO,HSDPA,CELLULAR-ONLY
CELLULAR-RADIO,LTE,CELLULAR-ONLY
FINAL,DIRECT
