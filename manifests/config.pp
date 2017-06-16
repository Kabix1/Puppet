class setup::config inherits setup {
  file { '/home/olle/.tmux.conf':
    ensure => file,
    source =>  'puppet:///modules/setup/.tmux.conf',
  }

  file { ['/home/olle/.vim', '/home/olle/.vim/vimrcs', '/home/olle/.vim/autoload']:
    ensure =>  directory,
  }

  file { '/home/olle/.vimrc':
    ensure => file,
    source => 'puppet:///modules/setup/.vimrc'
  }

  file { '/home/olle/.vim/vimrcs/basic.vim':
    ensure => file,
    source => 'puppet:///modules/setup/vimrcs/basic.vim'
  }

  file { '/home/olle/.vim/vimrcs/extended.vim':
    ensure => file,
    source => 'puppet:///modules/setup/vimrcs/extended.vim'
  }

  file { '/home/olle/.vim/vimrcs/filetypes.vim':
    ensure => file,
    source =>  'puppet:///modules/setup/vimrcs/filetypes.vim'
  }

  exec { '/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"':
    creates =>  '/home/olle/.oh-my-zsh'
  }
}
