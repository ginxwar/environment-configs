environment-configs
===================

environment configurations, config settings, etc.


Installing multiple homebrew packages
```
brew install $(<homebrew-packages)
```

Installing multiple VS Code extensions
```
while read extension; do code --install-extension "$extension"; done < vscode-extensions
```
