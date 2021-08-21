# tabgrouper

A simple bash script to help you group your favorite websites, and open them easily from your terminal.

You can create multiple groups! 

> Example: You can have a group of websites for work. Using tabgrouper, you can open all the grouped websites easily at once!

Add it to path and run it from everywhere.

> Add tabgrouper file to /usr/local/bin.

## How to use? 🤔

- **Create a new group:**
   ```bash
   tabgrouper -n|--new
   ```
- **Add links to an existing group:**
   ```bash
   tabgrouper -a|--add [Group Name]
   ```
- **Open links in the group(s) (default browser):**
   ```bash
   tabgrouper -o|--open [Group Name...]
   ```
- **List links in the group(s):**
   ```bash
   tabgrouper -l|--listlinks [Group Name...]
   ```
- **List all groups:**
   ```bash
   tabgrouper -lg|--listgroups
   ```
- **Edit an existing link in a group:**
   ```bash
   tabgrouper -el|--editlink [Group Name]
   ```
- **Remove a link/website from the group:**
   ```bash
   tabgrouper -rl|--removelink [Group Name] [Website Name]
   ```
- **Remove group(s):**
   ```bash
   tabgrouper -rg|--removegroups [Group Name...]
   ```

## Contributors 👨‍💻

- [Mohammed Gaiban Khan](https://github.com/Gaiban-Khan)
- [Mohammed Tauqeer D](https://github.com/Tauqeerrazvi)
- [Mahesh Anande](https://github.com/maheshanande)
