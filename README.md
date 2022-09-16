# Dotfiles

## Setting up a new machine

Transfer the `~/.ssh` directory to the new machine.

`ssh add` to authorize the ssh agent.

Make a projects directory and clone this repo into it:

```
cd ~
mkdir projects
cd projects
git clone git@github.com:jagthedrummer/dotfiles.git
```
## Installing

run this:

```bash
./script/install.sh
```
