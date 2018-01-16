class profile::pasture::dev_users {
    user_accounts::ssh_user { 'bert':
          comment => 'Bert',
              key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCouVregqWnIcV73oRJbOR4BAkTTj/il8f/981X6RmT3muBr7RYMqE4Kn0PJ0kmVVHo8QL9vbJitlMF+lbRH769F5umuN8DYk/OVPPkKMAjORxxuq2eRlj9uhXd8XzxxW2Aeys8Z3CHK/8KX7EzJzImG2DhtkBLsWB25UYtOfwYlilyMInnpH3L8e/YG3dWoNq0dRNbGNkHxzFsz7wPSzBDjBczjBPvu2e7rXtPPdZirj73WKrmy6dO5QgvNt/pJWf8ISZ8e26ufK/jx2jmf37rZwU+GIviEhOdDEGLAR3qOIEgymD8FoHGPYHaIXIeCStH8iXdw/yzFuih3FKqw069',
    }
    user_accounts::ssh_user { 'ernie':
          comment => 'Ernie',
              key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCouVregqWnIcV73oRJbOR4BAkTTj/il8f/981X6RmT3muBr7RYMqE4Kn0PJ0kmVVHo8QL9vbJitlMF+lbRH769F5umuN8DYk/OVPPkKMAjORxxuq2eRlj9uhXd8XzxxW2Aeys8Z3CHK/8KX7EzJzImG2DhtkBLsWB25UYtOfwYlilyMInnpH3L8e/YG3dWoNq0dRNbGNkHxzFsz7wPSzBDjBczjBPvu2e7rXtPPdZirj73WKrmy6dO5QgvNt/pJWf8ISZ8e26ufK/jx2jmf37rZwU+GIviEhOdDEGLAR3qOIEgymD8FoHGPYHaIXIeCStH8iXdw/yzFuih3FKqw069',
    }
}
