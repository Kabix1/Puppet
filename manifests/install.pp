class setup::install inherits setup{

  Package {
    ensure =>  latest,
  }
  
  $packages = ["tmux", "vim", "zsh", "curl", "guake", "build-essential", "cmake", "python-dev", "python3-dev", "clang", "python-pip"]

  each($packages) |$pack| {
    package { "$pack":
    }
  }

  /* package { "powerline-status": */
  /*   provider => "pip, */

}
