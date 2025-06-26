* checking system
CYGWIN detected
kernel: CYGWIN_NT-10.0-26100 version 3.4.10-1.x86_64 (runneradmin@fv-az1212-175) (gcc version 11.4.0 (GCC) ) 2023-11-29 12:12 UTC
firewall type is windivert
CURL=curl-kyber
curl 8.14.1 (x86_64-pc-cygwin) libcurl/8.14.1 OpenSSL/3.5.0 zlib/1.3.1 zstd/1.5.7 nghttp2/1.65.0 nghttp3/1.10.1
Release-Date: 2025-06-04
Protocols: dict file ftp ftps http https rtsp telnet tftp ws wss
Features: alt-svc AsynchDNS HSTS HTTP2 HTTP3 HTTPS-proxy IPv6 Largefile libz NTLM SSL threadsafe TLS-SRP UnixSockets zstd
* checking already running DPI bypass processes
* checking prerequisites
* checking DNS
system DNS is working
comparing system resolver to public DNS : 8.8.8.8
pornhub.com : OK
ntc.party : OK
rutracker.org : OK
www.torproject.org : OK
bbc.com : OK
checking resolved IP uniqueness for : pornhub.com ntc.party rutracker.org www.torproject.org bbc.com
censor's DNS can return equal result for multiple blocked domains.
all resolved IPs are unique
-- DNS looks good
-- NOTE this check is Russia targeted. In your country other domains may be blocked.
* checking virtualization
cannot detect

NOTE ! this test should be run with zapret or any other bypass software disabled, without VPN

specify domain(s) to test. multiple domains are space separated.
domain(s) (default: rutracker.org) : ip protocol version(s) - 4, 6 or 46 for both (default: 4) : 
check http (default : Y) (Y/N) ? 
check https tls 1.2 (default : Y) (Y/N) ? 
TLS 1.3 uses encrypted ServerHello. DPI cannot check domain name in server response.
This can allow more bypass strategies to work.
What works for TLS 1.2 will also work for TLS 1.3 but not vice versa.
Most sites nowadays support TLS 1.3 but not all. If you can't find a strategy for TLS 1.2 use this test.
TLS 1.3 only strategy is better than nothing.
check https tls 1.3 (default : N) (Y/N) ? 
make sure target domain(s) support QUIC or result will be negative in any case
check http3 QUIC (default : Y) (Y/N) ? 
sometimes ISPs use multiple DPIs or load balancing. bypass strategies may work unstable.
how many times to repeat each test (default: 1) : 
quick - scan as fast as possible to reveal any working strategy
standard - do investigation what works on your DPI
force - scan maximum despite of result
1 : quick
2 : standard
3 : force
your choice (default : standard) : selected : standard


* port block tests ipv4 youtube.com:80
nc -z -w 2 74.125.131.136 80
Connection to 74.125.131.136 80 port [tcp/http] succeeded!
74.125.131.136 connects
nc -z -w 2 74.125.131.91 80
Connection to 74.125.131.91 80 port [tcp/http] succeeded!
74.125.131.91 connects
nc -z -w 2 74.125.131.93 80
Connection to 74.125.131.93 80 port [tcp/http] succeeded!
74.125.131.93 connects
nc -z -w 2 74.125.131.190 80
Connection to 74.125.131.190 80 port [tcp/http] succeeded!
74.125.131.190 connects

* curl_test_http ipv4 youtube.com
- checking without DPI bypass
!!!!! AVAILABLE !!!!!

* port block tests ipv4 youtube.com:443
nc -z -w 2 74.125.131.136 443
Connection to 74.125.131.136 443 port [tcp/https] succeeded!
74.125.131.136 connects
nc -z -w 2 74.125.131.91 443
Connection to 74.125.131.91 443 port [tcp/https] succeeded!
74.125.131.91 connects
nc -z -w 2 74.125.131.93 443
Connection to 74.125.131.93 443 port [tcp/https] succeeded!
74.125.131.93 connects
nc -z -w 2 74.125.131.190 443
Connection to 74.125.131.190 443 port [tcp/https] succeeded!
74.125.131.190 connects

