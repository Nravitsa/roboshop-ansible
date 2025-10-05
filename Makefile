default:
	git pull
	ansible-playbook -i $(app_name)-dev.tusharbytes.com, -e ansible_user=tushar -e ansible_password=tushar@12345 -e app_name=$(app_name) -e env=dev roboshop.yml



all:
	git pull; \
	list="cart catalogue dispatch frontend mongodb mysql payment rabbitmq redis shipping user"; \
	for app_name in $$list; do \
		ansible-playbook -i $$app_name-dev.tusharbytes.com, \
			-e ansible_user=tushar \
			-e ansible_password=tushar@12345 \
			-e app_name=$$app_name \
			-e env=dev
			roboshop.yml; \
	done
