class Nereid < Formula
  desc "Nereid"
  homepage "https://github.com/bnomei/nereid"
  version "0.1.2"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "40c27e95347a241fbe89e3ac49b942ca2d3754e4a5939308c209f625682a6af7",
    x86_64_apple_darwin: "fb1b9ed5ccc5ad5c990bd741dd8119f78b97af72f1892fa4cd70d8a70fe53968",
    aarch64_unknown_linux_musl: "574c4f2093edcdb18ee969a5890713c96d127e62db07f235abe6a9d0e86f588d",
    x86_64_unknown_linux_musl: "363494cc6e8d84d964e7e690b0411489ef169c1896d7cf5cc6bd31e87e3d1c77",
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
