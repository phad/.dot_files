.dot _ files
===============

A structured set of . (dot) files for use in my homedir on Linux.
I use `bash` and wrote these with `bash` in mind.  I haven't tested
them in other shells.

# Installing

Clone the repo into `$HOME/.dot_files`

Edit your `$HOME/.bashrc` so that it includes the line:
`source ~/.dot_files/bashrc.sh`

Edit your `$HOME/.bash_profile` so that it includes the lines:
`source $HOME/.dot_files/bashprofile.sh`
`source $HOME/.bashrc`

For all other .files or .directories, create symlinks in your homedir, eg.:
`cd`
`ln -s .dot_files/.vim`

