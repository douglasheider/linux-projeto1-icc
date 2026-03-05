!#/bin/bah
echo "Atualização do Sistema Operacional!"
apt  update

echo "Instalação do Serviço Web!"
apt install apache2 -y

echo "Instalação do aplicativo unzip!"
apt install unzip

echo "Baixando o Site do Github!"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/main.zip

echo "Extraindo!"
unzip /tmp/main.zip -d /tmp/

echo "Copiando para a pasta Web!"
cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Processo finalizado!"
