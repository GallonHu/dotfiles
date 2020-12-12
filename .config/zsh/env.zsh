# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

export LANG='UTC-8'
export LC_ALL='en_US.UTF-8'

# python virtualenvs
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /Users/gallon/Library/Python/3.7/bin/virtualenvwrapper.sh

export PATH=$PATH:/usr/local/sbin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# for go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin:$GOBIN
# Enable the go modules feature
export GO111MODULE=on
# Set the GOPROXY environment variable
export GOPROXY=https://goproxy.cn

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node

# colorls
source $(dirname $(gem which colorls))/tab_complete.sh

# Brew
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.cloud.tencent.com/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
export HOMEBREW_GITHUB_API_TOKEN="284ce3c70f6926db97b1d93071cab0e161bfe6e9"
export HOMEBREW_NO_AUTO_UPDATE=true

# Batman
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# java
export JDK_HOME="/usr/local/opt/openjdk/"
export JAVA_HOME=$JDK_HOME
export PATH=$PATH:${JAVA_HOME}/bin:/Users/gallon/Library/Python/3.7/bin

export http_proxy=http://127.0.0.1:1087 export https_proxy=http://127.0.0.1:1087
