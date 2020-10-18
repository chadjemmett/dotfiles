Dot files.

In order use some of these dotfiles. They need a sym link in the home directory.


Example:
In order to get a sym link from .bash_profile to the home directory you have to type this:

`ln -sv ~/.dotfiles/runcom/.bash_profile`


`.dotfiles/runcom/.bash_profile` is where I have all my bash settings.


## Vim

Copy the .vim file into the home directory.
    This has all the plugins and stuff.
then create a sym link to the `.vimrc` file in the `.dotfiles/runcom/` directory.


## runcom.
    Create sym links with this code:

`ln -sv ~/.dotfiles/runcom/.bash_profile`
`ln -sv ~/.dotfiles/runcom/.inputrc`
`ln -sv ~/.dotfiles/runcom/.vimrc`



## How to run the bootstrap script.

Make sure the script has execute permissions:

`chmod +x /path/to/bootstrap.sh`


Run the script in the HOME DIRECTORY this way:

`./.dotfiles/bootstrap.sh`



What I need when setting up a new system. 
    `.bash_profile`
    `.vimrc`
    `.vim` file and all the plugins.
    `.inputrc`
    The correct python version.
    The current vim version.
    Pip.
    virtualenv
    virtualenv wrapper
    homebrew

Steps to setting up a new system
================================

1. Install git, manually
2. Install brew via script
3. Install pyenv script
4. Install the latest python
5. Install vim with brew
6. Install the .dot files.
7. Create sym links
8. install pyenv-virutalenv with brew
9. install any other versions of python I need with pyenv.
10. Install postgresql
11. Install Postman.
12. Install Moom.
13. Install 1password
14. OpenVPN
15. Download Docker
16. Install Cyberduck
17. Install Chrome
18. Install Firefox
19. Install VSCode
20. Install Slack
21. Install Yarn

