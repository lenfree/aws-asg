.PHONY: deploy
deploy:
	ansible-playbook -i inventory/ec2.py build_deploy.yml
