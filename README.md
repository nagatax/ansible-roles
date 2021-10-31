# Ansibleのロール集

## はじめに

Ansibleのロールをまとめたものです。

## 使用方法

### Ansible Playbookの使用方法

プロジェクトルートで下記を実行する。

```bash
# 全てのロールを実行
ansible-playbook -i hosts site_common.yml
ansible-playbook -i hosts site.yml

# ロール単位で実行
ansible-playbook -i hosts site.yml --tags [ロール名]
```
