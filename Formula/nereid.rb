class Nereid < Formula
  desc "Nereid"
  homepage "https://github.com/bnomei/nereid"
  version "0.1.1"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "2522eea4ad3b76d73374fa02c7529f8f73011b839330d1ffd4fa829840f7e268",
    x86_64_apple_darwin: "03330e0af587eb2e5fe5d3ee5a87aac0c3c17d813d9ffd69138f2758e9af111b",
    aarch64_unknown_linux_musl: "9f5959c30f2c8580b509b2b0ba1495693196891df499bf125869a92f84506cb2",
    x86_64_unknown_linux_musl: "ad23dab349d2cbff86fabf7e0b014be41d2b222affe6e5a5bafa70e3d169f523",
  }

  on_macos do
    on_arm do
      url "https://github.com/bnomei/nereid/releases/download/v#{version}/nereid-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 checksums[:aarch64_apple_darwin]
    end
    on_intel do
      url "https://github.com/bnomei/nereid/releases/download/v#{version}/nereid-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 checksums[:x86_64_apple_darwin]
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bnomei/nereid/releases/download/v#{version}/nereid-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 checksums[:aarch64_unknown_linux_musl]
    end
    on_intel do
      url "https://github.com/bnomei/nereid/releases/download/v#{version}/nereid-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 checksums[:x86_64_unknown_linux_musl]
    end
  end

  def install
    bin.install "nereid"
  end

  test do
    assert_match "nereid", shell_output("#{bin}/nereid --help")
  end
end
