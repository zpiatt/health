# Health
<p align="left">
<a href="./LICENSE.md"><img src="https://img.shields.io/github/license/zpiatt/health"></a>
<a href="https://github.com/zpiatt/health/releases"><img src="https://img.shields.io/github/v/release/zpiatt/health">
</p>

Health is a command-line system status check tool written in `bash 3.2+`. Designed for Red Hat Enterprise Linux (RHEL) environments, Health provides an easy way to display general system statistics, scrutinize file systems for common errors, and check for a variety of other typical system issues.

### Status Update:
  - I will be away for work for all of July. I expect to work out any small bugs with the changes below in that time, and push a release upon my return.
  - __Focus on RedHat Enterprise Linux__: The script is now focused on RHEL version 7+. I work in a RedHat environment, and maintaining a script for all OS versions became too cumbersome.
  - Please fork this project to adapt it to other operating systems. I'm willing to assist with specific customization questions, but the script will focus on RHEL 7+ henceforth.
  - __NOTE__: RHEL 6 ELS (Extended Life-cycle Support) ended 30JUNE2024. Most of `health` *should* continue to work, however, I will not make updates specifically maintain support for RHEL 6.

### Recently added:
  - Significant changes have been made to how the script parses information from the system.
      - I've reduced system calls by reading files directly where applicable. In practice, this should yield modest performance gains.
  - Added parsing of memory/swap usage percentage. The output will resemble `free -h` however it will feature and additional "used%" field.
      - The field is also colored red when either memory/swap usage is greater than 90%.
  - Added parsing of NTP server information.
      - Provided the target host/server is using `chronyd`, the NTP server status is also displayed.

If you're using RHEL 7 or later and encounter issues or have suggestions for routine error checks, please feel free to reach out!

### Suggested Usage:
  - To run this check once daily during the first login, you can add the following line to your `.bashrc`:
    ```bash
    [[ $(last "$USER" | awk 'NR==2{print$6}') != $(date +%-d) ]] && health
    ```

### More: \[[Installation](https://github.com/zpiatt/health/wiki/Installation)\] \[[Wiki](https://github.com/zpiatt/health/wiki)\]
