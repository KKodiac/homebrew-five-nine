class FiveNine < Formula
  desc "Claude service status TUI monitor"
  homepage "https://github.com/KKodiac/five-nine"
  version "0.2.3"

  if Hardware::CPU.arm?
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-aarch64-apple-darwin"
    sha256 "322587fd9e051009a16756db528a00fbf5ba8eb3437dc841fe208e60722179f1"
  else
    url "https://github.com/KKodiac/five-nine/releases/download/v#{version}/five-nine-x86_64-apple-darwin"
    sha256 "a202027bdd1de1fdee81089b611686682af7b4a7c46632e6f6886f70006086a6"
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
