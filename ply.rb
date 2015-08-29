class Ply < Formula
  desc "Dependency-less remote task runner"
  homepage "https://github.com/ebenoist/ply"
  url "https://github.com/ebenoist/ply/archive/v0.0.2.tar.gz"
  sha256 "ee4a4b7ea8b89cf3852cbf2593e2f49dbbdeb743930a7d526bc497a28a0d4709"
  skip_clean "bin"

  def install
    system "mv dist/ply-osx.v0.0.2 dist/ply"
    bin.install "dist/ply"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ply`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
