all: dependencies run

dependencies:
	@sudo pkg install -y ca_root_nss python py27-pip
	@sudo sudo pip install ansible

run:
	ansible-playbook main.yml -i "localhost," --connection=local

run-server:
	ansible-playbook main.yml -i "localhost," --connection=local --skip-tags ui
