
# vars

site=`/usr/local/bin/siteid`
global_app_url="/depotbld/RHEL7.0"

####################################################################
# function

ssh_trust(){
  login_host=`hostname`
  root_host1="cn58-infra1"
  root_host2="cn58-infra2"
  if [[ $login_host == $root_host1 || $login_host == $root_host2 ]]
  then
    sudo -s
  fi
}


# check folder or file if exist.
Check_ff(){
  
  # check oh-my-zsh if exist.
  if [[ ! -d $HOME/.oh-my-zsh ]]
  then
    # installing ohh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # coying robby theme from cn58
    scp dtian@cn58-kick:$HOME/.oh-my-zsh/themes/robbyrussell.zsh-theme $HOME/.oh-my-zsh/themes/
  fi

  # check nvim if exist
  if [[ ! -d $HOME/.config/nvim ]]
  then
    scp -r dtian@cn58-kick:$HOME/.config/nvim $HOME/.config/
  fi

  # check zsh-syntax-highlight if exist.
  if [[ ! -d $HOME/zsh-syntax-highlighting ]]
  then
    echo "zsh-syntax-highlight folder is not exist, copying from cn58 site"
    sleep 3
    scp -r dtian@cn58-kick:/remote/apit/dtian_dir/apps/zsh-syntax-highlighting $HOME/
  fi
  source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # check module  init if exist.
  if [[ ! -f $HOME/dtian_init_module ]]
  then
    echo "dtian_inti_module file is not exist, copying from cn58"
    sleep 3
    scp dtian@cn58-kick:/u/dtian/dtian_init_module $HOME/
  fi
  # module load
  source /u/dtian/dtian_init_module
  module load python/3.7.0
  module load gcc/8.2.0
  export PATH=$global_app_url/Git/git-2.34/bin:$PATH:/depotbld/RHEL7.0/neovim/neovim-0.9.0/bin
  alias vi="nvim"

}


###########
# Main
####################################################################

if [[ $site == "cn58" ]]
then
  ANSIBLE_CONFIG=/remote/apit/dtian_dir/ansible/ansible.cfg
  dtian_dir="/remote/apit/dtian_dir"
  local_kick="/remote/kickstart"
  my_app_url="/remote/apit/dtian_dir/apps"
  mynvim="$HOME/.config/nvim"
  # all site hostname
  source $HOME/myhost_list.md
  
  export ANSIBLE_CONFIG dtian_dir local_kick mynvim
  
  # load alias
  source /u/dtian/.my_alias
  
  # load zsh highlight plugin
  source /remote/apit/dtian_dir/apps/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # module load
  source /u/dtian/dtian_init_module
  module load python/3.7.0
  module load gcc/8.2.0
  module load lsf/cn58_snps
  module load neovim-0.9
  module load tmux-3.3
  module load git-2.34
else
  Check_ff
fi


####################################################################
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
        git
#        git-prompt
  )

zstyle ':omz:update' mode disabled
source $ZSH/oh-my-zsh.sh

export PATH=/opt/Citrix/VDA/bin:/opt/synopsys/ansible/bin:$HOME/.local/bin:$PATH

HISTSIZE=200

####################################################################
# unset vars


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
