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

  packet { 'cmake':
    ensure => latest,
  }

  packet { 'python-dev':
    ensure => latest,
  }

  packet { 'python3-dev':
    ensure => latest,
  }

}
