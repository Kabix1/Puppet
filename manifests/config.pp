class setup::config inherits setup {
  $username = "olle"

  File {
    owner  => $username,
    group  => $username,
  }

  Exec {
    user        => "$username",
    environment =>  ["HOME=/home/$username"],
  }

  $files = [".gitconfig", ".tmux.conf", ".vimrc", ".zshrc", ".vim/vimrcs"]

  file { '/home/olle/.vim':
    ensure =>  directory,    
  }

  file { '/home/olle/.config/puppet_managed':
    ensure  => directory,
    recurse => true,
    source  =>  'puppet:///modules/setup/configs'
  }
  
  each($files) |$conf| {
    file { "/home/$username/$conf":
      ensure => link,
      target => "/home/$username/.config/puppet_managed/$conf",
      force  => true
    }
  }

  vcsrepo { '/home/olle/.vim/bundle/Vundle.vim':
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/VundleVim/Vundle.vim.git',
    user     => 'olle'
  }

  exec { '/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"':
    cwd         => "/home/olle/",
    creates     => '/home/olle/.oh-my-zsh'
  }
  # exec { '/usr/bin/python3 /home/olle/.vim/bundle/youcompleteme/install.py'
}
