# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mwaacli < Formula
  desc "mwaacli is a CLI for interacting with MWAA"
  homepage "https://github.com/hupe1980/mwaacli"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.3/mwaacli_Darwin_x86_64.tar.gz"
      sha256 "b175b000a63d9d4af33dc878abdc84b27ff2be1d9b1c50b28d15625f67e306b3"

      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.3/mwaacli_Darwin_arm64.tar.gz"
      sha256 "4d4859a86fd486adf24a88ea2262cc739cba69c53e9d84e6a1d20b30adb4f556"

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
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.3/mwaacli_Linux_x86_64.tar.gz"
        sha256 "a90fdca57d928ff10d6599d1f85f4c44830debbe732e0abf073aef7499073c88"

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
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.3/mwaacli_Linux_armv6.tar.gz"
        sha256 "73e48b5a50d0b3d6de6f0002ff25956a4c4c88cccf8c62ce5aaa5e81bb2d47f2"

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
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.3/mwaacli_Linux_arm64.tar.gz"
        sha256 "ada41d805dc16cbcc1d3cd6d28dd57fb3f9f00ce675d9b8faac1ba14287fa2a7"

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