* curl_test_https_tls12 ipv4 youtube.com
- checking without DPI bypass
curl: (28) Connection timed out after 2017 milliseconds
UNAVAILABLE code=28

- IP block tests (requires manual interpretation)
> testing iana.org on it's original ip
!!!!! AVAILABLE !!!!!
> testing youtube.com on 192.0.43.8 (iana.org)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'youtube.com'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.
> testing iana.org on 74.125.131.136 (youtube.com)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'iana.org'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.
> testing iana.org on 74.125.131.91 (youtube.com)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'iana.org'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.
> testing iana.org on 74.125.131.93 (youtube.com)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'iana.org'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.
> testing iana.org on 74.125.131.190 (youtube.com)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'iana.org'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.

preparing winws redirection
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=2
curl: (28) Connection timed out after 2011 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2011 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=sniext+1
curl: (28) Connection timed out after 2010 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=sniext+4
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=host+1
curl: (28) Connection timed out after 2012 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2010 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=1,midsld
curl: (28) Connection timed out after 2011 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=1,sniext+1,host+1,midsld-2,midsld,midsld+2,endhost-1
curl: (28) Connection timed out after 2012 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=2
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=sniext+1
curl: (28) Connection timed out after 2010 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=sniext+4
curl: (28) Connection timed out after 2015 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=host+1
curl: (28) Connection timed out after 2004 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2017 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=1,midsld
curl: (28) Connection timed out after 2015 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=1,sniext+1,host+1,midsld-2,midsld,midsld+2,endhost-1
curl: (28) Connection timed out after 2004 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1
curl: (28) Connection timed out after 2004 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
curl: (28) Connection timed out after 2017 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=2
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=2 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2009 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=2 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
curl: (28) Connection timed out after 2012 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=3
curl: (28) Connection timed out after 2011 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=3 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2011 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=3 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badsum
curl: (28) Connection timed out after 2015 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2017 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
curl: (28) Connection timed out after 2005 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badseq
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=datanoack
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
curl: (28) Connection timed out after 2015 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
WARNING ! although md5sig fooling worked it will not work on all sites. it typically works only on linux servers.
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2011 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=2 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=2 --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=3 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2010 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=3 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2004 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2009 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2010 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2005 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
WARNING ! although md5sig fooling worked it will not work on all sites. it typically works only on linux servers.
WARNING ! fakedsplit/fakeddisorder with md5sig fooling and low split position causes MTU overflow with multi-segment TLS (kyber)
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2012 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=2 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2007 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=2 --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=3 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2006 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=3 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2017 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2005 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2007 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2015 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2017 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
WARNING ! although md5sig fooling worked it will not work on all sites. it typically works only on linux servers.
WARNING ! fakedsplit/fakeddisorder with md5sig fooling and low split position causes MTU overflow with multi-segment TLS (kyber)
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10 --dpi-desync-split-seqovl=1
curl: (28) Connection timed out after 2017 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+1 --dpi-desync-split-seqovl=1
curl: (28) Connection timed out after 2006 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+4 --dpi-desync-split-seqovl=1
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10,midsld --dpi-desync-split-seqovl=1
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=2 --dpi-desync-split-seqovl=336 --dpi-desync-split-seqovl-pattern=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=2 --dpi-desync-split-seqovl=1
curl: (28) Connection timed out after 2010 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=sniext+1 --dpi-desync-split-seqovl=sniext
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=sniext+4 --dpi-desync-split-seqovl=sniext+3
curl: (28) Connection timed out after 2017 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=midsld --dpi-desync-split-seqovl=midsld-1
curl: (28) Connection timed out after 2007 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=2,midsld --dpi-desync-split-seqovl=1
curl: (28) Connection timed out after 2004 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1
curl: (28) Connection timed out after 2006 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2
curl: (28) Connection timed out after 2016 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2006 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3
curl: (28) Connection timed out after 2008 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4
curl: (28) Connection timed out after 2008 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2005 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
WARNING ! although autottl worked it requires testing on multiple domains to find out reliable delta
WARNING ! if a reliable delta cannot be found it's a good idea not to use autottl
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2016 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2012 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2015 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2012 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
WARNING ! although autottl worked it requires testing on multiple domains to find out reliable delta
WARNING ! if a reliable delta cannot be found it's a good idea not to use autottl
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2006 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2017 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2011 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2007 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld
!!!!! AVAILABLE !!!!!
WARNING ! although autottl worked it requires testing on multiple domains to find out reliable delta
WARNING ! if a reliable delta cannot be found it's a good idea not to use autottl
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata
curl: (28) Connection timed out after 2005 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multisplit --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2010 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multisplit --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multisplit --dpi-desync-split-pos=1,midsld
curl: (28) Connection timed out after 2004 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multisplit --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multidisorder --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2012 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multidisorder --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multidisorder --dpi-desync-split-pos=1,midsld
curl: (28) Connection timed out after 2006 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls12 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multidisorder --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!

