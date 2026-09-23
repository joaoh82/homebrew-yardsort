# Generated from packaging/homebrew/yardsort.rb.in in https://github.com/joaoh82/yardsort by the
# release workflow. Please send changes there rather than editing this copy.
cask "yardsort" do
  version "0.8.2"
  sha256 "4b33a3458eca2928efee4b4691901522faf0fb8524231238b8dc2bc0f29a6f1a"

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
