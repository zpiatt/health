# Health
<p align="left">
<a href="./LICENSE.md"><img src="https://img.shields.io/github/license/zpiatt/health"></a>
</p>

Health is a command-line system status check tool written in `bash 3.2+`. Designed for Red Hat Enterprise Linux (RHEL) environments, Health provides an easy way to display general system statistics, scrutinize file systems for common errors, and check for a variety of other typical system issues.

#### Status Update:
  - Focus on RedHat Enterprise Linux: The script is now primarily focused on RHEL (version 6 or later). While I continue to work in a RedHat environment, maintaining a generic script for all OS versions has become too cumbersome. Feel free to fork this project for adaptations to other operating systems. I'm available to offer assistance for specific customization needs, but the script will primarily cater to RHEL6+ henceforth.

#### Recently added:
  - Kernel Status Check (`-k` option):
      - Compares the current running kernel with the latest installed version, highlighting if a reboot is needed to switch to a newer kernel.
      - Utilizes yum list updates kernel to verify if a newer kernel version is available for installation.
      - Detects and alerts on potential subscription issues by parsing errors from the yum command output.
      - __Note__: Initially included in the default function, this feature was separated due to potential network-related slowdowns.

If you're using RHEL 6 or later and encounter issues or have suggestions for routine error checks, please feel free to reach out!

#### Suggested Usage:
  - To run this check once daily during the first login, you can add the following line to your `.bashrc`:
    ```bash
    [[ $(last "$USER" | awk 'NR==2{print$6}) != $(date +%-d) ]] && health
    ```

### More: \[[Installation](https://github.com/zpiatt/health/wiki/Installation)\] \[[Wiki](https://github.com/zpiatt/health/wiki)\]
