# Health
<p align="left">
<a href="./LICENSE.md"><img src="https://img.shields.io/github/license/zpiatt/health"></a>
<a href="https://github.com/zpiatt/health/releases"><img src="https://img.shields.io/github/v/release/zpiatt/health">
</p>

Health is a command-line system status check tool written in `bash 3.2+`. Designed for Red Hat Enterprise Linux (RHEL) environments, Health provides an easy way to display general system statistics, scrutinize file systems for common errors, and check for a variety of other typical system issues.

### Status Update:
  - __NOTE__: RHEL 6 ELS (Extended Life-cycle Support) ended 30JUNE2024. Most of `health` *should* continue to work, however, I will not make updates specifically maintain support for RHEL 6.

### Recently added:
  - Refactored `whotf` function. Function no longer attempts to parse "full name" field from `passwd`.
      - In practice, this field isn't always populated and resulted in inconsistent output; the `-w` option remains available to quickly display complete `passwd` entry of a given user.
      - `whotf` won't echo anything if there are no login sessions (i.e. VSCode logins only, etc.)

If you're using RHEL 7 or later and encounter issues or have suggestions for routine error checks, please feel free to reach out!

### Suggested Usage:
  - To run this check once daily during the first login, you can add the following line to your `.bashrc`:
    ```bash
    [[ $(last "$USER" | awk 'NR==2{print$6}') != $(date +%-d) ]] && health
    ```

### More: \[[Installation](https://github.com/zpiatt/health/wiki/Installation)\] \[[Wiki](https://github.com/zpiatt/health/wiki)\]
