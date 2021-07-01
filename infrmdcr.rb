require_relative './lib/custom_download_strategy.rb'

class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/EricHarvey/homebrew-informed'
  url 'https://github.com/Informed/infrmdcr/releases/download/v0.2.7/v0.2.7.zip', :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version '0.2.7-patch-1'
  sha256 'bf94d92b04ce043b2a7ae6435205b01cba3341e1e2eeed9af0ef0ad0120cff93'
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
