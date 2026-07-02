<div align="center">
  <p><img src=".assets/icon.avif" align="center" width="120"></p>
  <h1>OBSCURED</h1>
</div>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="https://olankens.com">WEBSITE</a> ·
    <a href="https://ko-fi.com/olankens">FUNDING</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Curated dark-only icon pack built specifically for modern macOS, offering well-structured ICNS files with proper padding and formatting that match the refined visual style of contemporary Apple design.
  </div>&nbsp;</td></tr></tbody>
</table>

## PREVIEWS

<table><tbody><tr><td width="99999">
  <img src=".assets/preview-01.avif" align="center" width="99999">
</td></tr></tbody></table>

## FEATURES

<!-- START_BLOCK -->
<table><tbody><tr><td><a href="source/affinity/affinity.icns"><img src=".assets/thumbnail-affinity.avif" align="center" width="99999"></a></td><td><a href="source/air/air.icns"><img src=".assets/thumbnail-air.avif" align="center" width="99999"></a></td><td><a href="source/android-studio/android-studio.icns"><img src=".assets/thumbnail-android-studio.avif" align="center" width="99999"></a></td><td><a href="source/calibre/calibre.icns"><img src=".assets/thumbnail-calibre.avif" align="center" width="99999"></a></td><td><a href="source/capcut/capcut.icns"><img src=".assets/thumbnail-capcut.avif" align="center" width="99999"></a></td><td><a href="source/chromium/chromium.icns"><img src=".assets/thumbnail-chromium.avif" align="center" width="99999"></a></td><td><a href="source/clion/clion.icns"><img src=".assets/thumbnail-clion.avif" align="center" width="99999"></a></td></tr></tbody><tbody><tr><td><a href="source/comfyui/comfyui.icns"><img src=".assets/thumbnail-comfyui.avif" align="center" width="99999"></a></td><td><a href="source/conductor/conductor.icns"><img src=".assets/thumbnail-conductor.avif" align="center" width="99999"></a></td><td><a href="source/crossover/crossover.icns"><img src=".assets/thumbnail-crossover.avif" align="center" width="99999"></a></td><td><a href="source/datagrip/datagrip.icns"><img src=".assets/thumbnail-datagrip.avif" align="center" width="99999"></a></td><td><a href="source/davinci/davinci.icns"><img src=".assets/thumbnail-davinci.avif" align="center" width="99999"></a></td><td><a href="source/discord/discord.icns"><img src=".assets/thumbnail-discord.avif" align="center" width="99999"></a></td><td><a href="source/figma/figma.icns"><img src=".assets/thumbnail-figma.avif" align="center" width="99999"></a></td></tr></tbody><tbody><tr><td><a href="source/fork/fork.icns"><img src=".assets/thumbnail-fork.avif" align="center" width="99999"></a></td><td><a href="source/frame0/frame0.icns"><img src=".assets/thumbnail-frame0.avif" align="center" width="99999"></a></td><td><a href="source/goland/goland.icns"><img src=".assets/thumbnail-goland.avif" align="center" width="99999"></a></td><td><a href="source/hoppscotch/hoppscotch.icns"><img src=".assets/thumbnail-hoppscotch.avif" align="center" width="99999"></a></td><td><a href="source/intellij-idea/intellij-idea.icns"><img src=".assets/thumbnail-intellij-idea.avif" align="center" width="99999"></a></td><td><a href="source/jdownloader/jdownloader.icns"><img src=".assets/thumbnail-jdownloader.avif" align="center" width="99999"></a></td><td><a href="source/joal-desktop/joal-desktop.icns"><img src=".assets/thumbnail-joal-desktop.avif" align="center" width="99999"></a></td></tr></tbody><tbody><tr><td><a href="source/mpv/mpv.icns"><img src=".assets/thumbnail-mpv.avif" align="center" width="99999"></a></td><td><a href="source/netnewswire/netnewswire.icns"><img src=".assets/thumbnail-netnewswire.avif" align="center" width="99999"></a></td><td><a href="source/obs/obs.icns"><img src=".assets/thumbnail-obs.avif" align="center" width="99999"></a></td><td><a href="source/orca/orca.icns"><img src=".assets/thumbnail-orca.avif" align="center" width="99999"></a></td><td><a href="source/phpstorm/phpstorm.icns"><img src=".assets/thumbnail-phpstorm.avif" align="center" width="99999"></a></td><td><a href="source/pycharm/pycharm.icns"><img src=".assets/thumbnail-pycharm.avif" align="center" width="99999"></a></td><td><a href="source/recordly/recordly.icns"><img src=".assets/thumbnail-recordly.avif" align="center" width="99999"></a></td></tr></tbody><tbody><tr><td><a href="source/rider/rider.icns"><img src=".assets/thumbnail-rider.avif" align="center" width="99999"></a></td><td><a href="source/rubymine/rubymine.icns"><img src=".assets/thumbnail-rubymine.avif" align="center" width="99999"></a></td><td><a href="source/rustrover/rustrover.icns"><img src=".assets/thumbnail-rustrover.avif" align="center" width="99999"></a></td><td><a href="source/transmission/transmission.icns"><img src=".assets/thumbnail-transmission.avif" align="center" width="99999"></a></td><td><a href="source/webstorm/webstorm.icns"><img src=".assets/thumbnail-webstorm.avif" align="center" width="99999"></a></td></tr></tbody></table>
<!-- CEASE_BLOCK -->

## LEARNING

### CHANGE APPLICATION ICON

```sh
address="https://github.com/olankens/obscured/raw/refs/heads/main/source/android-studio/android-studio.icns"
picture="$(mktemp -d)/$(basename "$address")"
curl -LA "mozilla/5.0" "$address" -o "$picture"
fileicon set "/Applications/Android Studio.app" "$picture"
```
