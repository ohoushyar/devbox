name "perlbrew"
description "Perlbrew with common functionality for development"
run_list "role[common]", "recipe[common::perl]", "recipe[common::perlbrew]"
