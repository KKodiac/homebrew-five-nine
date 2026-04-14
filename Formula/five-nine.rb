class FiveNine < Formula
  desc "Claude service status TUI monitor"
  homepage "https://github.com/KKodiac/five-nine"
  version "0.2.2"

  if Hardware::CPU.arm?
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-aarch64-apple-darwin"
    sha256 "5d62a417f1649cd94d09dfff76c475fd82c6259d5b54a7eb3ab7cabf8581c334"
  else
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-x86_64-apple-darwin"
    sha256 "d2bed5221c69905c687f7509807b1b52d95237c22194649279fd7ad5cbcd54a6"
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