!!!!! curl_test_https_tls12: working strategy found for ipv4 youtube.com : winws --dpi-desync=fake --dpi-desync-ttl=3 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid !!!!!

clearing winws redirection

* curl_test_https_tls13 ipv4 youtube.com
- checking without DPI bypass
curl: (28) Connection timed out after 2009 milliseconds
UNAVAILABLE code=28

- IP block tests (requires manual interpretation)
> testing iana.org on it's original ip
!!!!! AVAILABLE !!!!!
> testing youtube.com on 192.0.43.8 (iana.org)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'youtube.com'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.
> testing iana.org on 74.125.131.93 (youtube.com)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'iana.org'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.
> testing iana.org on 74.125.131.136 (youtube.com)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'iana.org'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.
> testing iana.org on 74.125.131.91 (youtube.com)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'iana.org'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.
> testing iana.org on 74.125.131.190 (youtube.com)
curl: (60) SSL: no alternative certificate subject name matches target hostname 'iana.org'
More details here: https://curl.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the webpage mentioned above.

preparing winws redirection
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=2
curl: (28) Connection timed out after 2006 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=sniext+1
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=sniext+4
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=host+1
curl: (28) Connection timed out after 2009 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2016 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=1,midsld
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=1,sniext+1,host+1,midsld-2,midsld,midsld+2,endhost-1
curl: (28) Connection timed out after 2016 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=2
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
curl: (28) Connection timed out after 2007 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=2
curl: (28) Connection timed out after 2015 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=2 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=2 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=3
curl: (28) Connection timed out after 2004 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=3 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2016 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=3 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badsum
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2005 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
curl: (28) Connection timed out after 2008 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badseq
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=datanoack
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
curl: (28) Connection timed out after 2016 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
WARNING ! although md5sig fooling worked it will not work on all sites. it typically works only on linux servers.
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2008 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2001 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=2 --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2010 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=2 --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=3 --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1
curl: (28) Connection timed out after 2016 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld
curl: (28) Connection timed out after 2003 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
WARNING ! although md5sig fooling worked it will not work on all sites. it typically works only on linux servers.
WARNING ! fakedsplit/fakeddisorder with md5sig fooling and low split position causes MTU overflow with multi-segment TLS (kyber)
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10 --dpi-desync-split-seqovl=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+1 --dpi-desync-split-seqovl=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+4 --dpi-desync-split-seqovl=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10,midsld --dpi-desync-split-seqovl=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=2 --dpi-desync-split-seqovl=336 --dpi-desync-split-seqovl-pattern=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1
curl: (28) Connection timed out after 2007 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2
curl: (28) Connection timed out after 2008 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2015 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4
curl: (28) Connection timed out after 2012 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2008 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5
curl: (28) Connection timed out after 2011 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-fake-tls=0x00000000
curl: (28) Connection timed out after 2007 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
!!!!! AVAILABLE !!!!!
WARNING ! although autottl worked it requires testing on multiple domains to find out reliable delta
WARNING ! if a reliable delta cannot be found it's a good idea not to use autottl
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
WARNING ! although autottl worked it requires testing on multiple domains to find out reliable delta
WARNING ! if a reliable delta cannot be found it's a good idea not to use autottl
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multisplit --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!
- curl_test_https_tls13 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multisplit --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin --dpi-desync-split-pos=1
!!!!! AVAILABLE !!!!!

