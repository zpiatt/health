# Health
<p align="left">
<a href="./LICENSE.md"><img src="https://img.shields.io/github/license/zpiatt/health"></a>
</p>

Health is a command-line system status check tool written in `bash 3.2+`. Designed for Red Hat Enterprise Linux (RHEL) environments, Health provides an easy way to display general system statistics, scrutinize file systems for common errors, and check for a variety of other typical system issues.

### Status Update:
  - __Focus on RedHat Enterprise Linux__: The script is now focused on RHEL version 7+. I work in a RedHat environment, and maintaining a script for all OS versions became too cumbersome.
  - Please fork this project to adapt it to other operating systems. I'm willing to assist with specific customization questions, but the script will focus on RHEL 7+ henceforth.
  - __NOTE__: RHEL 6 ELS (Extended Life-cycle Support) ends 30JUNE2024. Most of `health` *should* continue to work, however, I will not make updates specifically maintain support for RHEL 6.

### Recently added:
  - Show all users with open files ( `-o` option ):
      - This option leverages `lsof` to determine all unique users with files open on the target server.
      - __NOTE__: This will likely require sudo/root privileges. 
  - Show `passwd` information for specified user ( `-w` option ).
  - Added `whotf` function to clarify output of `who` in cases where usernames are not human-readable

If you're using RHEL 7 or later and encounter issues or have suggestions for routine error checks, please feel free to reach out!

### Suggested Usage:
  - To run this check once daily during the first login, you can add the following line to your `.bashrc`:
    ```bash
    [[ $(last "$USER" | awk 'NR==2{print$6}) != $(date +%-d) ]] && health
    ```

### More: \[[Installation](https://github.com/zpiatt/health/wiki/Installation)\] \[[Wiki](https://github.com/zpiatt/health/wiki)\]
