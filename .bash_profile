
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
#export custom_proxy=http://dev-proxy.gecp.rakuten.co.jp:9511
export PATH=${PATH}:/usr/local/mysql/bin
export PATH=${PATH}:~/.composer/vendor/bin

export ANDROID_HOME=/Users/thangngoc/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/25.0.0

alias vi='vim'

 alias mrs='cd ~/workspace/rakuten/gep-ui-mall/
            export mall=tw
            export gep_ui_mall_mode=qa
            custom_proxy=http://dev-proxy.gecp.rakuten.co.jp:9511 rails s            
            '                                                                        
                                                                                     
 alias redis='redis-server'                                                          
                                                                                     
 alias irs='cd ~/workspace/rakuten/gep-ui-ibs/                                       
            use_proxy=y rails s -p5000                                               
            '                                                                        
                                                                                     
 alias gorms='cd ~/workspace/rakuten/gep-ui-rms/'                                    
 alias 1.9.3='rvm use 1.9.3'                                                         
 alias 2.0.0='rvm use ruby-2.0.0-p598'                                               
 alias rrs='use_proxy=y rails s -p4000'                                              
                                                                                     
                                                                                     
                                                                                     
 chrome () {                                                                         
   open -a "/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome" "$1" 
 }
confirm () {
    # call with a prompt string or use a default
    read -r -p "${1:-Are you sure? [y/N]} " response
    case $response in
        [yY][eE][sS]|[yY])
            true
            ;;
        *)
            false
            ;;
    esac
}

git() {
    if [[ $3 == "--custom" ]]; then
      command git commit --amend
    else
      if [[ $1 == "commit" && $2 == "--amend" ]]; then
        confirm && git commit --amend --custom
      else
        command git "$@"
      fi
    fi
}

