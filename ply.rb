class Ply < Formula
  @version = "v0.0.4"

  desc "Dependency-less remote task runner"
  homepage "https://github.com/ebenoist/ply"
  url "https://github.com/ebenoist/ply/releases/download/#{@version}/binaries.tar.gz"
  sha256 "50b359619630bfbe1aca18e042cfe0db4af483fe96c029982925b8ea574d13d5"
  version @version

  def install
    bin.install "ply-darwin-amd64" => "ply"
  end

  test do
    system "ply -h"
  end
end
