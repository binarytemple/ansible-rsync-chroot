
ping:
	ansible ec2 -i ./hosts.ini -m ping

provision:
	ansible-playbook -i ./hosts.ini playbook.yml
