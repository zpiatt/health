# Health
<p align="left">A command line system status check tool written in bash 3.2+</p>

<p align="left">
<a href="./LICENSE.md"><img src="https://img.shields.io/github/license/zpiatt/health"></a>
</p>

Health is a command line system status check tool written in `bash 3.2+`. Health can be used to display general system statistics, scrutinize file systems for common errors, or be used to check for a variety of other common system errors.

Upcoming features:
  - I originally wrote this while working in a Red Hat environment. My goal is to make this compatible with common enterprise Linux environments, however I will not be focusing on broader portability.

Recently added:
  - Added man page to install.
    - Originally generated man page using help2man. I've added a lot of detail, but am working on making this more robust.
  - Added `-u` option to report largest directories by inode usage.
    - As with other options of `health`, this will allow users to specify a target directory ( `health -u /var/log` ) or default to current working directory.

If you're working with a common enterprise Linux, and something isn't working for you, or you have an idea for checking for a routine error, please let me know!

### More: \[[Wiki](https://github.com/zpiatt/health/wiki)\]
