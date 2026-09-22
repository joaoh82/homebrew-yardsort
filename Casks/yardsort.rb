# Generated from packaging/homebrew/yardsort.rb.in in https://github.com/joaoh82/yardsort by the
# release workflow. Please send changes there rather than editing this copy.
cask "yardsort" do
  version "0.7.0"
  sha256 "c4dfb59a667861293b85338c8e390fd2bc12a86f20306570a75a929d79408af9"

  url "https://github.com/joaoh82/yardsort/releases/download/v#{version}/Yardsort_#{version}_universal.dmg"
  name "Yardsort"
  desc "Run AI coding agents in parallel, each in its own git worktree"
  homepage "https://github.com/joaoh82/yardsort"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (signed, on request), so `brew upgrade` leaves it alone by default.
  auto_updates true
  depends_on macos: :catalina

  app "Yardsort.app"

  zap trash: [
    "~/Library/Application Support/dev.yardsort.app",
    "~/Library/Caches/dev.yardsort.app",
    "~/Library/Preferences/dev.yardsort.app.plist",
    "~/Library/Saved Application State/dev.yardsort.app.savedState",
    "~/Library/WebKit/dev.yardsort.app",
  ]
end
