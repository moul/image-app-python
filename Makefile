DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-python
VERSION =		latest
VERSION_ALIASES =
TITLE =			Python
DESCRIPTION =		Python
SOURCE_URL =		https://github.com/scaleway/image-app-python


# Forward ports
SHELL_DOCKER_OPTS ?=    -p 80:80 -p 443:443 -p 8000:8000


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
