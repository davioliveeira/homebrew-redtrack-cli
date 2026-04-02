class Redtrack < Formula
  desc "Terminal-first CLI + TUI for RedTrack"
  homepage "https://github.com/davioliveeira/redtrack-cli"
  head "https://github.com/davioliveeira/redtrack-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w"
    system "go", "build", *std_go_args(ldflags:), "."
  end

  test do
    output = shell_output("#{bin}/redtrack --help")
    assert_match "redtrack", output
  end
end
