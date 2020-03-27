require_relative './lib/custom_download_strategy.rb'

class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/EricHarvey/homebrew-informed'
  url 'https://github.com/Informed/infrmdcr/releases/download/0.1.1/v0.1.1.zip', :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version '0.1.0'
  sha256 '4fdc83d8063ed38797a4cfeb65734c713ecc30228724338edc7fc84175eaf668'
  head 'https://github.com/EricHarvey/homebrew-informed.git'

  depends_on 'crystal-lang' => :build

  def install
    `./build.sh`
    bin.install './infrmdcr'
  end
end
