# Wsl 2 initial ssh setup for github

## Wsl distros
This setup were confiremed in
* debian buster
* ubuntu 18.04
* ubuntu 20.04

## Prerequirement

```
[ansible installation]
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

## Usage
1. Run ansible playbook
```
cd ansible
ansible-playbook wsl.yml
```

2. Input your user information  
There are 2 interactive inputs in the playbook.  
Please input as per your preference.
```
your github mail address: mustaisgod@gmail.com
confirm your github mail address: mustaisgod@gmail.com
your ssh passphrase (can be blank): abc
confirm your ssh passphrase (can be blank): abc
```

3. Upload your public key information  
    1. go to https://github.com/settings/keys and click green "New SSH key" button at the top right corner
    2. name your "title" arbitrarily and paste your ssh public key onto 2nd "key" forms
    ![](https://user-images.githubusercontent.com/15004673/144790262-f7c3ee97-8ff6-4c11-ba19-d4c26e2402b9.png)