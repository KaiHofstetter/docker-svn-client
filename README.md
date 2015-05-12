# docker-svn-client
Subversion Docker image with an old svn 1.7 client, which is officially not available for Ubuntu 15.04.

## How to use it
* Run svn client
   
   ```
   sudo docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" kaihofstetter/svn svn
   ```

* Add alias to .bashrc or .bash_aliases
   
   ```
   alias svn='sudo docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" kaihofstetter/svn svn'
   alias sudo='sudo '
   ```


  
