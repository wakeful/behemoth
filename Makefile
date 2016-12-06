all: dependencies run

dependencies:
	@sudo pkg install -y ansible ca_root_nss

run:
	ansible-playbook main.yml -i "localhost," --connection=local
