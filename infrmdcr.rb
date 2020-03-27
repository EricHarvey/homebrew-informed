require_relative './lib/custom_download_strategy.rb'

class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/EricHarvey/homebrew-informed'
  url 'https://github.com/Informed/infrmdcr/releases/download/0.1.0/v0.1.0.zip', :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version '0.1.0'
  sha256 '489be71685ff139837778d16f3e32598a5d4614170b3716346031005f9ad1f58'
  head 'https://github.com/EricHarvey/homebrew-informed.git'

  depends_on 'crystal-lang' => :build

  def install
    `./build.sh`
  end
end
