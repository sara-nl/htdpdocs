.. _login:

.. contents:: 
    :depth: 4

On this page you will find general information about getting started on HT-platform
    
.. _login-account:

=======================
Get a new login account
=======================

Researchers from SURF-affiliated institutes can request for compute and storage capacity on HT-platform by filling in the
`SURFsara application form`_. Researchers from institutes not affiliated to SURF may also request access by writing to
helpdesk@surfsara.nl; rates for these requests are based on tailor made packages.

.. _ssh-login:

====================
Login to the cluster
====================

Once you have obtained a username and password, you may follow the instructions to create and upload your public ssh key:

1. Access to the cluster is provided via SSH (Secure Shell) Public key authentication only. If you already have an ssh 
key-pair please proceed to the next step, else you can generate a key-pair by using the following command:

.. code-block:: console

   $ssh-keygen # This will create a key-pair in $HOME/.ssh directory 

2. With your username and password obtained from SURFsara you can login to the `SURFsara portal`_. Click on
the tab "Public ssh keys" on the left pane.

3. You can add the public key by copying the contents of your file id_rsa.pub created in the step 1 in the "SSH key" box.

.. image:: /Images/cua-portal-addssh.png
	:align: center
    
4. After you logout from the portal you can login to HT-platform via a terminal with the following command:

.. code-block:: console

   $ssh -i ~/.ssh/id_rsa username@HT-platform.sara.nl
   
Please note that it may take a few minutes for you to be able to login to HT-platform after the ssh key upload.
   

=============
Getting help
=============

If you need any assistance, you may contact our helpdesk:

* Email: helpdesk@surfsara.nl 
* Telephone: 020 800 1400 (`Availability`_)

To speed up our support, you may provide us the following information:

* Your name
* Login name
* Project name

.. Links:

.. _`SURFsara application form`: https://e-infra.surfsara.nl/
.. _`SURFsara portal`: https://portal.surfsara.nl/
.. _`Availability`: https://userinfo.surfsara.nl/contact

