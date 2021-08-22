# tabgrouper

A simple bash script to help you group your favorite websites, and open them easily from your terminal.

You can create multiple groups! 

> Example: You can have a group of websites for work. Using tabgrouper, you can open all the grouped websites easily at once!

## Let's set things up! 🛠

Add it to path and run it from everywhere. You can easily do it in 2 ways:

**1**. Create a symlink to the tabgrouper file **(recommended)**.
```bash
sudo ln -s <Absolute path to the tabgrouper file> /usr/local/bin/tabgrouper
```
**OR**

**2**. Add tabgrouper file to /usr/local/bin.  


## How to use? 🤔

- **Create a new group:**
   ```bash
   tabgrouper -n|--new
   ```
- **Add links to an existing group:**
   ```bash
   tabgrouper -a|--add <Group_Name>
   ```
- **Open links in the group(s) (default browser):**
   ```bash
   tabgrouper -o|--open <Group_Name...>
   ```
- **List links in the group(s):**
   ```bash
   tabgrouper -l|--listlinks <Group_Name...>
   ```
- **List all groups:**
   ```bash
   tabgrouper -lg|--listgroups
   ```
- **Edit existing links in a group:**
   ```bash
   tabgrouper -el|--editlinks <Group_Name>
   ```
- **Remove a link/website from the group:**
   ```bash
   tabgrouper -rl|--removelink <Group_Name> <Website_Name>
   ```
- **Remove group(s):**
   ```bash
   tabgrouper -rg|--removegroups <Group_Name...>
   ```

## Contributors 👨‍💻

- [Mohammed Gaiban Khan](https://github.com/Gaiban-Khan)
- [Mohammed Tauqeer D](https://github.com/Tauqeerrazvi)
- [Mahesh Anande](https://github.com/maheshanande)
