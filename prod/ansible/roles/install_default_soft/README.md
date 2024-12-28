# First soft installation with dist-upgrade and with reboot:
ansible-playbook -i hosts --extra-vars "hosts=some-host gather_facts=yes upgrade=on reboot=on" install_soft_appodeal.yml

# Install only default software:
ansible-playbook -i hosts --extra-vars "hosts=some-host gather_facts=yes" install_soft_appodeal.yml

# Install only specific software:
ansible-playbook -i hosts --extra-vars "hosts=some-host gather_facts=yes default=off" install_soft_appodeal.yml
