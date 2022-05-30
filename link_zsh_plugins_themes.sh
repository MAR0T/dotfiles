#!/bin/bash

#######################################################################
# Script name   : link_zsh_plugins_themes.sh
# Description	: Create symlinks for used oh-my-zsh plugins and themes                                                                                
# Created date  : 30.05.2022
# Modified date : 30.05.2022
# Author       	: Marek Tomczewski                    
# Email         : marek.tomczewski@gmail.com                                           
#######################################################################

# Plugins
sudo rm -f /usr/share/oh-my-zsh/plugins/zsh-autosuggestions
sudo ln -s ../../zsh/plugins/zsh-autosuggestions /usr/share/oh-my-zsh/plugins/zsh-autosuggestions 
sudo rm -f /usr/share/oh-my-zsh/plugins/zsh-history-substring-search
sudo ln -s ../../zsh/plugins/zsh-history-substring-search /usr/share/oh-my-zsh/plugins/zsh-history-substring-search
sudo rm -f /usr/share/oh-my-zsh/plugins/zsh-syntax-highlighting
sudo ln -s ../../zsh/plugins/zsh-syntax-highlighting /usr/share/oh-my-zsh/plugins/zsh-syntax-highlighting

# Themes
sudo rm -f /usr/share/oh-my-zsh/powerlevel10k
sudo ln -s ../../zsh-theme-powerlevel10k /usr/share/oh-my-zsh/powerlevel10k
