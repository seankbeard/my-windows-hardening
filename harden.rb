# base.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://github.com/opscode/chef-dk/blob/master/POLICYFILE_README.md

# A name that describes what the system you're building with Chef does.
name 'windows-harden'

# Where to find external cookbooks:
default_source :supermarket

# Specify a custom source for a cookbook:
cookbook 'windows_hardening', git: 'https://github.com/wandersick/windows_hardening'

# run_list: chef-client will run these recipes in the order specified.
run_list    'windows_hardening::core_hardening', 
            'windows_hardening::ciphers',
            'windows_hardening::deleteautologon',
            'windows_hardening::enable_winrm',
            'windows_hardening::enable_firewall',
            'windows_hardening::harden_ntlm',
            'windows_hardening::harden_winrm',
            'windows_hardening::schedule_task_update',
            'windows_hardening::windowsupdate'