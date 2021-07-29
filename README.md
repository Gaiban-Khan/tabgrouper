
# tabgrouper
A simple bash script to help you group your favorite websites, and open them easily from your terminal.

You can create multiple groups!
> Example: You can have a group of websites for work. Using tabgrouper, you can open all the grouped websites easily at once!

&nbsp;  
Add it to path and use it everywhere.
> Example: Add **tabgrouper** file to /usr/local/bin on macOS.

<h2> How to use? </h2>

<ul>
 <li><strong>Create a new group:</strong></li>
 <code>tabgrouper -n|--new </code>
 <p>&nbsp;</p>
 <li><strong>Add links to an existing group:</strong></li>
 <code>tabgrouper -a|--add [Group Name]</code>
 <p>&nbsp;</p>
 <li><strong>Open links in the group(s) (default browser):</strong></li>
 <code>tabgrouper -o|--open [Group Name]...</code>
  <p>&nbsp;</p>
 <li><strong>List links in the group(s):</strong></li>
 <code>tabgrouper -l|--listlinks [Group Name]...</code>
  <p>&nbsp;</p>
 <li><strong>List all groups:</strong></li>
 <code>tabgrouper -lg|--listgroups</code>
  <p>&nbsp;</p>
 <li><strong>Edit an existing link in a group:</strong></li>
 <code>tabgrouper -el|--editlink [Group Name]</code>
  <p>&nbsp;</p>
 <li><strong>Remove a link/website from the group:</strong></li>
 <code>tabgrouper -rl|--removelink [Group Name] [Website Name]</code>
  <p>&nbsp;</p>
 <li><strong>Remove group(s):</strong></li>
 <code>tabgrouper -rg|--removegroups [Group Name]...</code>
 </ul>
