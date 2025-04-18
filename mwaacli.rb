# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mwaacli < Formula
  desc "mwaacli is a CLI for interacting with MWAA"
  homepage "https://github.com/hupe1980/mwaacli"
  version "0.0.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.23/mwaacli_Darwin_x86_64.tar.gz"
      sha256 "9c7dddae5022eb251263007062636b5880fe0d56162658cb09aeb51618afd41d"

      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.23/mwaacli_Darwin_arm64.tar.gz"
      sha256 "87077966c73f1a24c426c107aaeece48602362a7d5b29b0294ff3bdf66e43f69"

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
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.23/mwaacli_Linux_x86_64.tar.gz"
        sha256 "13abadeae287f608a69c08d4183783344b00ddac2d11162cb71f79a9519704a1"

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
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.23/mwaacli_Linux_armv6.tar.gz"
        sha256 "c8519c3833c202ccaab6b1faf6e913d4a24725fa8b9fe66cab85cd5ad5a9c6eb"

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
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.23/mwaacli_Linux_arm64.tar.gz"
        sha256 "3332d4d577c99e78f7b0284a788a1a951bdb344200436daef4d4b31ba444500b"

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
