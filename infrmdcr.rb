require_relative './lib/custom_download_strategy.rb'

class Infrmdcr < Formula
  desc 'A general purpose utility for Informed internal use'
  homepage 'https://github.com/EricHarvey/homebrew-informed'
  url 'https://github.com/EricHarvey/homebrew-informed/archive/v0.11.0.tar.gz', :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version '0.1.0'
  sha256 'cc72e330b53f684945f0ea1f9396266804aee1bb'
  head 'https://github.com/EricHarvey/homebrew-informed.git'

  depends_on 'crystal-lang' => :build

  def install
    `./build.sh`
  end
end
