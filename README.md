#setting-dash

これは、macで初期設定をする時用に、ツールをまとめたものです。  
実行すると、setting-dashディレクトリが生成されます。
生成物としては、「ヒントや、Tipsなどが詰まった、hintファイル」や「zshrcといった、設定ファイル」が作られます。

## このリポジトリでできること

 - zshrcやbashrcといった設定ファイル関連をgitで一元管理できる
 - よく使うけれども、コマンドを忘れてしまうといったコマンド類のカンペを管理することができます。
 - password類の管理をすることができます。

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

<注意>
.passwordは、絶対にパブリックリポジトリにコミットしないでください。
gitで管理するとしても、privateリポジトリで管理するようにしてください。

# 使い方

## インストール編
`git clone git@github.com:tabunmuri/setting-dash.git`  
  
〜下記の章の初期設定を行う〜  
  
`chmod 755 ~/setting-dash/setting-init.sh`  
  
`~/setting-dash/setting-init.sh`  
  
`source ~/.zshrc`  
  
できあがり  

## 実行方法編

上記を全て実行した後に、下記のコマンドを打ちますと設定されているコマンドの一覧が確認できるようになります。  
  
`myalias`  

|コマンド名|用途|
|:------------|:------------|
|myalias|設定されているエイリアス一覧を出力します。|
|mypass|.passwordをcatで出力します|
|myhint|hintファイルをcatで出力します。|
|mycss_hint|CSSに関するヒントをcatで出力します。|
|mydns_hint|DNSに関するヒントをcatで出力します。|
|myhack|ちょっとしたハックをcatで出力します。|
|myphphack|PHPに関するヒントをcatで出力します。|
|myrails_hack|railsに関するヒントをcatで出力します。|
|myvimhack|vimに関するヒントをcatで出力します。|
|mygithint|gitに関するヒントをcatで出力します。|
|myyard|Yardに関するヒントをcatで出力します。|
|myrails_rabbit|プレゼンテーションツール Rabbitに関するヒントをcatで出力します。|

### 変わり種

|コマンド名|用途|
|:------------|:------------|
|histtop10|よく使うコマンドのトップ10を出力します|
|gitsort_local|ローカルブランチ内で、最近使用した順に表示させます|
|gitsort_remote|リモートブランチ内で、最近使用した順に表示させます|
|gitsort_all|ローカル、リモート両方のブランチ内で、最近使用した順に表示させます|


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
|.gitignore_global|ホームディレクトリにシンボリックリンクが貼られます。|
|.password|パスワードを管理するテキストファイルです。|
|.vimrc|ホームディレクトリにシンボリックリンクが貼られます。|
|.zshrc|ホームディレクトリにシンボリックリンクが貼られます。|
|hint|各プロダクトに関するヒントファイルが格納されています。|
|macbook-provisioning|macのプロビジョニングツールがこちらに含まれています。|
|setting-init.sh|こちらを実行すると、上記のいくつかのファイルに対して、ホームディレクトリより、シンボリックリンクが貼られ、macbook-provisioning内に記録されているansibleの設定ファイルより、プロビジョニングが行われます。|

# お願い

より良い構成や、tips、エイリアス、改善点などありましたら、プルリクエストください。  
そして、もっと手抜きしていきたいです。
よろしくお願いします。
