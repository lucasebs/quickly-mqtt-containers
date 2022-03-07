NAME=$(cat /etc/hostname)

subscriber:
	@ python subscriber.py

publisher:
	@ python pub_client.py "$(NAME)"

start:
	@ docker-compose up -d

destroy:
	@ docker-compose down
	@ docker rm -f $(docker ps -a -q)