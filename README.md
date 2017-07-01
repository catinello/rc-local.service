# rc-local.service
systemd service for legacy /etc/rc.local

## Requirements: ##

- systemd
- git
- make

## Installation: ##

    $ git clone https://github.com/catinello/rc-local.service && cd rc-local.service
    $ sudo make
    install -m744 rc.local /etc
    install -m644 rc-local.service /etc/systemd/system
    systemctl daemon-reload && systemctl enable rc-local.service
    Created symlink /etc/systemd/system/multi-user.target.wants/rc-local.service -> /etc/systemd/system/rc-local.service.
    $ cd .. && sudo rm -r rc-local.service

## Configuration: ##

You can simply put your commands in /etc/rc.local just like you used to and they will be started on your next system boot-up.

## Un-Installation: ##

    $ git clone https://github.com/catinello/rc-local.service && cd rc-local.service
    $ sudo make uninstall
    systemctl disable rc-local.service
    Removed /etc/systemd/system/multi-user.target.wants/rc-local.service.
    rm -f /etc/rc.local
    rm -f /etc/systemd/system/rc-local.service
    systemctl daemon-reload
    $ cd .. && sudo rm -r rc-local.service
    
## License: ##

[&copy; Antonino Catinello][HOME] - [MIT-License][MIT]

[MIT]:https://github.com/catinello/rc-local.service/blob/master/LICENSE
[HOME]:https://antonino.catinello.eu
