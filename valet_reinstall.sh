# Chown homebrew directory for current user.
sudo chown -R $(whoami) /opt/homebrew

# Uninstall Laravel Valet
composer global remove laravel/valet
brew uninstall dnsmasq
sudo rm -r ~/.config/valet
rm -r $(which valet)

# Install Laravel Valet
composer global require laravel/valet
valet install
