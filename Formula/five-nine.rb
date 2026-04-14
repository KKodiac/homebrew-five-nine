class FiveNine < Formula
  desc "Claude service status TUI monitor"
  homepage "https://github.com/KKodiac/five-nine"
  version "0.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-aarch64-apple-darwin"
    sha256 "da97faf36f8ace6437d09874b2b485b3242a0dfce2d36387e19b7bc31532c454"
  else
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-x86_64-apple-darwin"
    sha256 "f78f9ebfcd80b9092ca4dfba34e83f420f8036491dce68923e03f00556c4be15"
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
