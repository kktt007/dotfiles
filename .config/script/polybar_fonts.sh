###
 # @Author: your name
 # @Date: 2021-09-30 10:29:15
 # @LastEditTime: 2021-09-30 10:37:23
 # @LastEditors: Please set LastEditors
 # @Description: In User Settings Edit
 # @FilePath: \ssr-decoded:\github\script\polybar_fonts.sh
### 
 # @Author: your name
 # @Date: 2021-09-30 10:29:15
 # @LastEditTime: 2021-09-30 10:29:16
 # @LastEditors: your name
 # @Description: In User Settings Edit
 # @FilePath: \ssr-decoded:\github\script\polybar_fonts.sh
### 

DIR=`pwd`
FDIR="$HOME/.local/share/fonts"

install_fonts() {
  if [[ -d "$FDIR" ]]; then
    cp -rf $DIR/fonts/* "$FDIR"
  else
    mkdir -p "$FDIR"
    cp -rf $DIR/fonts/* "$FDIR"
  fi
  echo -e "installing fonts finished"
}

install_fonts