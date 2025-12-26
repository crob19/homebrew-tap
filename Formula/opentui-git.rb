class OpentuiGit < Formula
  desc "Lazygit-style terminal UI git client built with OpenTUI, SolidJS, and Bun"
  homepage "https://github.com/crob19/opentui-git"
  version "0.1.4"
  license "MIT"

  on_arm do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.4/opentui-git-v0.1.4-darwin-arm64.tar.gz"
    sha256 "5245a6d40b8301fa3b5c96aaf91846409a845ec4759527c7f8fc74b57e73d74a"
  end

  on_intel do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.4/opentui-git-v0.1.4-darwin-x64.tar.gz"
    sha256 "01f823a55041b76a02cad7825e3af50862f7dfb3207730c702d94e3de91c9fed"
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
