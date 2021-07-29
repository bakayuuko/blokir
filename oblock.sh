#!/bin/bash

## ugly but working

# whitelist
echo "Whitelist"
echo "Downloading sources..."
sleep 2
curl -s 'https://raw.githubusercontent.com/EnergizedProtection/unblock/master/basic/formats/domains.txt' | sed -e 's/\#.*$//g' -e '/^[[:space:]]*$/d' > $HOME/project/blokir/allow.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' 'https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt' >> $HOME/project/blokir/allow.tmp
sleep 1
cat $HOME/project/blokir/privallow.list >> $HOME/project/blokir/allow.tmp
# sort
sort -u $HOME/project/blokir/allow.tmp > $HOME/project/blokir/allow.list
rm -rf $HOME/project/blokir/allow.tmp

# blacklist
echo "Blacklist"
echo "Downloading sources..."
sleep 1
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt' | tail -n +8 | sed -e 's/\#.*$//g' -e 's/127.0.0.1 //' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/src/advert/adservers.txt' | grep "^||" | sed 's/^||//' | cut -d'^' -f-1 >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/src/advert/thirdparty.txt' | grep "^||" | sed 's/^||//' | cut -d'^' -f-1 >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/realodix/AdBlockID/master/src/adservers.adbl' | grep "^||" | sed 's/^||//' | cut -d'^' -f-1 >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_adservers.txt' | grep "^||" | sed 's/^||//' | cut -d'^' -f-1 >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/easylist/easylist/master/easylist_adult/adult_adservers.txt' | grep "^||" | sed 's/^||//' | cut -d'^' -f-1 >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/EnglishFilter/sections/adservers_firstparty.txt' | grep "^||" | sed 's/^||//' | cut -d'^' -f-1 >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://blokada.org/blocklists/exodusprivacy/standard/hosts.txt' | tail -n +7 >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://justdomains.github.io/blocklists/lists/easylist-justdomains.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://justdomains.github.io/blocklists/lists/easyprivacy-justdomains.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://justdomains.github.io/blocklists/lists/adguarddns-justdomains.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://justdomains.github.io/blocklists/lists/nocoin-justdomains.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/adblock-nocoin-list/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/adguard-cname-trackers/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/adguard-simplified/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/dandelionsprout-nordic/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/digitalside-threat-intel/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/easylist/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/easylist-ind/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/easylist-kor/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/hostsvn/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/easyprivacy/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/stevenblack/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/ublock/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/ublock-abuse/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/ublock-badware/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/ublock-privacy/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/pgl.yoyo.org/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/urlhaus/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/winhelp2002.mvps.org/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt' | grep '0.0.0.0 ' | sed -e 's/0.0.0.0 //' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/bigdargon/hostsVN/master/option/domain.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/hectorm/hmirror/master/data/adaway.org/list.txt' >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/bigdargon/hostsVN/master/filters/domain-adservers-all.txt' | tail -n +7 | head -n -3 >> $HOME/project/blokir/domain.tmp
sleep 2
wget -qO- -U 'Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' 'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts' | grep '0.0.0.0 ' | tail -n +2 | sed -e 's/0.0.0.0 //' >> $HOME/project/blokir/domain.tmp
cat $HOME/project/blokir/privdeny.list >> $HOME/project/blokir/domain.tmp
# sort
sort -u $HOME/project/blokir/domain.tmp > $HOME/project/blokir/deny.list
rm -rf $HOME/project/blokir/domain.tmp
echo "Applying allowlist"
grep -Fvxf $HOME/project/blokir/allow.list $HOME/project/blokir/deny.list > domain.tmp
sort -u $HOME/project/blokir/domain.tmp | sed -e 's/\#.*$//g' -e '\~/~d' -e '/^[[:space:]]*$/d' > $HOME/project/blokir/domain.txt
rm -rf $HOME/project/blokir/domain.tmp
# remove allow.list deny.list
rm -rf $HOME/project/blokir/allow.list
rm -rf $HOME/project/blokir/deny.list
echo "Done!"
