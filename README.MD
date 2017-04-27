# DEXMA DevOps / System Engineer Test


# Challenge
The challenge come by using a unique command we want to deploy all the required infrastructure for this awesome application written in Python using the Flask framework.

# Requeriments
* Virtualbox 5.1.20 
* Vagrant 1.9.4
```Use vagrant -v to check your version
```

# Instructions
* First, clone this repo
* Second and finally, up the VM
```bash
        $ vagrant up
```

# Testing
Can be tested either in localhost using curl:
```bash
curl http://127.0.0.1:5000
Welcome! Please Log In:
```

# Explanation
The solution with Docker is lighter than Vagrant on Linux, but the Docker containers in Windows infrastructures are very new and I don't know where the tests were launched (I hope it's Linux). Vagrant + VBox is very stable in Windows/Linux environments. In order not to complicate and simplify the test I decided to use Vagrant + Puppet.

Vagrant provisions the machine using Puppet, I needed to use three external modules:
* [puppetlabs-vcsrepo](https://github.com/puppetlabs/puppetlabs-vcsrepo)
* [uppetlabs-apache](https://github.com/puppetlabs/puppetlabs-apache)
* [puppetlabs-mysql](https://github.com/puppetlabs/puppetlabs-mysql/)


I've divided the code into three modules clearly differentiated by functionality:

* core: Create folders & installing sofware necessary
* deploy: Download files from repo dexma-devops-test & configuring apps (Apache/MySQL)
* wsgi: Config script to run app



