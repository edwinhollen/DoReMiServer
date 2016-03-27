This is a little PHP/MySQL server that keeps track of (anonymous) statistics in [DoReMi](https://github.com/edwinhollen/DoReMi). 

Use this:

1. Have [Vagrant](http://vagrantup.com) installed.

2. Clone the repo.

3. Run `vagrant up` and let PuPHPet and Vagrant do its thing. When it finishes, you can now use `vagrant ssh` to ssh into the dev box. If you need to make changes to how the Vagrant box is set up, edit `puphpet/config.yaml` then run `vagrant up --provision` to re-provision the box. 

4. Note that files in this repo are kept in `/var/www/` on the dev box, so any future references in this readme are relative to that location.

4. Put MySQL credentials in `/doremi/secret.json` using the template in `/doremi/secret_example.json`. MySQL credentials on this dev box are username `root` password `123` on `localhost`, and the database will be named `DoReMi`. This file is used to connect to the database from the PHP controller.

6. Set up the database by `vagrant ssh` into the dev box and run `/doremi.sql` using `mysql --host=localhost --user=root --password=123 < doremi.sql` (default credentials as an example). **This will destroy any existing `DoReMi` database.** Re-run this command to reset the database at any time. 


