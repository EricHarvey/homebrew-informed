require_relative './lib/custom_download_strategy.rb'

class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/EricHarvey/homebrew-informed'
  url 'https://github.com/Informed/infrmdcr/releases/download/v0.1.3/v0.1.3.zip', :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version '0.1.3'
  sha256 'd41b1f6b7b156e2325cec4908874a5c5bd4a75e685f02a996e4a01c6e7d7ea07'
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
