
PlugDir=~/.config/nvim/ss

test -d $PlugDir

if [ $? -eq 0 ];then
  curl -fLo $PlugDir/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  if [ $? -eq 0 ];then
    echo "Success to download plug.vim"
  else
    echo "Failure to download plug.vim"
  fi
else
  mkdir $PlugDir
  curl -fLo $PlugDir/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  if [ $? -eq 0 ];then
    echo "Success to download plug.vim"
  else
    echo "Failure to download plug.vim"
  fi
fi
