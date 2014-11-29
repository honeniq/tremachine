tremachine
==========

## 概要

VagrantでとりあえずTremaが使えるところまで持っていきます。

## 動作環境

* Vagrant 1.6.5
  - vagrant-omnibus
* VirtualBox 4.3.18

* vagrant-omnibus 1.4.1
* vagrant-serverspec 0.1.0

## 使い方

1. ``git clone https://github.com/honeniq/tremachine`` このリポジトリをcloneします。 
2. ``cd tremachine``
3. ``berks vendor cookbooks`` 依存しているCookbookを取ってきます。 
4. ``vagrant up``

ホストマシンのポート6633にフォワードしているので、OpenFlowSwitchはそこに繋ぎにいかせてください。
