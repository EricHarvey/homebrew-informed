require_relative './lib/custom_download_strategy.rb'

class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/EricHarvey/homebrew-informed'
  url 'https://github.com/Informed/infrmdcr/releases/download/v0.2.1/v0.2.1.zip', :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version '0.2.1'
  sha256 '20dbcdaace811e7af76357902657ffeabaf0d563210595c8cc33ff80dbe99d77'
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
    bin.install 'infrmdcr'
  end
end
