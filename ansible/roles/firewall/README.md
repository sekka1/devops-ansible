This Ansible playbook will provide a complete set of firewall rules for RedHat-based distros(saving the rules to a file is distro-specific). It flushes the existing rules first, then adds a rule for each item in firewall_whitelist_ip_port_proto. This list assumes the following fields in each item: "src_ip"(the source IP address), "dest"(the destination port), "proto"(the protocol used).

Additionally, you'll want to change firewall/vars/main.yml values to suit your system's configuration for iptables location and filter chain name.


## Playbook procedure
1. Drop all rules
1. Apply ctstate rules for connections
1. Apply the list of white list rules in the list var "firewall_whitelist_ip_port_proto"
1. Apply a final drop all rule as the last rule

WARNING: By not adding in a white list item with a source IP that you are coming from for port 22/tcp.  You can block yourself from accessing this box.