#!/bin/bash

go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
git clone https://github.com/blechschmidt/massdns.git
cd massdns; make
sudo make install; cd ~/
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/trickest/wordlists.git
git clone https://github.com/n0kovo/n0kovo_subdomains.git
git clone https://github.com/Karanxa/Bug-Bounty-Wordlists.git
easy_install shodan
go install github.com/BishopFox/jsluice/cmd/jsluice@latest
go install github.com/d3mondev/puredns/v2@latest
go install github.com/ffuf/ffuf/v2@latest
git clone https://github.com/trickest/resolvers.git
mkdir ~/sni-ranges; cd ~/sni-ranges
wget https://raw.githubusercontent.com/flamebarke/dump/refs/heads/main/get-cdn-ranges.sh
wget https://raw.githubusercontent.com/flamebarke/dump/refs/heads/main/get-ranges.sh
wget https://raw.githubusercontent.com/flamebarke/dump/refs/heads/main/clean.sh
go install -v github.com/owasp-amass/amass/v4/...@master
cd ~/; git clone https://github.com/gitleaks/gitleaks.git
cd gitleaks
make build
cd ~/
