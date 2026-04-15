class FiveNine < Formula
  desc "Claude service status TUI monitor"
  homepage "https://github.com/KKodiac/five-nine"
  version "0.2.6"

  if Hardware::CPU.arm?
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-aarch64-apple-darwin"
    sha256 "8758d0f116d7f05e736fa884579bb83e4f349b8217dbcdc203ecf980e0cf5654"
  else
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-x86_64-apple-darwin"
    sha256 "c9b6aa7cd1e9742eb9cd5b41aa00792926aa3c5a25300236287db14d64ace8a7"
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
