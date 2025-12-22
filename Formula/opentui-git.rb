class OpentuiGit < Formula
  desc "Lazygit-style terminal UI git client built with OpenTUI, SolidJS, and Bun"
  homepage "https://github.com/crob19/opentui-git"
  version "0.1.2"
  license "MIT"

  on_arm do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.2/opentui-git-v0.1.2-darwin-arm64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  on_intel do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.2/opentui-git-v0.1.2-darwin-x64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
