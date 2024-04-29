[![CI](https://github.com/zscaler/zpacloud-playbooks/actions/workflows/ci.yml/badge.svg)](https://github.com/zscaler/zpacloud-playbooks/actions/workflows/ci.yml)
[![GitHub Release](https://img.shields.io/github/v/release/zscaler/zpacloud-playbooks.svg)](https://github.com/zscaler/zpacloud-playbooks/releases)
# Zscaler Private Access - Ansible Playbooks

Example Ansible playbooks using the Zscaler Private Access
[Ansible Collection](https://github.com/zscaler/zpacloud-ansible), and what you'll need to get started writing your own. We try to add interesting things to this repository over time based on customer questions, so check back from time to time.

- Free software: MIT License
- [Documentation](https://zscaler.github.io/zpacloud-ansible)
- [Repository](https://github.com/zscaler/zpacloud-ansible)
- [Example Playbooks](https://github.com/zscaler/zpacloud-playbooks)
    
## Getting Started

### Installing Ansible

First, you'll need to install Ansible on the machine that will execute your playbooks (called the control node). The control node can be as simple as a laptop, and can be running any Unix-like OS (Linux, BSD, macOS).

You'll want to generally follow the
[Ansible documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation_module.html#installing-the-control-node)
for installing Ansible on your machine, but here are quick instructions for popular choices:

#### CentOS

Install from [EPEL](https://fedoraproject.org/wiki/EPEL):

```
sudo yum install epel-release
sudo yum install ansible
```

#### Ubuntu

Install from the Ansible PPA:

```
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

#### macOS 10.15

Install from Pip (Python package manager):

```
pip3 install --user ansible
export PATH=$PATH:$HOME/Library/Python/3.7/bin
```

You'll want to permanently modify the PATH in your shell's config file as well.

### Clone this repository, install ZPA Collection

Once you're done with installing Ansible, clone this repo, and install the ZPA collection from Ansible Galaxy as well as the Python modules it depends on:

```
git clone https://github.com/zscaler/zpacloud-playbooks.git
cd ansible-playbooks/
ansible-galaxy collection install -r collections/requirements.yml
pip3 install --user -r requirements.txt
```

### Customize connection parameters

The supplied inventory sets variables for each host in the `host_vars` directory.  Authentication credentials are not included, and should be specified either on the CLI, or in a seperate file like so:

```
ansible-playbook -i inventory check_ready.yml -e @creds.yml
```

You're now ready to start using these playbooks.

## Sample Playbooks

You can use these playbooks as a base by cloning this repository.  Each of them is documented with how to run them via
`ansible-playbook` and their customization options.

## Included content

- [zpa_app_connector_groups](https://zscaler.github.io/zpacloud-ansible/modules/zpa_app_connector_groups_module.html) - Create/Update/Delete an app connector group.
- [zpa_app_connector_groups_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_app_connector_groups_facts_module.html) - Gather information details (ID and/or Name) of a app connector group.
- [zpa_application_segment](https://zscaler.github.io/zpacloud-ansible/modules/zpa_application_segment_module.html) - Create/Update/Delete an application segment.
- [zpa_application_segment_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_application_segment_facts_module.html) - Gather information details (ID and/or Name) of a application segment.
- [zpa_application_server](https://zscaler.github.io/zpacloud-ansible/modules/zpa_application_server_module.html) - Create/Update/Delete an Application Server.
- [zpa_application_server_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_application_server_facts_module.html) - Gather information details (ID and/or Name) of an application server.
- [zpa_ba_certificate_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_ba_certificate_facts_module.html) - Gather information details (ID and/or Name) of an browser access certificate.
- [zpa_cloud_connector_group_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_cloud_connector_group_facts_module.html) - Gather information details (ID and/or Name) of an cloud connector group.
- [zpa_customer_version_profile_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_customer_version_profile_facts_module.html) - Gather information details (ID and/or Name) of an customer version profile for use in app connector group resource in the `version_profile_id` parameter.
- [zpa_enrollment_cert_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_enrollment_cert_facts_module.html) - Gather information details (ID and/or Name) of an enrollment certificate for use when creating provisioning keys for connector groups or service edge groups.
- [zpa_idp_controller_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_idp_controller_facts_module.html) - Gather information details (ID and/or Name) of an identity provider (IdP) created in the ZPA tenant.
- [zpa_machine_group_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_machine_group_facts_module.html) - Gather information details (ID and/or Name) of an machine group for use in a policy access and/or forwarding rules.
- [zpa_policy_access_rule](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_access_rule_module.html) - Create/Update/Delete a policy access rule.
- [zpa_policy_access_rule_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_access_rule_facts_module.html) - Gather information details (ID and/or Name) of a policy access rule.
- [zpa_policy_timeout_rule](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_timeout_rule_module.html) - Create/Update/Delete a policy access timeout rule.
- [zpa_policy_timeout_rule_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_timeout_rule_facts_module.html) - Gather information details (ID and/or Name) of a policy access timeout rule.
- [zpa_policy_forwarding_rule](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_forwarding_rule_module.html) - Create/Update/Delete a policy access forwarding rule.
- [zpa_policy_forwarding_rule_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_forwarding_rule_facts_module.html) - Gather information details (ID and/or Name) of a policy access forwarding rule.
- [zpa_posture_profile_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_posture_profile_facts_module.html) - Gather information details (ID and/or Name) of a posture profile to use in a policy access, timeout or forwarding rules.
- [zpa_provisioning_key](https://zscaler.github.io/zpacloud-ansible/modules/zpa_provisioning_key_module.html) - Create/Update/Delete a provisioning key.
- [zpa_provisioning_key_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_provisioning_key_facts_module.html) - Gather information details (ID and/or Name) of a provisioning key.
- [zpa_saml_attribute_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_saml_attribute_facts_module.html) - Gather information details (ID and/or Name) of a saml attribute.
- [zpa_scim_attribute_header_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_scim_attribute_header_facts_module.html) - Gather information details (ID and/or Name) of a scim attribute header.
- [zpa_scim_group_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_scim_group_facts_module.html) - Gather information details (ID and/or Name) of a scim group.
- [zpa_segment_group](https://zscaler.github.io/zpacloud-ansible/modules/zpa_segment_group_module.html) - Create/Update/Delete a segment group.
- [zpa_segment_group_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_segment_group_facts_module.html) - Gather information details (ID and/or Name) of a segment group.
- [zpa_server_group](https://zscaler.github.io/zpacloud-ansible/modules/zpa_server_group_module.html) - Create/Update/Delete a segment group.
- [zpa_server_group_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_server_group_facts_module.html) - Gather information details (ID and/or Name) of a server group.
- [zpa_service_edge_group_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_service_edge_group_facts_module.html) - Gather information details (ID and/or Name) of a service edge group.
- [zpa_service_edge_group](https://zscaler.github.io/zpacloud-ansible/modules/zpa_service_edge_group_module.html) - Create/Update/Delete an service edge group.
- [zpa_trusted_network_facts](https://zscaler.github.io/zpacloud-ansible/modules/zpa_trusted_network_facts_module.html) - Gather information details (ID and/or Name) of a trusted network for use in a policy access and/or forwarding rules.
