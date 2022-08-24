# Laravel Valet Reinstall Script

Reinstall Laravel Valet with one single script. This is also suitable if you use Valet with multiple users on your Mac.

### Note

Only works if you use homebrew.

```bash
# Chown homebrew directory
sudo chown -R $(whoami) /opt/homebrew

# Uninstall valet
composer global remove laravel/valet
brew uninstall dnsmasq
sudo rm -rf ~/.config/valet
rm -rf $(which valet)

# Install valet
composer global require laravel/valet
valet install
```

After successfully installing Laravel Valet, you can follow the official Documentation (https://laravel.com/docs/9.x/valet) for more information.
