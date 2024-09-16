environment-configs
===================

[![Join the chat at https://gitter.im/ginxwar/dotfiles](https://badges.gitter.im/ginxwar/dotfiles.svg)](https://gitter.im/ginxwar/dotfiles?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

environment configurations, config settings, etc.


Installing multiple homebrew packages
```
brew install $(<homebrew-packages)
```

Installing multiple VS Code extensions
```
while read extension; do code --install-extension "$extension"; done < vscode-extensions
```
