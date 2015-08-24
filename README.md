#setting-dash

これは、macで初期設定をする時用に、ツールをまとめたものです。  
実行すると、setting-dashディレクトリが生成されます。
生成物としては、「ヒントや、Tipsなどが詰まった、hintファイル」や「zshrcといった、設定ファイル」が作られます。

## ファイル構造
構造はおおまかに下記のようになっています。

setting-dash  
├── .gitconfig  
├── .gitignore_global  
├── .password  
├── .vimrc  
├── .zshrc  
├── hint  
│   ├── .css_hint  
│   ├── .dns_hint  
│   ├── .git_hint  
│   ├── .hack  
│   ├── .hint  
│   ├── .ide_hint  
│   ├── .php_hack  
│   ├── .rabbit_hint  
│   ├── .rails_hint  
│   ├── .underscore.js.hint  
│   ├── .vimhack  
│   └── .yard_hint  
├── macbook-provisioning  
│   ├── brew_info  
│   ├── cask_info  
│   ├── hosts  
│   └── localhost.yml  
└── setting-init.sh  

setting-init.shを実行することによって、こちらの4ファイルはホームディレクトリ直下より、シンボリックリンクが貼られます。
> .gitconfig  
> .gitignore_global  
> .vimrc  
> .zshrc  

また、.passwordファイル内には、パスワード等を入れておくと、ちょっとした時に調べやすくなるかと思います。

> .password  


# 使い方

`git clone git@github.com:tabunmuri/setting-dash.git`  
  
〜下記の章の初期設定を行う〜  
  
`chmod 755 ~/setting-dash/setting-init.sh`  
  
`~/setting-dash/setting-init.sh`

できあがり  

# 初期設定

## .gitconfig

.gitconfigで下記のようになっているexampleな設定をあなたのアカウントに変更して下さい。

> [user]  
>     name = example_name  
>     email = example_name@example.com  
  

## .gitignore_grobal[後回しでもOK]

.gitignore_grobalに、大抵無視するようなパターンを書き込みましょう。
入力後は、下記のコマンドを打てばOK
	`git config --global core.excludesfile ~/.gitignore_global`

## .zshrc[後回しでもOK]

alias等に、あなたの秘伝のコマンドを追加してください。

## .password[後回しでもOK]

よく使うパスワードなどをこちらに書き込んでおくと、さくっと調べるのに便利かもしれません。

  
# 用途

|ファイル名|用途|
|:------------|:------------|
|.gitconfig|こちらのファイルがホームディレクトリにシンボリックリンクが貼られます。|
|.gitignore_global|aa|
|.password|aa|
|.vimrc|aa|
|.zshrc|aa|
|.gitconfig|aa|
|.gitconfig|aa|
|hint|aa|
|macbook-provisioning|aa|
|setting-init.sh|aa|
