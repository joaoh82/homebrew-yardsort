# Generated from packaging/homebrew/yardsort.rb.in in https://github.com/joaoh82/yardsort by the
# release workflow. Please send changes there rather than editing this copy.
cask "yardsort" do
  version "0.8.0"
  sha256 "5c296ed371e6c0980645011a8e3b6cb2bcde843d31c8a0bc8e8a8ea1afe9652a"

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
