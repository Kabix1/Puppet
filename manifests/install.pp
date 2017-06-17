class setup::install inherits setup{

  Package {
    ensure =>  latest,
  }

  package { 'tmux':
  }

  package { 'vim':
  }

  package { 'zsh':
  }

  package { 'curl':
  }

  package { 'guake':
  }

  package { 'build-essential':
    ensure => latest,
  }

  package { 'cmake':
    ensure => latest,
  }

  package { 'python-dev':
    ensure => latest,
  }

  package { 'python3-dev':
    ensure => latest,
  }

}
