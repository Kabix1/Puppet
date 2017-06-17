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

  package { 'cmake':
  }

  package {'build-essential':
  }

  package {'clang':
  }

  package {'python-pip':
  }

  package {'python-lxml':
  }

}
