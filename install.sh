#!/bin/sh

# Installs the config files into the local user's home directory

# --------------------
# Get the config path
# --------------------
CONFIG_PATH="`dirname \"$0\"`"
#echo $CONFIG_PATH
CONFIG_PATH="`( cd \"$CONFIG_PATH\" && pwd )`"
if [ -z "$CONFIG_PATH" ] ; then
  # Null path; something went wrong.
  exit 1  # fail
fi

# --------------------
# Install the configs (only)
# --------------------
ln -sf $CONFIG_PATH/.bash_aliases ~/
ln -sf $CONFIG_PATH/.bashrc ~/
ln -sf $CONFIG_PATH/.dictionary ~/
ln -sf $CONFIG_PATH/.git ~/
ln -sf $CONFIG_PATH/.gitconfig ~/
ln -sf $CONFIG_PATH/.ledgerrc ~/
ln -sf $CONFIG_PATH/.tmux.conf ~/
ln -sf $CONFIG_PATH/.vimrc ~/
ln -sf $CONFIG_PATH/.xinitrc ~/
