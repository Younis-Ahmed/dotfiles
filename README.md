
Dotfiles
=========

This project contains my personal dotfiles, which are configurations and customizations for my terminal and development environment. By using these dotfiles, I can easily replicate my preferred environment on any machine I work on.

Disclaimer
----------
⚠ ⚠ ⚠ 
I use `nix-env` as my package manager, To get `nix-env` to work on ansible without declarative module to abstract the process. I had to improvise with eliminate _some_ idempotency nature of ansible.
If you so choose to use a different package manager then apply changes to the code.

Configuration
----
I've added limited batch of my tools...i'll be working on the rest when it make sense
- `nix-env`
- `zsh`
- `bat`
- `git`
- `nvim`
- `bash`
- `pnpm`
- `node`
- `nvm`
- `ts`
- `python`
- fonts

Assumptions
------

To utilize this project you need to install:
- sudo
- git
- ansible
- ansible-vault
- curl
- xz-utils (it's okay 🙂)


Getting Started
---------------

I used ansible-vault to encrypt and store sensitive data. You need to create:

- `ANSIBLE_VAULT_PASSWORD_FILE` and point to the password file
  ``` export ANSIBLE_VAULT_PASSWORD_FILE='path/to/password'```
  
- Create file with sensitive data using the following
```sh
ansible-vault create file_with_sensitive_data
```
- Copy and paste it on `all.yml` on `zsh_private` with suited key name 

**Usage:**
--------

To use these dotfiles, follow these steps:

1. **Clone the repository:**

```sh
git clone https://github.com/Younis-Ahmed/dotfiles.git
```

2. **`cd` into repository:**

```bash
cd dotfiles
```

3. **Run project**
```bash
ansible-playbook main.yml 
```

4. **source bashrc**
```bash
 . $HOME/.bashrc 
```

5. **source zshrc**
```sh
source $HOME/.zshrc 
```

License
-------

This project is licensed under the MIT License. See the `LICENSE` file for more information.
