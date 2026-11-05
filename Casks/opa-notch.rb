cask "opa-notch" do
  version "0.3.1"
  sha256 "c1dfbbd6230d4f2a4277cced4738b2d0f45d4a8cd86643c518a9e23f90537b6f"

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
