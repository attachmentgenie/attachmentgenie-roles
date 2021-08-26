# attachmentgenie-roles

[![](https://img.shields.io/puppetforge/pdk-version/attachmentgenie/roles.svg?style=popout)](https://forge.puppetlabs.com/attachmentgenie/roles)
[![](https://img.shields.io/puppetforge/v/attachmentgenie/roles.svg?style=popout)](https://forge.puppetlabs.com/attachmentgenie/roles)
[![](https://img.shields.io/puppetforge/dt/attachmentgenie/roles.svg?style=popout)](https://forge.puppetlabs.com/attachmentgenie/roles)
[![](https://travis-ci.org/attachmentgenie/attachmentgenie-roles.svg?branch=master)](https://travis-ci.org/attachmentgenie/attachmentgenie-roles)
[![License](https://img.shields.io/github/license/attachmentgenie/attachmentgenie-roles?stype=popout)](https://github.com/attachmentgenie/attachmentgenie-roles/blob/master/LICENSE)

- [Description](#description)
- [Usage](#usage)
- [Reference](#reference)
- [Changelog](#changelog)
- [Limitations](#limitations)
- [Development](#development)

## Description

Collection of roles, works together with [attachmentgenie-profiles](https://github.com/attachmentgenie-profiles)

## Usage

All options and configuration can be done through interacting with the parameters
on the main example class.
These are now documented via [Puppet Strings](https://github.com/puppetlabs/puppet-strings)

You can view example usage in [REFERENCE](REFERENCE.md).

## Reference

See [REFERENCE](REFERENCE.md).

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

### Running tests

This project contains tests for both rspec-puppet and litmus to verify functionality. For detailed information on using these tools, please see their respective documentation.

#### Testing quickstart:

```
pdk bundle install
pdk bundle exec rake 'litmus:provision_list[puppet6]'
pdk bundle exec rake 'litmus:install_agent[puppet6]'
pdk bundle exec rake litmus:install_module
pdk bundle exec rake litmus:acceptance:parallel
pdk bundle exec rake litmus:tear_down
