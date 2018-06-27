## GCP via Terraform and Ansible

Generate and then add your public key in the format of 

`ssh-rsa [key] [username]`

( via: https://console.cloud.google.com/compute/metadata/sshKeys )

Save and it is ready for deploying to your instances.

#### from your GCP Console
Create an instance or re-use the bastion from the first half.
```
$ sudo yum install -y ansible git wget curl <editor of choice>

```
download and unzip terraform and put it into ~/bin
`$ mv terraform ~/bin/`


Now the rest of the project can continue.

## Actual Build

1) Setup a working path within your home path.  eg: `mkdir -p ~/project` and `cd` into it.

2) First, edit your main.tf to match the project you're using in GCP console for this workshop.
Then run `terraform init` inside your working path.

3) Inspect all your .j2 files to understand what they are creating.

4) Edit the build.yml file, filling in your own values in the _vars_ section. Mind the comments for hints.

5) Edit the config.yml file next, filling in your own values in the _vars_ section. Mind the comments for hints.

6) Use the `runboth.sh` to run both Ansible playbooks. You may alternatively cat the `runboth.sh` and then run each Ansible playbook run at a time, with --step to see the steps iteratively, and use -v for more verbosity.


They will create the instances based on variables that you've edited.

Once the build completes, inspect the instances by SSH'ing directly to them and see what's going on.

Test the web page you've stood up by visiting either the individual host or the load balancer with a browser.

7) Bonus: Use Ansible or GCP to somehow disable 1 of the web servers and then see if the site is still up.

8) When finished, destroy the environment with `terraform destroy`. 

