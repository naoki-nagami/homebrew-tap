class AiCommitMessage < Formula
  desc "Generate git commit message from file changes using ChatGPT"
  homepage "https://github.com/n-ngm/tools"
  url "https://github.com/n-ngm/tools/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b4daf44a28ad2d97c5a04c2c571aebe3eb25903bf9fea82c776ce768938ac03b"
  license "MIT"

  def install
    bin.install "shell/ai-commit-message"
  end

  # `brew test ai-commit-message`
  test do
    assert_match "Usage", shell_output("#{bin}/ai-commit-message --help")
  end
end
