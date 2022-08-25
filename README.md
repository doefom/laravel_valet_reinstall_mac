# Laravel Valet Reinstall Script (macOS)

Reinstall [Laravel Valet](https://laravel.com/docs/9.x/valet) with one single script. This is especially usefull if you for example stream from time to time and want to use Valet with multiple users on your Mac (one for private projects, one for streaming projects).

To use Valet with the current user just run this script and you're done. You may either download the file `valet_reinstall.sh` and run it or just copy the contents of the script and run those step by step.

### Important note

You need to have [homebrew](https://brew.sh/index_de) and [composer](https://getcomposer.org/) installed for this script to work.

### The script

```bash
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
```

### Next steps

After successfully installing Laravel Valet, you can follow the [official Documentation](https://laravel.com/docs/9.x/valet) for more information.
