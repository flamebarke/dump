#!/usr/bin/zsh

source ~/.zshrc

# install go tools
/usr/local/go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
/usr/local/go install github.com/BishopFox/jsluice/cmd/jsluice@latest
/usr/local/go install github.com/d3mondev/puredns/v2@latest
/usr/local/go install github.com/ffuf/ffuf/v2@latest
/usr/local/go install -v github.com/owasp-amass/amass/v4/...@master
/usr/local/go install github.com/tomnomnom/gf@latest

echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.zshrc

# source installs 
git clone https://github.com/blechschmidt/massdns.git
cd massdns; make
sudo make install; cd ~/

cd ~/bin; git clone https://github.com/gitleaks/gitleaks.git
cd gitleaks
make build; cd ~/bin

git clone https://github.com/coffinxp/loxs.git
git clone https://github.com/coffinxp/LostXtools.git
git clone https://github.com/coffinxp/customBsqli.git

git clone https://github.com/coffinxp/gFpattren.git
mkdir -p ~/.gf
cp ~/bin/gFpattren/* ~/.gf/

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
git clone https://github.com/coffinxp/payloads.git
git clone https://github.com/coffinxp/nuclei-templates.git
git clone https://github.com/coffinxp/oneListForall.git

mkdir -p ~/bin/payloads
cd ~/bin/payloads
git clone https://github.com/coffinxp/pdFExploits.git
git clone https://github.com/coffinxp/img-payloads.git
git clone https://github.com/coffinxp/corsExploit.git

# download sni-range scripts
mkdir -p ~/bin/sni-ranges; cd ~/bin/sni-ranges
wget -q https://raw.githubusercontent.com/flamebarke/dump/refs/heads/main/get-cdn-ranges.sh
wget -q https://raw.githubusercontent.com/flamebarke/dump/refs/heads/main/get-ranges.sh
wget -q https://raw.githubusercontent.com/flamebarke/dump/refs/heads/main/clean.sh

# add ssh pub key
echo "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIDEt8bAWlWk1gZuZc0u+1DdXFgf31gTxqy+LOyeoAJCBAAAADHNzaDp0aGlua3BhZA== ssh:thinkpad" >> /home/op/.ssh/authorized_keys

cd ~/ && rm ~/bin/install.sh