!!!!! curl_test_https_tls13: working strategy found for ipv4 youtube.com : winws --dpi-desync=multidisorder --dpi-desync-split-pos=2 !!!!!

clearing winws redirection

* curl_test_http3 ipv4 youtube.com
- checking without DPI bypass
curl: (28) Connection timed out after 2016 milliseconds
UNAVAILABLE code=28

preparing winws redirection
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=fake
curl: (28) Connection timed out after 2005 milliseconds
UNAVAILABLE code=28
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=fake --dpi-desync-repeats=2
curl: (28) Connection timed out after 2007 milliseconds
UNAVAILABLE code=28
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=fake --dpi-desync-repeats=5
!!!!! AVAILABLE !!!!!
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/quic_initial_www_google_com.bin
!!!!! AVAILABLE !!!!!
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=ipfrag2 --dpi-desync-ipfrag-pos-udp=8
curl: (28) Connection timed out after 2006 milliseconds
UNAVAILABLE code=28
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=ipfrag2 --dpi-desync-ipfrag-pos-udp=16
curl: (28) Connection timed out after 2005 milliseconds
UNAVAILABLE code=28
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=ipfrag2 --dpi-desync-ipfrag-pos-udp=24
curl: (28) Connection timed out after 2013 milliseconds
UNAVAILABLE code=28
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=ipfrag2 --dpi-desync-ipfrag-pos-udp=32
curl: (28) Connection timed out after 2002 milliseconds
UNAVAILABLE code=28
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=ipfrag2 --dpi-desync-ipfrag-pos-udp=40
curl: (28) Connection timed out after 2015 milliseconds
UNAVAILABLE code=28
- curl_test_http3 ipv4 youtube.com : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=ipfrag2 --dpi-desync-ipfrag-pos-udp=64
curl: (28) Connection timed out after 2014 milliseconds
UNAVAILABLE code=28

!!!!! curl_test_http3: working strategy found for ipv4 youtube.com : winws --dpi-desync=fake --dpi-desync-repeats=5 !!!!!

clearing winws redirection

* SUMMARY
ipv4 youtube.com curl_test_http : working without bypass
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=3 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badseq
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=3 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=3 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=2 --dpi-desync-split-seqovl=336 --dpi-desync-split-seqovl-pattern=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multisplit --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls12 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multidisorder --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multidisorder --dpi-desync-split-pos=2
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=3 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badseq
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=3 --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10 --dpi-desync-split-seqovl=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+1 --dpi-desync-split-seqovl=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+4 --dpi-desync-split-seqovl=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=10,midsld --dpi-desync-split-seqovl=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=2 --dpi-desync-split-seqovl=336 --dpi-desync-split-seqovl-pattern=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multisplit --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_https_tls13 : winws --wf-l3=ipv4 --wf-tcp=443 --dpi-desync=syndata,multisplit --dpi-desync-fake-syndata=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/tls_clienthello_iana_org.bin --dpi-desync-split-pos=1
ipv4 youtube.com curl_test_http3 : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=fake --dpi-desync-repeats=5
ipv4 youtube.com curl_test_http3 : winws --wf-l3=ipv4 --wf-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=/cygdrive/c/Users/admin/Desktop/zapret-win-bundle-master/blockcheck/zapret/files/fake/quic_initial_www_google_com.bin

Please note this SUMMARY does not guarantee a magic pill for you to copy/paste and be happy.
Understanding how strategies work is very desirable.
This knowledge allows to understand better which strategies to prefer and which to avoid if possible, how to combine strategies.
Blockcheck does it's best to prioritize good strategies but it's not bullet-proof.
It was designed not as magic pill maker but as a DPI bypass test tool.

press enter to continue
