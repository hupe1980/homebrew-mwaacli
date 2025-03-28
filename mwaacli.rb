# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mwaacli < Formula
  desc "mwaacli is a CLI for interacting with MWAA"
  homepage "https://github.com/hupe1980/mwaacli"
  version "0.0.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.21/mwaacli_Darwin_x86_64.tar.gz"
      sha256 "d763c046833a3db1aafbf287721e11da9097f379bf94b0e8e9e5351aab7f44e3"

      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.21/mwaacli_Darwin_arm64.tar.gz"
      sha256 "faa86742f9c18fa41a20e09cc71c6875c2839a331f0235f83793bdb242fb4d04"

      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.21/mwaacli_Linux_x86_64.tar.gz"
        sha256 "d6e787d4b6c57d1b307e92d24a933def8ca3761292d72e2971fc64d2ab1e59ca"

        def install
          bin.install "mwaacli"
          bash_completion.install "completions/mwaacli.bash" => "mwaacli"
          zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
          fish_completion.install "completions/mwaacli.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.21/mwaacli_Linux_armv6.tar.gz"
        sha256 "6e2cfb2d3f95e3ec8d5b9bda62ca2e974e42c393040ba15e32fed05cc073b2c5"

        def install
          bin.install "mwaacli"
          bash_completion.install "completions/mwaacli.bash" => "mwaacli"
          zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
          fish_completion.install "completions/mwaacli.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.21/mwaacli_Linux_arm64.tar.gz"
        sha256 "969753eae3b54b7bc557bb0b9b855b907bd747d5702130894c1640651c217b5d"

        def install
          bin.install "mwaacli"
          bash_completion.install "completions/mwaacli.bash" => "mwaacli"
          zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
          fish_completion.install "completions/mwaacli.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/mwaacli -v"
  end
end
