cask "opa-notch" do
  version "0.3.0"
  sha256 "fa980c727e75c796ba48c276fa40c60e2e406333f6415e2518bce74f904b3268"

  url "https://github.com/609-RESEARCH/opa.notch/releases/download/v#{version}/opa.notch.dmg"
  name "opa.notch"
  desc "Your day and your reminders in the MacBook notch"
  homepage "https://github.com/609-RESEARCH/opa.notch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "opa.notch.app"

  uninstall quit: "app.opa.notch"

  zap trash: [
    "~/Library/Application Scripts/app.opa.notch",
    "~/Library/Containers/app.opa.notch",
  ]

  caveats <<~EOS
    opa.notch isn't notarized yet. On first launch, approve it in
    System Settings > Privacy & Security > Open Anyway.
  EOS
end
