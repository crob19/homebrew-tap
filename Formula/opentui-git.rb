class OpentuiGit < Formula
  desc "Lazygit-style terminal UI git client built with OpenTUI, SolidJS, and Bun"
  homepage "https://github.com/crob19/opentui-git"
  version "0.1.1"
  license "MIT"

  on_arm do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.1/opentui-git-v0.1.1-darwin-arm64.tar.gz"
    sha256 "0f05dc3c5be1f56b44ef96cbe743456b78ac3b1b4168b61dba865edce8712a82"
  end

  on_intel do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.1/opentui-git-v0.1.1-darwin-x64.tar.gz"
    sha256 "b8592e641f2d7aa28119e07b0c8aede6ebd2145865b78c0ffd9083375252fcba"
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
