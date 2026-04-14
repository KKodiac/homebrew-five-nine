class FiveNine < Formula
  desc "Claude service status TUI monitor"
  homepage "https://github.com/KKodiac/five-nine"
  version "0.2.1"

  if Hardware::CPU.arm?
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-aarch64-apple-darwin"
    sha256 "c53f364c10eae1327708710ac5bbc24e552d6117e038c10b5eb229b963158a14"
  else
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-x86_64-apple-darwin"
    sha256 "eea75a0b5880bcac8258a79134692ea1b993293e28b7707895f3fc3ca8baf061"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "five-nine-aarch64-apple-darwin" => "five-nine"
    else
      bin.install "five-nine-x86_64-apple-darwin" => "five-nine"
    end
  end

  test do
    assert_predicate bin/"five-nine", :exist?
  end
end
