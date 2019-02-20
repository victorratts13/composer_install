echo -e "\033[01;32m Instalador composer by Victor Ratts v1.0 \033[01;37m"
apt update
apt install curl php-cli php-mbstring git unzip
cd
curl -sS https://getcomposer.org/installer -o composer-setup.php
HASH=48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5
echo -e "\033[01;32m Verificando a instalação \033[01;37m"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer