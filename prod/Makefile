GIT_BRANCH ?= $(shell git branch | grep \* | cut -d ' ' -f2)

install_default_soft:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=$(HOSTS)  gather_facts=yes upgrade=on reboot=off" install_default_soft.yml
install_default_soft_resolv:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=$(HOSTS)  gather_facts=yes upgrade=on reboot=off" install_default_soft.yml	-t resolv
install_default_soft-smart:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=$(HOSTS)  gather_facts=yes upgrade=on reboot=off" install_default_soft.yml -t smart
install_default_soft-security:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=$(HOSTS)  gather_facts=yes upgrade=on reboot=off" install_default_soft.yml -t security

firewall:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=$(HOSTS)" firewall.yml
docker:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=$(HOSTS)" docker.yml

# Monitoring
prometheus:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=prometheus" prometheus.yml

alertmanager:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=prometheus" alertmanager.yml

node-exporter:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=all monitoring!=off" node_exporter.yml

blackbox-exporter:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=prometheus monitoring!=off" blackbox_exporter.yml

gotify:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=prometheus" gotify.yml


# Proxmox
proxmox-init:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=$(HOSTS)" proxmox.yml -t proxmox-init

proxmox-notifications:
	cd ansible && ansible-playbook -i hosts --extra-vars "list_hosts=$(HOSTS)" proxmox.yml -t notifications