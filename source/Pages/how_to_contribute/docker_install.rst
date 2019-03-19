.. _docker-install:

******************************
Setup readthedocs Docker image
******************************

===========
Preparation
===========

Before you start with the Docker image, make sure that:

* You have `Docker Engine installed <https://docs.docker.com/engine/installation/>`_
* Docker is running on your host
* You have cloned the ``htdpdocs`` repository

===========
Build image
===========

The official Docker image can be found in the readthedocs
repository: https://hub.docker.com/r/readthedocs/build/

To pull the image to your laptop, run:

.. code-block:: console

   $docker pull readthedocs/build
