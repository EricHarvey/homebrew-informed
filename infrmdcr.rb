require_relative './lib/custom_download_strategy.rb'

class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/EricHarvey/homebrew-informed'
  url 'https://github.com/Informed/infrmdcr/releases/download/v0.3.0/v0.3.0.zip', :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version '0.3.0'
  sha256 'e173adc8fd74d0d49ecdf68877ca083ae76e3768df45d26f51c531bae768a7e2'
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
