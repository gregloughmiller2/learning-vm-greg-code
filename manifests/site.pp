## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# Disable filebucket by default for all File resources:
File { backup => false }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

site {
    pasture_app { 'pasture_01':
      db_user                               => 'pasture',
      db_password                           => 'm00m00',
      nodes                                 => {
        Node['pasture-app-large.puppet.vm'] => Pasture_app::App['pasture_01'],
        Node['pasture-db.puppet.vm']  => Pasture_app::Db['pasture_01'],
      }
    }
}
node default {
  # This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }
}

node 'agent.puppet.vm' {
  notify { 'Hello Puppet! comes from the site.pp file on master': }
}

node 'cowsay.puppet.vm' {
  include  cowsay
}

node 'pasture.puppet.vm' {
  include motd
  class {  'pasture':
    default_character => 'cow',
  }
}

node 'pasture-dev.puppet.vm' {
    include pasture
}

node 'pasture-prod.puppet.vm' {
    class { 'pasture':
          default_character => 'elephant',
          sinatra_server => 'thin',
            }
}
#node 'pasture-db.puppet.vm' {
#    include pasture::db
#}
#
#node 'pasture-app.puppet.vm' {
#  class { 'pasture':
#    sinatra_server => 'thin',
#    db         => 'postgres://pasture:m00m00@pasture-db.puppet.vm/pasture',
#  }
#}
#node /^pasture-app/ {
#    include role::pasture_app
#}
#node /^pasture-db/ {
#    include role::pasture_db
#}


