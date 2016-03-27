
# HIDE
if [ "$1" == "hide" ]; then

  defaults write com.apple.finder AppleShowAllFiles -boolean true
  killall Finder

# SHOW
elif [ "$1" == "show" ]; then

  defaults write com.apple.finder AppleShowAllFiles -boolean false
  killall Finder

# TOGGLE
elif [ "$1" == "toggle" ]; then

  STATUS=`defaults read com.apple.finder AppleShowAllFiles`
  if [ $STATUS == 1 ]
  then
  defaults write com.apple.finder AppleShowAllFiles -boolean false
  else
  defaults write com.apple.finder AppleShowAllFiles -boolean true
  fi

  killall Finder

  # INFO
  elif [ "$1" == "help" ] || [ "$1" == "info" ]; then

    echo ""
    echo "show      :->   show hidden files"
    echo "hide      :->   hide hidden files"
    echo "toggle    :->   toggle visibility of hidden files"
    echo ""

  fi
