#!/bin/zsh

# 1114498254 - Avast Passwords
# 1147396723 - Whatsapp
# 803453959 - Slack
# 497799835 - Xcode
# 1176895641 - Spart
APP_STORE_APP_IDS=(1114498254 1147396723 803453959 497799835 1176895641)
BREW_PACKAGES=("carthage" "mas")
BREW_CASKS=("abstract" "bloomrpc" "daisydisk" "postman" "simpholders" "sketch" "sourcetree" "spotify" "visual-studio-code" "vlc")

# This is not exactly a dotfile, but running this script will install most used apps

# At first we need Homebrew if we do not already have it
echo "🕵️‍ Checking if Homebrew is installed"
which brew 2> /dev/null >/dev/null

if [ $? -ne 0 ]; then 
    echo "ℹ️ Homebrew is not installed, installing..."
    
    echo "👷‍ Installing Xcode command line tools"
    xcode-select --install # Homebrew installation requires command line tools
    echo "✅ Xcode command line tools installed"

    echo "‍‍👷‍ Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "✅ Homebrew is installed"
else 
    echo "✅ Homebrew is installed"
fi

# Then we can install Homebrew packages
echo "👷‍ Installing Homebrew packages: $BREW_PACKAGES"
brew install $BREW_PACKAGES
echo "✅ Homebrew packages installed"

# Install apps from Mac App Store
echo "👷‍ Installing apps from Mac App Store"
mas install $APP_STORE_APP_IDS
‍‍echo "✅ Mac App Store apps installed"

# Then we can install desired casks
echo "👷 Installing Homebrew casks: $BREW_CASKS"
brew cask install $BREW_CASKS
echo "✅ Homebrew casks installed"

echo ""
echo "🎉 All apps installed successfully ✅"
