class OpentuiGit < Formula
  desc "Lazygit-style terminal UI git client built with OpenTUI, SolidJS, and Bun"
  homepage "https://github.com/crob19/opentui-git"
  version "0.1.7"
  license "MIT"

  on_arm do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.7/opentui-git-v0.1.7-darwin-arm64.tar.gz"
    sha256 "1330052e1c1fd67b95976dc4b6de0b00250171bb08245df4377253bf2fff50f6"
  end

  on_intel do
    url "https://github.com/crob19/opentui-git/releases/download/v0.1.7/opentui-git-v0.1.7-darwin-x64.tar.gz"
    sha256 "188c3e7bb7818a09ac42964228c7b5d6c4275cdb2b683fa1eb3511499a753381"
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
