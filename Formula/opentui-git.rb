class OpentuiGit < Formula
  desc "Lazygit-style terminal UI git client built with OpenTUI, SolidJS, and Bun"
  homepage "https://github.com/crob19/opentui-git"
  version "0.1.3"
  license "MIT"

  on_arm do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.3/opentui-git-v0.1.3-darwin-arm64.tar.gz"
    sha256 "6f5155e2a30c6180c9cce62dc74f583379a700a34c625bae5773ae68c3bfabc0"
  end

  on_intel do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.3/opentui-git-v0.1.3-darwin-x64.tar.gz"
    sha256 "9f3de02ce3d3d6ec89bc45277974031f025369c3c9860ffd11fee039a62dc213"
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
