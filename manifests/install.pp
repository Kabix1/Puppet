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
  }

  package { 'cmake':
  }

  package { 'python-dev':
  }

  package { 'python3-dev':
  }

  package {'clang':
  }

  package {'python-pip':
  }

}
