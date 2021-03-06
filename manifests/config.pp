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

  file { "/home/$username/.vim":
    ensure =>  directory,    
  }

  file { "/home/$username/.config":
    ensure => directory,
  }

  vcsrepo { "/home/$username/.config/puppet_managed":
    ensure  => latest,
    provider => git,
    source  =>  'https://github.com/Kabix1/Configs.git',
    user => "$username"
  }

  vcsrepo { "/home/$username/.vim/bundle/Vundle.vim":
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/VundleVim/Vundle.vim.git',
    user     => "$username"
  }

  vcsrepo { "/home/$username/.zsh/custom/plugins/zsh-syntax-highlighting":
    ensure   => latest,
    provider => git,
    source   => https://github.com/zsh-users/zsh-syntax-highlighting.git,
    user     => "$username"
  }

  exec { '/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"':
    cwd         => "/home/$username",
    creates     => "/home/$username/.oh-my-zsh"
  }

  each($files) |$conf| {
    file { "/home/$username/$conf":
      ensure => link,
      target => "/home/$username/.config/puppet_managed/$conf",
      force  => true
    }
  }

  exec { '/usr/bin/vim -c PluginInstall':
  }

  # exec { '/usr/bin/python3 /home/olle/.vim/bundle/youcompleteme/install.py'
}
