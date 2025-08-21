# Health
<p align="left">
<a href="./LICENSE.md"><img src="https://img.shields.io/github/license/zpiatt/health"></a>
<a href="https://github.com/zpiatt/health/releases"><img src="https://img.shields.io/github/v/release/zpiatt/health">
</p>

Health is a command-line system status check tool written in `bash 4.2+`. Designed for Red Hat Enterprise Linux (RHEL) environments, Health provides an easy way to display general system statistics, scrutinize file systems for common errors, and check for a variety of other typical system issues.

### Recently added:
  - Refactored `get_network_info` parsing of network export information.
    - `findmnt` is now used instead of `showmount` to expand support for various network file system types.
      - Validated `check_mounts` function already correctly scrutinizes various network file system types.
  - Updated `RED HAT LIFE CYCLE SUPPORT STATUS` in `man` page to include RHEL10 life cycle information.
  - Dropped explicit support for `bash 3.2`.
    - With RHEL6 EOL, I will no longer make specific consideration of older versions of `bash`.
    - RHEL7+ *should* have shipped with at least `bash 4.2.46`. If you're managing a server where that's no true, please let me know!

If you're using RHEL 7 or later and encounter issues or have suggestions for routine error checks, please feel free to reach out!

### Suggested Usage:
  - To run this check once daily during the first login, you can add the following line to your `.bashrc`:
    ```bash
    [[ $(last "$USER" | awk 'NR==2{print$6}') != $(date +%-d) ]] && health
    ```
  - NOTE: You must also have a version of this to prevent certain errors when using `ssh`, `rsync`, etc. (place at top of `.bashrc`):
    ```bash
    [[ "$-" == *i* ]] || return 0
    ```

### More: \[[Installation](https://github.com/zpiatt/health/wiki/Installation)\] \[[Wiki](https://github.com/zpiatt/health/wiki)\]
