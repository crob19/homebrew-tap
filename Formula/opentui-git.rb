class OpentuiGit < Formula
  desc "Lazygit-style terminal UI git client built with OpenTUI, SolidJS, and Bun"
  homepage "https://github.com/crob19/opentui-git"
  version "0.1.2"
  license "MIT"

  on_arm do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.2/opentui-git-v0.1.2-darwin-arm64.tar.gz"
    sha256 "73e1e07b90def2cd6ecc40e4a840b960e15252d407fee9c5bc224dccd4c60bb2"
  end

  on_intel do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.2/opentui-git-v0.1.2-darwin-x64.tar.gz"
    sha256 "75df46cb63774e4ee1724cabfda648ffaf7d8318ecfd99c4bdf2915cc08f093b"
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
