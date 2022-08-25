# Laravel Valet Reinstall Script

Reinstall [Laravel Valet](https://laravel.com/docs/9.x/valet) with one single script. This is especially usefull if you for example stream from time to time and want to use Valet with multiple users on your Mac (one for private projects, one for streaming projects).

To use Valet with the current user just run this script and you're done. You may either download the file `valet_reinstall.sh` and run it or just copy the contents of the script and run those step by step.

### Important note

You need to have homebrew installed for this script to work.

### The script

```bash
# Chown homebrew directory for current user
sudo chown -R $(whoami) /opt/homebrew

# Uninstall Laravel Valet
composer global remove laravel/valet
brew uninstall dnsmasq
sudo rm -r ~/.config/valet
rm -r $(which valet)

# Install Laravel Valet
composer global require laravel/valet
valet install
```

### Next steps

After successfully installing Laravel Valet, you can follow the [official Documentation](https://laravel.com/docs/9.x/valet) for more information.
