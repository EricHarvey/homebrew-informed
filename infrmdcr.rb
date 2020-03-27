require_relative './lib/custom_download_strategy.rb'

class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/EricHarvey/homebrew-informed'
  url 'https://github.com/Informed/infrmdcr/releases/download/v0.1.2/v0.1.2.zip', :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version '0.1.2'
  sha256 '6ce4b55cd02e510984ace6cf38ce36384b7eeed40c6cd9f9513f61d3da56c261'
  head 'https://github.com/EricHarvey/homebrew-informed.git'

  depends_on {
    'openssl' => :build
    'crystal-lang' => :build
  }

  def install
    system 'make', 'install'
  end
end
