require "formula"

HOMEBREW_HTTR_VERSION='v0.1.0'

class Stopho < Formula
  if Hardware.is_64_bit?
    url "https://github.com/kohei-kimura/stopho/releases/download/#{HOMEBREW_HTTR_VERSION}/stopho_darwin_386"
    sha256 "f1e4c572467e26d2a83d34c76fe40836108dc52664919464a17a7319f74faf2a"
  else
    url "https://github.com/kohei-kimura/stopho/releases/download/#{HOMEBREW_HTTR_VERSION}/stopho_darwin_amd64"
    sha256 "29ffbd86f7aaf9912230e12e3a3bf9e298f0d04c6d1fcfcabf6638e1f2670ef4"
  end
  homepage "https://github.com/kohei-kimura/stopho"

  version HOMEBREW_HTTR_VERSION
  head 'https://github.com/kohei-kimura/stopho.git', :branch => 'master'

  def install
    bin.install 'httr'
  end

end