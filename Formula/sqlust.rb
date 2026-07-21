class Sqlust < Formula
  desc "Fast, safe, terminal-native PostgreSQL explorer"
  homepage "https://github.com/GuzzoLM/SQLust"
  url "https://github.com/GuzzoLM/SQLust/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2696539c9d1b7dc1f4ac97e4014185ebc1af27cdd387f922ae0abfafa3e429f7"
  license "MIT"

  depends_on "rust" => :build
  depends_on "libpq"

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "SQLust", shell_output("#{bin}/sqlust --help")
  end
end
