# Updating

1. Begin by testing the new version as described [here](https://www.freebsd.org/doc/en/books/porters-handbook/porting-testing.html)

    ```bash
    # As root
    make stage
    make check-orphans
    make package
    make install
    make deinstall
    ```
2. Check that `make package` works as a regular user.
3. Retrieve the current `/usr/ports/` directory via svn. Here's the new install process

    ```bash
    pkg install svn
    svn checkout https://svn.FreeBSD.org/ports/head /usr/ports
    ```
    Updating is slightly simpler

    ```bash
    svn update /usr/ports
    ```
4. Get the updated files into the actual `/usr/ports/security/openvpn-auth-script` subdirectory and add them.

    ```bash
    cd /usr/ports/security/openvpn-auth-script
    svn add .
    cd /usr/ports
    svn diff security/openvpn-auth-script > ~/openvpn-auth-script.diff
    ```

