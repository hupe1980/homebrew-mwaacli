# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mwaacli < Formula
  desc "mwaacli is a CLI for interacting with MWAA"
  homepage "https://github.com/hupe1980/mwaacli"
  version "0.0.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.14/mwaacli_Darwin_x86_64.tar.gz"
      sha256 "c2c80e1645e28f9ea094425ffbb756b20a96c646779fac6b76bac0ece30966fb"

      def install
        bin.install "mwaacli"
        bash_completion.install "completions/mwaacli.bash" => "mwaacli"
        zsh_completion.install "completions/mwaacli.zsh" => "_mwaacli"
        fish_completion.install "completions/mwaacli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.14/mwaacli_Darwin_arm64.tar.gz"
      sha256 "7806d4257eea0a6313a7b334940b8d61c8b167b76a478e8d8e21c4c6011ac2ec"

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
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.14/mwaacli_Linux_x86_64.tar.gz"
        sha256 "a4e6f403b2dbfb9661502db3dd7e9dbfa0f8dab65192762811bb213ecba6cf12"

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
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.14/mwaacli_Linux_armv6.tar.gz"
        sha256 "d7420440de468a99d870e4ced026e50343b752e042640cca4595eaaa4a0cb7eb"

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
        url "https://github.com/hupe1980/mwaacli/releases/download/v0.0.14/mwaacli_Linux_arm64.tar.gz"
        sha256 "568a1ea891c0268140a5bd1ef95b416e075074efdff6a60a487ce01d88339174"

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
