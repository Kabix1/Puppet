class setup::config inherits setup {
  file { '/home/olle/.tmux.conf':
    ensure => file,    
    owner => olle,
    group => olle,
    source =>  'puppet:///modules/setup/.tmux.conf',
  }

  file { ['/home/olle/.vim', '/home/olle/.vim/vimrcs', '/home/olle/.vim/autoload']:
    ensure =>  directory,    
    owner => olle,
    group => olle,
  }

  file { '/home/olle/.vimrc':
    ensure => file,    
    owner => olle,
    group => olle,
    source => 'puppet:///modules/setup/.vimrc'
  }

  file { '/home/olle/.vim/vimrcs/basic.vim':
    ensure => file,    
    owner => olle,
    group => olle,
    source => 'puppet:///modules/setup/vimrcs/basic.vim'
  }

  file { '/home/olle/.vim/vimrcs/extended.vim':
    ensure => file,    
    owner => olle,
    group => olle,
    source => 'puppet:///modules/setup/vimrcs/extended.vim'
  }

  file { '/home/olle/.vim/vimrcs/filetypes.vim':
    ensure => file,    
    owner => olle,
    group => olle,
    source =>  'puppet:///modules/setup/vimrcs/filetypes.vim'
  }

  file { '/home/olle/.vim/vimrcs/plugins_config.vim':
    ensure => file,    
    owner => olle,
    group => olle,
    source =>  'puppet:///modules/setup/vimrcs/plugins_config.vim'
  }

  file { '/home/olle/.vim/vimrcs/my_configs.vim':
    ensure => file,    
    owner => olle,
    group => olle,
    source =>  'puppet:///modules/setup/vimrcs/my_configs.vim'
  }

  vcsrepo { '/home/olle/.vim/bundle/Vundle.vim':
    ensure => latest,
    provider => git,
    source => 'https://github.com/VundleVim/Vundle.vim.git'
  }

  exec { '/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"':
    creates =>  '/home/olle/.oh-my-zsh'
  }

  file { '/home/olle/.zshrc':
    ensure => file,    
    owner => olle,
    group => olle,
    source => 'puppet:///modules/setup/.zshrc'
  }

}
