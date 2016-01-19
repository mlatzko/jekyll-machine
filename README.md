jekyll-machine (virtual box + vagrant)
==================================================================

Software required to be installed before:
------------------------------------------------------------------
**Windows:**
* VirtualBox - https://www.virtualbox.org/wiki/Downloads
* Vagrant - http://downloads.vagrantup.com/
* Putty - http://www.putty.org
* GitHub - https://windows.github.com/

**Tested with:** VirtualBox 5.0.10, Vagrant 1.7.4

Cookbooks:
------------------------------------------------------------------
* jekyll

Starting a jekyll server:
------------------------------------------------------------------
The basic usage is described here [jekyllrb.com](http://jekyllrb.com/docs/usage/).
This section here is just a short instruction.

**Command:**
```
sudo jekyll serve --source <source> --destination <destination> --config <config> --host 0.0.0.0 --port <port> --watch --force_polling

```
Kill any jekyll's without thinking:
------------------------------------------------------------------
```
sudo kill -9 $(ps opid= -C jekyll)
```

Useful Links:
------------------------------------------------------------------
* https://www.virtualbox.org/
* http://www.vagrantbox.es/
* http://www.putty.org/
* http://jekyllrb.com/
* http://jekyllrb.com/docs/usage/
* https://github.com/Shopify/liquid/wiki/Liquid-for-Designers (Template Language)

Copyright and license:
------------------------------------------------------------------
https://github.com/mlatzko/jekyll-machine/blob/master/LICENSE
