default:
	git pull
	ansible-playbook -i $(app_name)-dev.tusharbytes.com, -e ansible_user=tushar -e ansible_password=tushar@12345 -e role_name=$(app_name) roboshop.yml