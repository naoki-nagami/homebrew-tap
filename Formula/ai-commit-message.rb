class AiCommitMessage < Formula
  desc "Generate git commit message from file changes using ChatGPT"
  homepage "https://github.com/n-ngm/tools"
  url "https://github.com/n-ngm/tools/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5f3509d3dd55d906c9c2bb146ed08ccf10a3eea8df88596d31aa5114d8b387be"
  license "MIT"

  def install
    bin.install "shell/ai-commit-message"
  end

  # `brew test ai-commit-message`
  test do
    assert_match "Usage", shell_output("#{bin}/ai-commit-message --help")
  end
end
