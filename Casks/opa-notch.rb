cask "opa-notch" do
  version "0.4.0"
  sha256 "b5839841c0c4982f6f27ed6204b94b254c79b1f404dbdd276929e49c2102d656"

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
