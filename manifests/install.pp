class setup::install inherits setup{


  package { 'tmux':
    ensure =>  latest,
  }

  package { 'vim':
    ensure =>  latest,
  }

  package { 'zsh':
    ensure =>  latest,
  }

  package { 'curl':
    ensure =>  latest,
  }

  package { 'guake':
    ensure =>  latest,
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
