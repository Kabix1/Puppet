class setup::install inherits setup {
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

  package { 'Guake':
    ensure =>  latest,
  }
}
