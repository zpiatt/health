# Health
<p align="left">
<a href="./LICENSE.md"><img src="https://img.shields.io/github/license/zpiatt/health"></a>
</p>

Health is a command-line system status check tool written in `bash 3.2+`. Designed for Red Hat Enterprise Linux (RHEL) environments, Health provides an easy way to display general system statistics, scrutinize file systems for common errors, and check for a variety of other typical system issues.

#### Status Update:
  - Focus on RedHat Enterprise Linux: The script is now focused on RHEL version 7+. I work in a RedHat environment, and maintaining a script for all OS versions became too cumbersome. Please fork this project for adaptations for other operating systems. I'm willing to assist with specific customization questions, but the script will focus on RHEL 7+ henceforth.
  - __NOTE__: RHEL 6 ELS (Extended Life-cycle Support) ends 30JUNE2024. Though most of `health` *should* continue to work, I will no longer be testing it on RHEL 6, nor making specific updates to maintain support.

#### Recently added:
  - Kernel Status Check ( `-k` option ):
      - Compares the current running kernel with the latest installed version, highlighting if a reboot is needed to switch to a newer kernel.
      - Utilizes `yum list updates kernel` to verify if a newer kernel version is available for installation.
      - Detects and alerts on potential subscription issues by parsing errors from the `yum` command output.
      - __Note__: Initially included in the default function, this feature was separated due to potential network-related slowdowns.

#### Up-coming Changes:
  - Remote users with open files check ( `-o` option ):
      - I'm working on a function to display all remote users with files open on the target server.
      - This change should come soon, but I'm working on formatting the output. 
  - Reworking the output of `who` in the main function:
      - I have a specific use case where UIDs are not human read-able and am working on a formatting 
      that will display full name infomation from `/etc/passwd` if available.
      - This isn't a fully baked idea yet, so this might take a couple of weeks.

If you're using RHEL 7 or later and encounter issues or have suggestions for routine error checks, please feel free to reach out!

#### Suggested Usage:
  - To run this check once daily during the first login, you can add the following line to your `.bashrc`:
    ```bash
    [[ $(last "$USER" | awk 'NR==2{print$6}) != $(date +%-d) ]] && health
    ```

### More: \[[Installation](https://github.com/zpiatt/health/wiki/Installation)\] \[[Wiki](https://github.com/zpiatt/health/wiki)\]
