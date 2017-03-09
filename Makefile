all: dependencies

dependencies:
	pkg install -y ca_root_nss python py27-pip || zypper install gcc libopenssl-devel python-devel python2-pip
	pip install ansible

run:
	ansible-playbook main.yml -i "localhost," --connection=local

run-server:
	ansible-playbook main.yml -i "localhost," --connection=local --skip-tags ui

suse:
	ansible-playbook main.yml -i "localhost," --connection=local --extra-vars "ansible_python_interpreter=/usr/bin/python" --skip-tags ui
