require "formula"

class GccArm < Formula
  homepage "https://launchpad.net/gcc-arm-embedded"
  url "https://launchpad.net/gcc-arm-embedded/4.8/4.8-2014-q1-update/+download/gcc-arm-none-eabi-4_8-2014q1-20140314-mac.tar.bz2"
  sha1 "b40c4127f641170f016b77ad423caf8dfd46faac"

  def install
    bin.install Dir['bin/*']
  end

  test do
    system "arm-none-eabi-gcc -v"
  end
end
