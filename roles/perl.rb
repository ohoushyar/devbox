name "perl"
description "Perl with common functionality for development"
run_list "role[common]", "recipe[common::perl]"
