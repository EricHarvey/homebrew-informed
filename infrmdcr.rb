require_relative './lib/custom_download_strategy.rb'

class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/EricHarvey/homebrew-informed'
  url 'https://github.com/Informed/infrmdcr/releases/download/v0.2.5/0.2.5.zip', :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version '0.2.5'
  sha256 'cea64dbee622ffa92523f2945af7f268230508058a9e42a406eba76084f23182'
  head 'https://github.com/EricHarvey/homebrew-informed.git'

  depends_on 'bdw-gc'
  depends_on 'libevent'
  depends_on 'llvm'
  depends_on 'libyaml'
  depends_on 'gmp'
  depends_on 'pcre'
  depends_on 'pkg-config'
  depends_on 'openssl'
  depends_on 'crystal-lang' => :build

  def install
    system 'make', 'build'
    bin.install 'bin/infrmdcr'
  end
end
