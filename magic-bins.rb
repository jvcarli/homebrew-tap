class MagicBins < Formula
  desc "Magic (Bin)arie(s) for everyday use"
  homepage "https://github.com/jvcarli/magic-bins"
  url "https://github.com/jvcarli/magic-bins/archive/refs/tags/0.1.tar.gz"
  sha256 "de7082c089705d8281da10d326ef61e75b468b0395d876dd9970344ace7d99da"
  license "GPL-3.0-only"

  depends_on "buku"
  depends_on "fzf"
  depends_on "tmux"

  def install
    # See: https://stackoverflow.com/questions/46478540/how-to-create-homebrew-formula-with-only-scripts
    # remove .sh extension from script
    bin.install "bksrx.sh" => "bksrx"
  end

  test do
    # Turn off unnecessary tests
    system "false"
  end
end
