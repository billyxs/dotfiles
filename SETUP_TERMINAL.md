# SETUP Terminal and environment

## Install iTerm and ZSH
- [iTerm](https://iterm2.com/)
- [Oh My ZSH](https://ohmyz.sh/#install)
  - Copy over themes from dotfiles


## Brew installs
[Install homebrew](https://brew.sh/)

Install python
```
brew install python
```

[Install font](https://github.com/sb2nov/mac-setup/issues/218#issuecomment-768923328)
```
brew tap homebrew/cask-fonts
brew install font-office-code-pro
```

## Setup dotfiles

Install dotfiles
```
git clone git@github.com/billyxs/dotfiles

# Copy zsh themes
cp dotfiles/.oh-my-zsh/themes/* ~/.oh-my-zsh/themes/
```

## Configure iTerm
Preferences->General
- [x] Load preferences from a custom folder or URL
**Link to the dotfiles directory**
- Save Changes: When Quitting

Preferences->Profile->Colors
- [Import Dracula theme](https://draculatheme.com/iterm)

Preferences->Profile->Text
- Font Settings- Office Code Pro: Regular: 15: 91: 96
  - [x] Use Ligatures
  - [x] Anti-aliased

Preferences->Profile->Terminal
- Report terminal type: xterm-256color
