Vagrant plugin to take screenshots of VMs
=========================================

This plugin is useful to debug your VM while booting

Instalation
-----------

    $ gem install vagrant-screenshot

Usage
-----

    $ vagrant screenshot
    $ vagrant screenshot my-vm-name

For more information use

    $ vagrant screenshot --help

There is a ``--open``(or ``-o``) option to open the generated images, but
it's only available on OS X for now.

Contributing
------------

1. Create an issue (if it doesn't exist yet)
2. Fork [this repository](https://github.com/igorsobreira/vagrant-screenshot), make your changes
3. Send a pull request