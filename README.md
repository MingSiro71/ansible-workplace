# Ansible CLI 実行のDOCKER環境

以下のDockerイメージを元に docker compose を使って手軽にコンテナを立ち上げられるようにしたもの
https://hub.docker.com/r/alpine/ansible

## 前提
aws-cliとsshの設定が自身のホームディレクトリとコンテナ内でリンクされる
利用するansibleの機能にも拠ると思われるが、フルで機能を利用する場合は`~/.aws`と`~/.ssh`にアクセスがあることに注意
これは依存しているDockerイメージの想定利用方法に準拠している

## ansible-vaultによる暗号化
現在の主な用途はansible-vaultによる認証情報等のファイルを暗号化するもので、以下の手順で暗号化されたファイルが手に入る

```
cd ansible-workspace
$EDITOR workspace/keys/${ファイル名} # $EDITORは任意のエディタ実行コマンド
./encript.sh ${ファイル名}
# valutpassの入力が求められる
# パスワードチェックが通るとworkspace/encrypted_keys/${ファイル名} に暗号化されたファイルが生成される
```
