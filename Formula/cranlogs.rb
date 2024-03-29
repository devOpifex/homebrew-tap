# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cranlogs < Formula
  desc ""
  homepage ""
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/devOpifex/cranlogs/releases/download/v0.0.1/cranlogs_Darwin_x86_64.tar.gz"
      sha256 "7eff9200ec3e8ece7680b3daaa5d5b0f5b1e81f3a4e5df71b29c607150cf1663"

      def install
        bin.install "cranlogs"
        bash_completion.install "completions/cranlogs.bash" => "cranlogs"
        zsh_completion.install "completions/cranlogs.zsh" => "_cranlogs"
        fish_completion.install "completions/cranlogs.fish"
        man1.install "manpages/cranlogs.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/devOpifex/cranlogs/releases/download/v0.0.1/cranlogs_Darwin_arm64.tar.gz"
      sha256 "d3dd62631f08b8b9bf2b9e1443fe6b13ac097bce461b7b8f8b25c8d622404290"

      def install
        bin.install "cranlogs"
        bash_completion.install "completions/cranlogs.bash" => "cranlogs"
        zsh_completion.install "completions/cranlogs.zsh" => "_cranlogs"
        fish_completion.install "completions/cranlogs.fish"
        man1.install "manpages/cranlogs.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/devOpifex/cranlogs/releases/download/v0.0.1/cranlogs_Linux_x86_64.tar.gz"
      sha256 "370f2a9722d1599400147894c9a75406440c187a471ef25aff9c9fdaa34833c7"

      def install
        bin.install "cranlogs"
        bash_completion.install "completions/cranlogs.bash" => "cranlogs"
        zsh_completion.install "completions/cranlogs.zsh" => "_cranlogs"
        fish_completion.install "completions/cranlogs.fish"
        man1.install "manpages/cranlogs.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/devOpifex/cranlogs/releases/download/v0.0.1/cranlogs_Linux_arm64.tar.gz"
      sha256 "523e74ddc0fd2d5d37a4b2b1567ab7226805557b5095e9c6b500ae806c328f27"

      def install
        bin.install "cranlogs"
        bash_completion.install "completions/cranlogs.bash" => "cranlogs"
        zsh_completion.install "completions/cranlogs.zsh" => "_cranlogs"
        fish_completion.install "completions/cranlogs.fish"
        man1.install "manpages/cranlogs.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/devOpifex/cranlogs/releases/download/v0.0.1/cranlogs_Linux_armv7.tar.gz"
      sha256 "652ace385d0217049ac1a1c1252414e496ce776e75b90e0865de7e4b0b717c70"

      def install
        bin.install "cranlogs"
        bash_completion.install "completions/cranlogs.bash" => "cranlogs"
        zsh_completion.install "completions/cranlogs.zsh" => "_cranlogs"
        fish_completion.install "completions/cranlogs.fish"
        man1.install "manpages/cranlogs.1.gz"
      end
    end
  end

  test do
    system "#{bin}/cranlogs -v"
  end
end
