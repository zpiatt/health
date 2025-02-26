# Health
<p align="left">
<a href="./LICENSE.md"><img src="https://img.shields.io/github/license/zpiatt/health"></a>
<a href="https://github.com/zpiatt/health/releases"><img src="https://img.shields.io/github/v/release/zpiatt/health">
</p>

Health is a command-line system status check tool written in `bash 3.2+`. Designed for Red Hat Enterprise Linux (RHEL) environments, Health provides an easy way to display general system statistics, scrutinize file systems for common errors, and check for a variety of other typical system issues.

### Recently added:
  - Added `-p` to display Public IP Information.
    - This option attempts to `curl` and parse the output from `ipinfo.io` and requires internet connectivity.
  - Refactored `get_network_info` parsing of DNS information.
    - In practice, there's too much variation in where **correct** DNS server information is found in files (`/etc/resolv.conf`, `/etc/systemd/resolved.conf`, `/etc/NetworkManager/system-connections/`, etc.). The update leverages `nmcli` which *should* be available in RHEL 7 and later.
  - Added RHEL life cycle support information to `man` page.

If you're using RHEL 7 or later and encounter issues or have suggestions for routine error checks, please feel free to reach out!

### Suggested Usage:
  - To run this check once daily during the first login, you can add the following line to your `.bashrc`:
    ```bash
    [[ $(last "$USER" | awk 'NR==2{print$6}') != $(date +%-d) ]] && health
    ```

### More: \[[Installation](https://github.com/zpiatt/health/wiki/Installation)\] \[[Wiki](https://github.com/zpiatt/health/wiki)\]
