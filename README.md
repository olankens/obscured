<div align="center">
  <p><img src=".assets/icon.avif" align="center" width="128"></p>
  <h1><code>OBSCURED</code></h1>
</div>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="https://olankens.com">WEBSITE</a> ·
    <a href="https://ko-fi.com/olankens">FUNDING</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Curated dark-only icon pack built specifically for modern macOS, offering well-structured ICNS files with proper padding and formatting that match the refined visual style of contemporary Apple design.
  </div>&nbsp;</td></tr></tbody>
  <tbody><tr><td align="center" width="99999">
    <a href="https://www.apple.com/os/macos"><img src=".assets/apple.svg" alt="apple" align="center" width="56"></a>
    <picture><img src=".assets/divider.gif" align="center" height="40" width="1"/></picture>
    <a href="https://wikipedia.org/wiki/Bash_(Unix_shell)"><img src=".assets/bash.svg" alt="bash" align="center" width="56"></a>
  </td></tr></tbody>
</table>

## PREVIEWS

<table><tbody><tr><td width="99999">
  <img src=".assets/preview-01.avif" align="center" width="99999">
</td></tr></tbody></table>

## FEATURES

<!-- START_BLOCK -->
<table><tbody><tr><td align="center" width="99999"><a href="source/affinity/affinity.icns"><img src="source/affinity/affinity.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/android-studio/android-studio.icns"><img src="source/android-studio/android-studio.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/calibre/calibre.icns"><img src="source/calibre/calibre.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/chromium/chromium.icns"><img src="source/chromium/chromium.png" align="center" width="56"></a></td></tr></tbody><tbody><tr><td align="center" width="99999"><a href="source/clion/clion.icns"><img src="source/clion/clion.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/comfyui/comfyui.icns"><img src="source/comfyui/comfyui.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/datagrip/datagrip.icns"><img src="source/datagrip/datagrip.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/davinci/davinci.icns"><img src="source/davinci/davinci.png" align="center" width="56"></a></td></tr></tbody><tbody><tr><td align="center" width="99999"><a href="source/discord/discord.icns"><img src="source/discord/discord.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/figma/figma.icns"><img src="source/figma/figma.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/fork/fork.icns"><img src="source/fork/fork.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/frame0/frame0.icns"><img src="source/frame0/frame0.png" align="center" width="56"></a></td></tr></tbody><tbody><tr><td align="center" width="99999"><a href="source/gamehub/gamehub.icns"><img src="source/gamehub/gamehub.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/goland/goland.icns"><img src="source/goland/goland.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/goose/goose.icns"><img src="source/goose/goose.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/intellij-idea/intellij-idea.icns"><img src="source/intellij-idea/intellij-idea.png" align="center" width="56"></a></td></tr></tbody><tbody><tr><td align="center" width="99999"><a href="source/jdownloader/jdownloader.icns"><img src="source/jdownloader/jdownloader.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/notion/notion.icns"><img src="source/notion/notion.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/obs/obs.icns"><img src="source/obs/obs.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/orca/orca.icns"><img src="source/orca/orca.png" align="center" width="56"></a></td></tr></tbody><tbody><tr><td align="center" width="99999"><a href="source/phpstorm/phpstorm.icns"><img src="source/phpstorm/phpstorm.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/postman/postman.icns"><img src="source/postman/postman.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/pycharm/pycharm.icns"><img src="source/pycharm/pycharm.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/rubymine/rubymine.icns"><img src="source/rubymine/rubymine.png" align="center" width="56"></a></td></tr></tbody><tbody><tr><td align="center" width="99999"><a href="source/rustrover/rustrover.icns"><img src="source/rustrover/rustrover.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/transmission/transmission.icns"><img src="source/transmission/transmission.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/utm/utm.icns"><img src="source/utm/utm.png" align="center" width="56"></a></td><td align="center" width="99999"><a href="source/webstorm/webstorm.icns"><img src="source/webstorm/webstorm.png" align="center" width="56"></a></td></tr></tbody></table>
<!-- CEASE_BLOCK -->

## LEARNING

### CHANGE APPLICATION ICON

```sh
address="https://github.com/olankens/obscured/raw/refs/heads/main/source/android-studio/android-studio.icns"
picture="$(mktemp -d)/$(basename "$address")"
curl -LA "mozilla/5.0" "$address" -o "$picture"
fileicon set "/Applications/Android Studio.app" "$picture"
```
