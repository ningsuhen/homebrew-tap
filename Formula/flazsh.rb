# Rendered by the release workflow: 0.1.0, v0.1.0 and the per-architecture sums.
class Flazsh < Formula
  desc "One Rust daemon for stock zsh: prompt, Git state, suggestions and history search"
  homepage "https://github.com/ningsuhen/flazsh"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ningsuhen/flazsh/releases/download/v0.1.0/flazsh-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "346800095ae6fa5b4aac2e14cffbff801e576d750853aad6b7c543c3664264fb"
    end
    on_intel do
      url "https://github.com/ningsuhen/flazsh/releases/download/v0.1.0/flazsh-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "fec7c2461262ebc7eda083c421714a73bd190fbcda9c41847d8750d565590975"
    end
  end

  def install
    bin.install "flazsh", "flazsh-ctl"
  end

  test do
    assert_predicate bin/"flazsh", :executable?
    assert_predicate bin/"flazsh-ctl", :executable?
  end
end
