# oh my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
        git
#        git-prompt
  )

zstyle ':omz:update' mode disabled
source $ZSH/oh-my-zsh.sh

####################################################################
# vars
ANSIBLE_CONFIG=/remote/apit/dtian_dir/ansible/ansible.cfg
dtian_dir="/remote/apit/dtian_dir"
local_kick="/remote/kickstart"
my_app_url="/remote/apit/dtian_dir/apps"
mynvim="$HOME/.config/nvim"

export ANSIBLE_CONFIG dtian_dir local_kick mynvim
  
####################################################################
export PATH=/opt/Citrix/VDA/bin:/opt/synopsys/ansible/bin:$HOME/.local/bin:$my_app_url/tmux-3.3/bin:$PATH

# HISTSIZE=200

global_app_url="/depotbld/RHEL7.0"

####################################################################
# module load
source $HOME/dtian_init_module
os_rel=`cat /etc/redhat-release| awk '{print $1}'`
if [ $os_rel != "AlmaLinux" ]
then
  module load python/3.7.0
  module load gcc/8.2.0
fi
module load neovim-0.9
module load git-2.34
module load lsf/cn58_snps

####################################################################
# source all site hostname
source $HOME/myhost_list.md
# load alias
source $HOME/.my_alias
# load zsh highlight plugin
source $dtian_dir/apps/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


####################################################################
# function

ssh_trust(){
  my_host=`hostname`
  if [[ $my_host == "cn58-infra1" || $my_host == "cn58-infra2" ]]
  then
    sudo -s
  fi
}


####################################################################
ssh_trust

## unset vars


