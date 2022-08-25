echo "Chown homebrew directory for current user"
sudo chown -R "$(whoami)" /opt/homebrew

echo "Uninstall Laravel Valet"
composer global remove laravel/valet

echo "Uninstall dnsmasq"
brew uninstall dnsmasq

echo "Remove Laravel Valet config at default location"
sudo rm -r ~/.config/valet

echo "Remove Laravel Valet composer binary"
rm -r "$(which valet)"

echo "Install Laravel Valet"
composer global require laravel/valet
valet install
