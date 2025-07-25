## Software Repository: Environment Configuration

### Description
All my current config files  

<br/>

### Bash Overview

#### Startup Files
There are several [startup files](https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html) that configure the operation of bash from the moment it is invoked.  

<br/>

##### Interactive Login Shell
From GNU:
> When Bash is invoked as an interactive login shell, or as a non-interactive
> shell with the --login option, it first reads and executes commands from the
> file /etc/profile, if that file exists. After reading that file, it looks for
> ~/.bash_profile, ~/.bash_login, and ~/.profile, in that order, and reads and
> executes commands from the first one that exists and is readable.
> The --noprofile option inhibits this behavior.
>
> When an interactive login shell exits, or a non-interactive login shell
> executes the exit builtin command, Bash reads and executes commands from
> the file ~/.bash_logout, if it exists. 

| Name | Description |
|-----|-----|
| .bash_profile | Customized to point to the .bashrc file |
| .bash_login | This file is not customized at this time |
| .profile | This file is not customized at this time |
| .bash_logout| This file is not customized at this time |

<br/>

##### Interactive Non-Login Shell
From GNU:
> When Bash runs as an interactive shell that is not a login shell, it reads
> and executes commands from ~/.bashrc, if that file exists. The --norc option
> inhibits this behavior. The --rcfile *file* option causes Bash to use *file*
> instead of ~/.bashrc.
>
> So, typically, your ~/.bash_profile contains the line
> ```
> if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
> ```
> after (or before) any login-specific initializations. 

| Name | Description |
|-----|-----|
| .bashrc | Sets the path, sources all other configuration files |
| .bashrc.d | Directory containing additional project specific customizations |

<br/>

#### Bash Supporting Files
The startup files tend to get very long and unwieldly over time. In order to combat this, there are several supporting files that are used (sourced) to group shell functionality and keep it from being directly in one of the startup files.   

| Name | Description |
|-----|-----|
| .bash_aliases | File containing all the directory/command/function shortcuts |
| .bash_include | File containing all the prompt/history/terminal configuration |

<br/>

### Reference

[Bash (Unix shell) - Wikipedia](https://en.wikipedia.org/wiki/Bash_(Unix_shell))  
[Bash - GNU Project - Free Software Foundation](https://www.gnu.org/software/bash/)  
[Bash Reference Manual - HTML](https://www.gnu.org/software/bash/manual/html_node/index.html)  

---
This document was made following [Basic Syntax | Markdown Guide](https://www.markdownguide.org/basic-syntax/) and [Extended Syntax | Markdown Guide](https://www.markdownguide.org/extended-syntax/)