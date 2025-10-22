# dotfiles
## 📦 Symlinks

### Windows
```Powershell
New-Item -Path $env:USERPROFILE\AppData\Local\nvim -ItemType SymbolicLink -Value $env:USERPROFILE\dotfiles\nvim
```
### Linux
```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
```
