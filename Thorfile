module Vim
  class Config < Thor
    include Thor::Actions

    LINKS = {
      'vim'    => '~/.vim',
      'vimrc'  => '~/.vimrc',
      'gvimrc' => '~/.gvimrc'
    }

    desc "install", "Installs vim configuration files"
    def install
      LINKS.each do |target, link_name|
        run("ln -s #{File.expand_path(target)} #{link_name}")
      end
    end

    desc "uninstall", "Uninstalls vim configuration files"
    def uninstall
      LINKS.values.each { |link_name| run("unlink #{link_name}") }
    end
  end

  class Bundle < Thor
    include Thor::Actions

    desc "add GIT", "Adds a bundle"
    def add(git)
      run("git submodule add #{git} vim/bundle/#{git.split('/').last.sub(/\.git$/,'')}")
      run('git submodule init')
    end

    desc "update", "Updates all bundles"
    def update
      run('git submodule update')
    end
  end
end
