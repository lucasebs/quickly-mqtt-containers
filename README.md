# MQTT Communication with Docker 

Schema for quickly communication between an MQTT server and docker containers

Based in:

https://medium.com/@abdallahjarwan/mqtt-application-using-docker-6e61d7a3642d

https://thilake.medium.com/get-into-mqtt-in-2-minutes-python-docker-5d4e8b55cf1c

---

### Default Containers:
- mqtt
- subscriber-python
- publisher-python

----

To start and run default containers:
> make start

To destroy all containers
> make destroy

----
### Into 'subscriber-python' container
Run subscriber:
> make subscriber

### Into 'publisher-python' container
Run publisher:
> make publisher

To identify container name, run publisher with the following command:
> make NAME="$(cat /etc/hostname)" publisher

