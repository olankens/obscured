<div align="center">
  <p><img src=".assets/icon.png" align="center" width="128"></p>
  <h1>NIGHTWYN</h1>
</div>

<table><tr><td align="center" width="9999"><p>
  <a href="https://olankens.com">WEBSITE</a> ·
  <a href="https://ko-fi.com/olankens">FUNDING</a>
</p></td></tr></table>

<table><tr><td align="center" width="9999">&nbsp;<p>
  Obscure icon pack built for the latest macOS, Nightwyn won't transform your workflow or reinvent your desktop. What it will do is ship properly formatted ICNS files with correct spacing, making sure every icon in your dock looks crisp and balanced.
</p>&nbsp;</td></tr></table>

<table><tr><td align="center" width="99999"><p>
  <picture><img src=".assets/apple.svg" align="center" width="52"></picture>
  <picture><img src=".assets/bash.svg" align="center" width="52"></picture>
</p></td></tr></table>

### FEATURES

<!-- START_TABLE -->
<table>
  <tbody><tr>
    <td align="center" width="99999"><img src="source/air/air.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/android-studio/android-studio.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/calibre/calibre.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/chromium/chromium.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/clion/clion.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/comfyui/comfyui.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/datagrip/datagrip.png" align="center" width="100%"></td>
  </tr></tbody>
  <tbody><tr>
    <td align="center" width="99999"><img src="source/discord/discord.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/figma/figma.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/fork/fork.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/frame0/frame0.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/goland/goland.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/hoppscotch/hoppscotch.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/intellij-idea/intellij-idea.png" align="center" width="100%"></td>
  </tr></tbody>
  <tbody><tr>
    <td align="center" width="99999"><img src="source/jdownloader/jdownloader.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/joal-desktop/joal-desktop.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/masterduel/masterduel.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/netnewswire/netnewswire.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/phpstorm/phpstorm.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/pycharm/pycharm.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/rider/rider.png" align="center" width="100%"></td>
  </tr></tbody>
  <tbody><tr>
    <td align="center" width="99999"><img src="source/rubymine/rubymine.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/rustrover/rustrover.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/transmission/transmission.png" align="center" width="100%"></td>
    <td align="center" width="99999"><img src="source/webstorm/webstorm.png" align="center" width="100%"></td>
  </tr></tbody>
</table>
<!-- CEASE_TABLE -->

### LEARNING

#### Changing Application Icon

```sh
address="https://github.com/olankens/nightwyn/raw/refs/heads/main/source/android-studio/android-studio.icns"
picture="$(mktemp -d)/$(basename "$address")"
curl -LA "mozilla/5.0" "$address" -o "$picture"
fileicon set "/Applications/Android Studio.app" "$picture"
```
