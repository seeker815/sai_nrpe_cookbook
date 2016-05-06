# sai_nrpe

Installs [NRPE](https://exchange.nagios.org/directory/Addons/Monitoring-Agents/
NRPE--2D-Nagios-Remote-Plugin-Executor/details) with a minimal config and 
allows user to customize configuration

##Requirements

Depends on [apt cookbook](https://supermarket.chef.io/cookbooks/apt). 
We currently support

- Ubuntu 12.04
- Ubuntu 14.04


##Attributes

Add your configs to attribute file `default.rb`, this is where nrpe config 
would go. 

##Recipes

Coobook contains `default.rb` and library file `default.rb`

`default.rb` recipe  sets up package, config file nrpe.cfg and service.

`default.rb` library adds config attributes to nrpe config file.