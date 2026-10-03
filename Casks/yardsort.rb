# Generated from packaging/homebrew/yardsort.rb.in in https://github.com/joaoh82/yardsort by the
# release workflow. Please send changes there rather than editing this copy.
cask "yardsort" do
  version "0.18.0"
  sha256 "d058e112a6b7992595cbac3af4be7539b02485f4e9f9a3df8ad490196b46ab73"

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
  # macOS only, with no minimum: the app runs on anything Homebrew still does, and `brew style`
  # rejects a named minimum at or below Homebrew's oldest release as redundant (and refused
  # `:catalina` outright once support for it ended, #90). Same stanza group as auto_updates,
  # so no blank line between them (Cask/StanzaGrouping).
  depends_on :macos

  app "Yardsort.app"
  # The command-line client ships inside the app, signed with it; Homebrew links it onto PATH.
  binary "#{appdir}/Yardsort.app/Contents/MacOS/ys"

  zap trash: [
    "~/Library/Application Support/dev.yardsort.app",
    "~/Library/Caches/dev.yardsort.app",
    "~/Library/Preferences/dev.yardsort.app.plist",
    "~/Library/Saved Application State/dev.yardsort.app.savedState",
    "~/Library/WebKit/dev.yardsort.app",
  ]
end
