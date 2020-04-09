#update apps and install python3
sudo apt-get update
sudo apt install python3 python3-pip
#install angular cli
##installing node js
sudo add-apt-repository -y -r ppa:chris-lea/node.js
sudo rm -f /etc/apt/sources.list.d/chris-lea-node_js-*.list
sudo rm -f /etc/apt/sources.list.d/chris-lea-node_js-*.list.save
sudo curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
VERSION=node_8.x
DISTRO="$(lsb_release -s -c)"
echo "deb https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee /etc/apt/sources.list.d/nodesource.list
echo "deb-src https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list
sudo apt-get update
sudo apt-get install nodejs
#installing yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
sudo apt update && sudo apt install --no-install-recommends yarn
#running yarn in root directory of angular-cli
yarn
#updating angular-cli version
npm uninstall -g angular-cli @angular/cli
npm cache clean
npm install -g @angular/cli@latest
#clone directory
cd /home/sheriarahmed/bin/spring-petclinic-angular/
npm install --save-dev @angular/cli@latest
rm -rf package-lock.json
npm install
#run dev server
ng serve --host 0.0.0.0
