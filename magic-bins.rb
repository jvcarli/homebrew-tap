class MagicBins < Formula
  # Magic (Bin)arie(s) for everyday use.
  # Formula containing personal shell scripts

  desc "Magic (Bin)arie(s) for everyday use."
  homepage "https://github.com/jvcarli/magic-bins/"
  url "https://github.com/jvcarli/magic-bins.git"
  version "0.1"
  sha256 ""
  license "MIT"

  depends_on "buku"
  depends_on "fzf"
  depends_on "tmux"
  depends_on "firefox"

  def install

    # See: https://stackoverflow.com/questions/46478540/how-to-create-homebrew-formula-with-only-scripts
    # move *.sh under /usr/local/bin/magic-bins/*
    bin.install Dir["magic-bins/*.sh"]

  end

  test do
    # Turn unnecesary off tests
    system "false"
  end
end
