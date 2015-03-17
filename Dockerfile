## -*- docker-image-name: "armbuild/ocs-app-python:latest" -*-
FROM armbuild/ocs-distrib-ubuntu:trusty
MAINTAINER Online Labs <opensource@ocs.online.net> (@online_en)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update                                       \
 && apt-get -y -qq upgrade                                  \
 && apt-get purge -y python.*                               \
 && apt-get -y -qq install                                  \
	git                                                 \
	mercurial                                           \
	subversion                                          \
        python                                              \
	python-setuptools                                   \
 && apt-get clean


# Install common python development libraries
RUN easy_install \
    coverage \
    nose \
    pep8 \
    pip \
    pylint \
    unittest-xml-reporting \
    virtualenv \
    virtualenvwrapper


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
