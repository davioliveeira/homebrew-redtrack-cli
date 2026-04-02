class Redtrack < Formula
  desc "Terminal-first CLI + TUI for RedTrack.io"
  homepage "https://github.com/davioliveeira/redtrack-cli"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davioliveeira/redtrack-cli/releases/download/v0.1.0/redtrack_0.1.0_darwin_arm64.tar.gz"
      sha256 "cd1bf4187311cef9dfaef4dbf6d0551bdae63644477648abb6b958ca797873ea"
    else
      url "https://github.com/davioliveeira/redtrack-cli/releases/download/v0.1.0/redtrack_0.1.0_darwin_amd64.tar.gz"
      sha256 "ba831c06efc20102aceae2ae0dd019931ae94b4cfa866e49a6a7498c240ca2e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/davioliveeira/redtrack-cli/releases/download/v0.1.0/redtrack_0.1.0_linux_arm64.tar.gz"
      sha256 "1795865dafd03fc1e295b5c33a8a6583299e992fbe39cdb7e31564169c3d73dd"
    else
      url "https://github.com/davioliveeira/redtrack-cli/releases/download/v0.1.0/redtrack_0.1.0_linux_amd64.tar.gz"
      sha256 "9822d2a6255a97c5a433dd5cd69646a65406c14289107806447e4b2841bdab91"
    end
  end

  def install
    bin.install "redtrack"
  end

  test do
    output = shell_output("#{bin}/redtrack --help")
    assert_match "redtrack", output
  end
end
