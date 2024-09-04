[![Release](https://github.com/zscaler/zpacloud-playbooks/actions/workflows/release.yml/badge.svg)](https://github.com/zscaler/zpacloud-playbooks/actions/workflows/release.yml)
[![Ansible Lint](https://github.com/zscaler/zpacloud-playbooks/actions/workflows/ansible-test-lint.yml/badge.svg?branch=master)](https://github.com/zscaler/zpacloud-playbooks/actions/workflows/ansible-test-lint.yml)
[![License](https://img.shields.io/github/license/zscaler/zpacloud-ansible?color=blue)](https://github.com/zscaler/zpacloud-ansible/v2/blob/master/LICENSE)
[![Zscaler Community](https://img.shields.io/badge/zscaler-community-blue)](https://community.zscaler.com/)
## Zscaler Support

-> **Disclaimer:** Please refer to our [General Support Statement](https://zscaler.github.io/zpacloud-ansible/support.html) before proceeding with the use of this collection. You can also refer to our [troubleshooting guide](https://zscaler.github.io/zpacloud-ansible/troubleshooting.html) for guidance on typical problems.

# Zscaler Private Access - Ansible Playbooks

Example Ansible playbooks using the Zscaler Private Access
[Ansible Collection](https://github.com/zscaler/zpacloud-ansible), and what you'll need to get started writing your own. We try to add interesting things to this repository over time based on customer questions, so check back from time to time.

- Free software: MIT License
- [Documentation](https://zscaler.github.io/zpacloud-ansible)
- [Repository](https://github.com/zscaler/zpacloud-ansible)
- [Example Playbooks](https://github.com/zscaler/zpacloud-playbooks)

## Tested Ansible Versions

This collection is tested with the most current Ansible releases.  Ansible versions
before 2.15 are **not supported**.

## Python Version

The minimum python version for this collection is python `3.9`.

## Getting Started

### Installing Ansible

First, you'll need to install Ansible on the machine that will execute your playbooks (called the control node). The control node can be as simple as a laptop, and can be running any Unix-like OS (Linux, BSD, macOS).

You'll want to generally follow the
[Ansible documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation_module.html#installing-the-control-node)
for installing Ansible on your machine, but here are quick instructions for popular choices:

#### macOS 10.15

Install from Pip (Python package manager):

```shell
pip3 install --user ansible
export PATH=$PATH:$HOME/Library/Python/3.9/bin
```

#### CentOS

Install from [EPEL](https://fedoraproject.org/wiki/EPEL):

```shell
sudo yum install epel-release
sudo yum install ansible
```

#### Ubuntu

Install from the Ansible PPA:

```shell
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

You'll want to permanently modify the PATH in your shell's config file as well.

## ZPA Ansible Collection Module Installation

Install this collection using the Ansible Galaxy CLI:

```shell
ansible-galaxy collection install zscaler.zpacloud
```

You can also include it in a `requirements.yml` file and install it via `ansible-galaxy collection install -r requirements.yml`, using the format:

```yaml
  collections:
    - zscaler.zpacloud
```

### Clone this repository, install ZPA Collection

Once you're done with installing Ansible, clone this repo, and install the ZPA collection from Ansible Galaxy as well as the Python modules it depends on:


```shell
git clone https://github.com/zscaler/zpacloud-playbooks.git
cd ansible-playbooks/
ansible-galaxy collection install -r collections/requirements.yml
pip3 install --user -r requirements.txt
```

## Customize Connection Parameters

### Using Credential File
```sh
$ ansible-playbook main.yml -e @creds.yml
```

The credential file must be in `yaml` format:
```yml
  client_id: "your_client_id"
  client_secret: "your_client_secret"
  customer_id: "your_customer_id"
  cloud: "PRODUCTION"
```

### Using Environment Variables - Linux and MacOS
```sh
  export ZPA_CLIENT_ID="your_client_id"
  export ZPA_CLIENT_SECRET="your_client_secret"
  export ZPA_CUSTOMER_ID="your_customer_id"
  export ZPA_CLOUD="PRODUCTION"
```

## Sample Playbooks

You can use these playbooks as a base by cloning this repository. Each of them is documented with how to run them via
`ansible-playbook` and their customization options.

## Included content

- [zpa_app_connector_groups](https://zscaler.github.io/zpacloud-ansible/modules/zpa_app_connector_groups_module.html) - Create/Update/Delete an app connector group.
- [zpa_app_connector_groups_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_app_connector_groups_info_module.html) - Gather information details (ID and/or Name) of a app connector group.
- [zpa_application_segment](https://zscaler.github.io/zpacloud-ansible/modules/zpa_application_segment_module.html) - Create/Update/Delete an application segment.
- [zpa_application_segment_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_application_segment_info_module.html) - Gather information details (ID and/or Name) of a application segment.
- [zpa_application_server](https://zscaler.github.io/zpacloud-ansible/modules/zpa_application_server_module.html) - Create/Update/Delete an Application Server.
- [zpa_application_server_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_application_server_info_module.html) - Gather information details (ID and/or Name) of an application server.
- [zpa_ba_certificate_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_ba_certificate_info_module.html) - Gather information details (ID and/or Name) of an browser access certificate.
- [zpa_cloud_connector_group_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_cloud_connector_group_info_module.html) - Gather information details (ID and/or Name) of an cloud connector group.
- [zpa_enrollment_cert_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_enrollment_cert_info_module.html) - Gather information details (ID and/or Name) of an enrollment certificate for use when creating provisioning keys for connector groups or service edge groups.
- [zpa_idp_controller_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_idp_controller_info_module.html) - Gather information details (ID and/or Name) of an identity provider (IdP) created in the ZPA tenant.
- [zpa_machine_group_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_machine_group_info_module.html) - Gather information details (ID and/or Name) of an machine group for use in a policy access and/or forwarding rules.
- [zpa_policy_access_rule](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_access_rule_module.html) - Create/Update/Delete a policy access rule.
- [zpa_policy_access_rule_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_access_rule_info_module.html) - Gather information details (ID and/or Name) of a policy access rule.
- [zpa_policy_access_timeout_rule](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_access_timeout_rule_module.html) - Create/Update/Delete a policy access timeout rule.
- [zpa_policy_timeout_rule_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_access_timeout_rule_info_module.html) - Gather information details (ID and/or Name) of a policy access timeout rule.
- [zpa_policy_forwarding_rule](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_access_forwarding_rule_info_module.html) - Create/Update/Delete a policy access forwarding rule.
- [zpa_policy_forwarding_rule_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_policy_forwarding_rule_info_module.html) - Gather information details (ID and/or Name) of a policy access forwarding rule.
- [zpa_posture_profile_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_posture_profile_info_module.html) - Gather information details (ID and/or Name) of a posture profile to use in a policy access, timeout or forwarding rules.
- [zpa_provisioning_key](https://zscaler.github.io/zpacloud-ansible/modules/zpa_provisioning_key_module.html) - Create/Update/Delete a provisioning key.
- [zpa_provisioning_key_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_provisioning_key_info_module.html) - Gather information details (ID and/or Name) of a provisioning key.
- [zpa_saml_attribute_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_saml_attribute_info_module.html) - Gather information details (ID and/or Name) of a saml attribute.
- [zpa_scim_attribute_header_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_scim_attribute_header_info_module.html) - Gather information details (ID and/or Name) of a scim attribute header.
- [zpa_scim_group_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_scim_group_info_module.html) - Gather information details (ID and/or Name) of a scim group.
- [zpa_segment_group](https://zscaler.github.io/zpacloud-ansible/modules/zpa_segment_group_module.html) - Create/Update/Delete a segment group.
- [zpa_segment_group_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_segment_group_info_module.html) - Gather information details (ID and/or Name) of a segment group.
- [zpa_server_group](https://zscaler.github.io/zpacloud-ansible/modules/zpa_server_group_module.html) - Create/Update/Delete a segment group.
- [zpa_server_group_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_server_group_info_module.html) - Gather information details (ID and/or Name) of a server group.
- [zpa_service_edge_group_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_service_edge_groups_info_module.html) - Gather information details (ID and/or Name) of a service edge group.
- [zpa_service_edge_group](https://zscaler.github.io/zpacloud-ansible/modules/zpa_service_edge_groups_module.html) - Create/Update/Delete an service edge group.
- [zpa_trusted_network_info](https://zscaler.github.io/zpacloud-ansible/modules/zpa_trusted_networks_info_module.html) - Gather information details (ID and/or Name) of a trusted network for use in a policy access and/or forwarding rules.

## MIT License

Copyright (c) 2023 [Zscaler](https://github.com/zscaler)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
