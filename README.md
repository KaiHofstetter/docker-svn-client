# docker-svn-client
Subversion Docker image with an old svn 1.7 client, which is officially not available for Ubuntu 15.04.

## How to use it
* Run svn client
   
   ```
   sudo docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" kaihofstetter/svn svn
   ```

* Add bash alias to .bashrc or .bash_aliases
   
   ```
   alias svn='sudo docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" kaihofstetter/svn svn'
   alias sudo='sudo '
   ```
   
   This allows you to run svn in the docker image, with a simple 'svn ...'.
   
   The sudo alias is needed to route 'sudo svn...' to the docker image.
   
* Checkout files as host user
   
   Since to the docker client runs as root, checked out files are owned by root. 

   There is a simple workaround: If you are logged in as the first added user/group after root on the host system, you can use the option '-u 1000:1000' to checkout files as the currently logged in user/group.
   ```
   alias svn='sudo docker run -it --rm -u 1000:1000 -v "$PWD":"$PWD" -w "$PWD" kaihofstetter/svn svn'
   ´´´
   
For more information about subversion, see https://subversion.apache.org.


  
