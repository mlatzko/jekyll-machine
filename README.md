jekyll-machine (Oracle VM + Vagrant)
==================================================================

Software required to be installed before
------------------------------------------------------------------
**Windows:**
* Oracle VM - https://www.virtualbox.org/wiki/Downloads
* Vagrant - http://downloads.vagrantup.com/
* Putty - http://www.putty.org
* GitHub - https://windows.github.com/

**Tested with:** Oracle VM 5.0.14, Vagrant 1.8.1

Cookbooks
------------------------------------------------------------------
* [jekyll](https://github.com/mlatzko/jekyll-machine/tree/master/cookbooks/jekyll)

Starting Jekyll
------------------------------------------------------------------
The basic usage is described here [jekyllrb.com](http://jekyllrb.com/docs/usage/).
This section here is just a short instruction.

**Command:**
```
sudo jekyll serve --source <source> --destination <destination> --config <config> --host 0.0.0.0 --port <port> --watch --force_polling
```
Stoping Jekyll
------------------------------------------------------------------
It might occur that stoping the previous command via CTRL+C does not work properly,
in this case just open another console and use the following command.
```
sudo kill -9 $(ps opid= -C jekyll)
```

Links
------------------------------------------------------------------
* https://www.virtualbox.org/
* http://www.vagrantbox.es/
* http://www.putty.org/
* http://jekyllrb.com/
* http://jekyllrb.com/docs/usage/
* https://github.com/Shopify/liquid/wiki/Liquid-for-Designers (Template Language)

Copyright
------------------------------------------------------------------
This project is contributed under the Apache License see the 
[LICENSE](https://github.com/mlatzko/jekyll-machine/blob/master/LICENSE) file
for further information.
