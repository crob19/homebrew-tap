class OpentuiGit < Formula
  desc "Lazygit-style terminal UI git client built with OpenTUI, SolidJS, and Bun"
  homepage "https://github.com/crob19/opentui-git"
  version "0.1.6"
  license "MIT"

  on_arm do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.6/opentui-git-v0.1.6-darwin-arm64.tar.gz"
    sha256 "a2f0b39984ecae2904381dae75de490c5466ea907c23d6ef8841ed1a886fd07a"
  end

  on_intel do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.6/opentui-git-v0.1.6-darwin-x64.tar.gz"
    sha256 "ccd60bd8e58eb27d514e733d0d7dbf8450d6d65f48d2bd3eb6192c73339724c8"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "opentui-git-darwin-arm64" => "opentui-git"
    else
      bin.install "opentui-git-darwin-x64" => "opentui-git"
    end
  end

  test do
    assert_predicate bin/"opentui-git", :exist?
    assert_predicate bin/"opentui-git", :executable?
  end
end
