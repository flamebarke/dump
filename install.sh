#!/usr/bin/zsh

# install go tools
go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
go install github.com/BishopFox/jsluice/cmd/jsluice@latest
go install github.com/d3mondev/puredns/v2@latest
go install github.com/ffuf/ffuf/v2@latest
go install -v github.com/owasp-amass/amass/v4/...@master

# source installs 
git clone https://github.com/blechschmidt/massdns.git
cd massdns; make
sudo make install; cd ~/

cd ~/bin; git clone https://github.com/gitleaks/gitleaks.git
cd gitleaks
make build

# python installs
pip install -U --user shodan

# wordlists
mkdir -p ~/bin/wordlists
cd ~/bin/wordlists
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/trickest/wordlists.git
git clone https://github.com/n0kovo/n0kovo_subdomains.git
git clone https://github.com/Karanxa/Bug-Bounty-Wordlists.git
git clone https://github.com/trickest/resolvers.git

# download sni-range scripts
mkdir -p ~/bin/sni-ranges; cd ~/bin/sni-ranges
wget -q https://raw.githubusercontent.com/flamebarke/dump/refs/heads/main/get-cdn-ranges.sh
wget -q https://raw.githubusercontent.com/flamebarke/dump/refs/heads/main/get-ranges.sh
wget -q https://raw.githubusercontent.com/flamebarke/dump/refs/heads/main/clean.sh

cd ~/ && rm ~/bin/install.sh
