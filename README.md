jmxsh-chef
==========
Installs and configures jmxsh command line tool.

Requirements
============
Java

## Attributes
This cookbook will install jmxsh by default.

### default.rb

 * `node['jmxsh']['install_path']` (default: `/usr/local/bin`): Path to install jmxsh and associated jars
