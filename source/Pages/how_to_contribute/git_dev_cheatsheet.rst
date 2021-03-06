**************
Git dev branch
**************

=========
Procedure
=========

The instructions here describe the steps to commit changes to the ``dev`` branch
of the documentation Github repository:

* Clone the repository in your local machine id you haven't done so:

.. code-block:: bash

        $ git clone https://github.com/sara-nl/htdpdocs.git


* Check whether the Docker Sphinx image ``rtfd-build:base`` is available on your machine:

.. code-block:: bash

        $ docker images
        # REPOSITORY    TAG   IMAGE ID    CREATED       SIZE
        # rtfd-build    base  4d74a62i    2 months ago  4.29GB

If you miss the image, download it as explained :ref:`here <docker-install>`.


* Browse to the root directory of the documentation and pull to fetch the latest version:

.. code-block:: bash

        $ cd htdpdocs
        $ git pull


* Check the available branches and your current work branch (annotated with asterisk):

.. code-block:: bash

        $ git branch -a
        # dev
        # * master
        # remotes/origin/HEAD -> origin/master
        # remotes/origin/dev
        # remotes/origin/master

* Switch to the ``dev`` branch:

.. code-block:: bash

        $ git checkout dev
        # Switched to branch 'dev'
        $ git branch -a
        # * dev
        # master
        # remotes/origin/HEAD -> origin/master
        # remotes/origin/dev
        # remotes/origin/master

* Merge master into the development branch to synch with the latest changes:

.. code-block:: bash

        $ git merge master
        # Updating 9d89s2..2bc1f5
        $ git status
        # On branch dev
        # Your branch is up to date with 'origin/dev'.
        # nothing to commit, working tree clean

* Work on your changes in the ``dev`` branch, e.g.:

.. code-block:: bash

        $ vi source/Pages/how_to_contribute/git_dev_cheatsheet.rst
        # make your changes and save the file

* Build the documentation locally and preview the page in your localhost:

.. code-block:: bash

        $  ./build_mac.sh
        # ...
        # build succeeded, 0 warnings
        $ open /Applications/Firefox.app/ build/index.html


* When satisfied with the changes, check the files that changed and commit them:

.. code-block:: bash

        $ git status
        $ git add source/Pages/how_to_contribute/git_dev_cheatsheet.rst
        $ git commit -m 'working with branches guide'

* Push to the ``dev`` remote branch:

.. code-block:: bash

        $ git push -u origin dev
        # ...
        # Branch 'dev' set up to track remote branch 'dev' from 'origin'.

Note! We push changes on ``dev`` branch, nothing changes on ``master``.

* Switch to master branch if you want with:

.. code-block:: bash

        $ git checkout master
        # Switched to branch 'master'
        $ git branch -a
        # dev
        # * master
        # remotes/origin/HEAD -> origin/master
        # remotes/origin/dev
        # remotes/origin/master

* Submit a pull request from the web interface:

  * New pull request -> ``Base:master/ compare:dev``
  * Add a description and check changes
  * Create a pull request


====================
Commit behind master
====================

Due to the multiple commits in the `dev` branch and possible pending pull requests, you may encounter the
warning 'This branch is 1 commit behind master.' You can resolve this with the following steps:

* Browse to the root directory of the documentation and pull to fetch the latest version to your local master:

.. code-block:: bash

        $ cd htdpdocs
        $ git pull


* Switch to the ``dev`` branch:

.. code-block:: bash

        $ git checkout dev

* Pull from the remote `dev` branch:

.. code-block:: bash

        $ git pull origin dev

* Merge the local `dev` branch with the remote `dev` branch:

.. code-block:: bash

        $ git merge origin dev

* Push the merged branch to the remote `dev` branch:

.. code-block:: bash

        $ git merge origin dev

* Check status:

.. code-block:: bash

        $ git status
        # On branch dev
        # Your branch is ahead of 'origin/dev' by 1 commit.

*  Push the merged branch to the remote `dev` branch:

.. code-block:: bash

        $ git push origin dev

* To verify the resolution, on the website switch to `dev`. It sould display "This branch is even with master." Or from the command-line, check in your local `dev` branch:

.. code-block:: bash

        $ git status
        # On branch dev
        # Your branch is up to date with 'origin/dev'.
        # nothing to commit, working tree clean


======
Extras
======

* Git commands overview :download:`pdf </Images/git-cheatsheet-EN-white.pdf>`

* Git commands sequence:

.. image:: /Images/git_commands_sequence.png
	:align: center
