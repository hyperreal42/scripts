# TODO

Automate the following tasks with Ansible:
* [ ] auto-lynis
* [ ] clone-dracula-themes
* [ ] setup-flatpak
* [ ] deb/*
* [ ] rpm/*

* try to abstract so that deb/* and rpm/* only use one playbook 

## Ansible resources:
* [package module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/package_module.html)
* [git module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/git_module.html)
* [flatpak module](https://docs.ansible.com/ansible/latest/collections/community/general/flatpak_module.html)
* [flatpak_remote module](https://docs.ansible.com/ansible/latest/collections/community/general/flatpak_remote_module.html)
* [ansible-lynis module](https://github.com/CISOfy/lynis-ansible)
* [Manage your workstation part 1](https://opensource.com/article/18/3/manage-workstation-ansible)
* [Manage your workstation part 2](https://opensource.com/article/18/3/manage-your-workstation-configuration-ansible-part-2)
* [Manage your workstation part 3](https://opensource.com/article/18/5/manage-your-workstation-ansible-part-3)
* [dconf module](https://docs.ansible.com/ansible/latest/collections/community/general/dconf_module.html)
