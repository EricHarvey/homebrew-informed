class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/EricHarvey/homebrew-informed/archive/v0.11.0.tar.gz'
  version '0.1.0'
  sha256 'cc72e330b53f684945f0ea1f9396266804aee1bb'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang' => :build

  def install
    `./build.sh`
  end
end
