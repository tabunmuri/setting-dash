settingDir="setting-dash";

# 各ファイルのシンボリックリンクを作成
ln -s $HOME/${settingDir}/.gitconfig $HOME/.gitconfig
ln -s $HOME/${settingDir}/.gitignore_global $HOME/.gitignore_global
ln -s $HOME/${settingDir}/.vimrc $HOME/.vimrc
ln -s $HOME/${settingDir}/.zshrc $HOME/.zshrc

# ansible実行
HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook -i $HOME/${settingDir}/macbook-provisioning/hosts -vv $HOME/${settingDir}/macbook-provisioning/localhost.yml
