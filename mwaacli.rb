# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mwaacli < Formula
  desc "mwaacli is a CLI for interacting with MWAA"
  homepage "https://github.com/hupe1980/mwaacli"
  version "0.0.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.24/mwaacli_Darwin_x86_64.tar.gz"
      sha256 "0f081046d497bbf6fb357c9a69cfcd22638bb5ddfac44ac3b122db6c254dd2de"

      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.24/mwaacli_Darwin_arm64.tar.gz"
      sha256 "a6dfeef3b789169cb6fd69a36989f8beefcaad68409ffb446a0f5d80171e35e6"

      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.24/mwaacli_Linux_x86_64.tar.gz"
      sha256 "9b9fe55075468a6b0e0f8b78d74840a0cd44026100f47e2242dd802068a09c65"
      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.24/mwaacli_Linux_armv6.tar.gz"
      sha256 "3f56a3a309618e3a4ab3f38d8d4c3be3c8a3a05e9d2633dc26789b2ea7c3f565"
      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.24/mwaacli_Linux_arm64.tar.gz"
      sha256 "e9c1d00787f6f2b4bc6edf4bffe72719f8e1996a95ec75c52eb215448d0c0c0f"
      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
  end

  test do
    system "#{bin}/mwaacli -v"
  end
end
