V2Ray executor in Linux and Macos operating systems
========================================================
**Run in Terminal**


Library Reference
-----------------

The `library reference <https://github.com/shadowsocks/shadowsocks-rust>`__ documents every publicly accessible object in the library.


Installing
----------

The easiest way to install this is using ``brew install shadowsocks-rust``.


Requirements
------------

To use all of the functionality of the library, you should have:

* **Linux Or Macos**
* **Shadowsocks Rust**

Usage
-------------
After Installing shadowsocks-rust and Edit config.conf file,

run ``sudo sh run.sh`` in Terminal


Configuration
----------


.. code:: config

    {
    "server":"server address",
    "server_port":30074,
    "local_address": "0.0.0.0",
    "local_port":1080,
    "password": "password or Id",
    "timeout":300,
    "method":"aes-128-gcm", # example method
    "workers":4,
    "fast_open":true,
    "route":"all",
    "plugin":"./bin/v2ray-plugin", # you can update plugin or change to another type of protocol
    "plugin_opts": "/gbgbdf", # path of server | this is example

    "locals": [ # you can change type or address or port or mode of running protocol
            {
                "protocol": "socks",
                "local_address": "127.0.0.1",
                "local_port": 17687,
                "mode": "tcp_only",
                
            },
            {
                "protocol": "http",
                "local_address": "127.0.0.1",
                "local_port": 8080
            },
        ]

    }
   
::






Authors
-------

Author `Mohammad Hasan Anisi <mailto:mohammadhasananisiqom@gmail.com>`

Please report bugs and suggestions at the `Telegram <https://t.me/mohammadhasananisi>`__ !

