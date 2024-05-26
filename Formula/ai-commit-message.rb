class AiCommitMessage < Formula
  desc "Generate git commit message from file changes using ChatGPT"
  homepage "https://github.com/n-ngm/tools"
  url "https://github.com/n-ngm/tools/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "ed80bf8c8ffd733e0641cce2e580d35ab7b422e1f48940447696965d1c0d45a0"
  license "MIT"

  def install
    bin.install "ai-commit-message/ai-commit-message"
  end

  # `brew test ai-commit-message`
  test do
    assert_match "Usage", shell_output("#{bin}/ai-commit-message --help")
  end
end
