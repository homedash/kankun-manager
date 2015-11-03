# kankun-manager

Bash and Ansible provisioning for Kankun Small K switches.

## Features

* Installs opkg package manager
* Installs [kankun-json](https://github.com/homedash/kankun-json)
* Installs broadcaster
* Sets timezone
* Sets up cron
* Installs and sets up at

## Getting Setup

_These scripts use the default Kankun Small K password unless changed._

1. Install [Ansible](http://www.ansible.com/) on your local machine. (This can be done through a package manager too, if your system has one, such as [Homebrew](http://brew.sh/) for Mac.)
2. Checkout this repository: `git clone git@github.com:homedash/kankun-manager.git --recursive`
2. Edit the `hosts` file to refer to the IP addresses of your Kankun Small K switches and their password.
3. Edit the `deploy.sh` file to use the password for your switches.

## Usage

1. Run the `deploy.sh` script.
2. ???
3. Profit!

Visit the IP address of one of your switches in your web browser:

`http://10.0.0.10/`

This should show you information and controls for all your switches, as provided by [kankun-json](https://github.com/homedash/kankun-json).

## Contributing

If you'd like to contribute to the development of kankun-manager, please review the [guidelines for contributing](https://github.com/homedash/kankun-manager/blob/master/CONTRIBUTING.md).
