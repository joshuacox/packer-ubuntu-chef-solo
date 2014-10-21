name "web_server"
description "A role to configure nginx web server"
run_list "recipe[apt::default]", "recipe[nginx::default]"
default_attributes "nginx" => { "log_location" => "/var/log/nginx.log", "default_site_enabled" => false }