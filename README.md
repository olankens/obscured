# OBSCURED

<p><img src=".assets/preview-01.avif" align="center" width="100%"></p>

...

## Pack Collection

<!-- START_BLOCK -->
<p><a href="source/air/air.avif"><img src=".assets/thumbnail-air.avif" align="center" width="14.2857142857%"></a><a href="source/android-studio/android-studio.avif"><img src=".assets/thumbnail-android-studio.avif" align="center" width="14.2857142857%"></a><a href="source/calibre/calibre.avif"><img src=".assets/thumbnail-calibre.avif" align="center" width="14.2857142857%"></a><a href="source/chromium/chromium.avif"><img src=".assets/thumbnail-chromium.avif" align="center" width="14.2857142857%"></a><a href="source/clion/clion.avif"><img src=".assets/thumbnail-clion.avif" align="center" width="14.2857142857%"></a><a href="source/comfyui/comfyui.avif"><img src=".assets/thumbnail-comfyui.avif" align="center" width="14.2857142857%"></a><a href="source/datagrip/datagrip.avif"><img src=".assets/thumbnail-datagrip.avif" align="center" width="14.2857142857%"></a><a href="source/discord/discord.avif"><img src=".assets/thumbnail-discord.avif" align="center" width="14.2857142857%"></a><a href="source/figma/figma.avif"><img src=".assets/thumbnail-figma.avif" align="center" width="14.2857142857%"></a><a href="source/fork/fork.avif"><img src=".assets/thumbnail-fork.avif" align="center" width="14.2857142857%"></a><a href="source/frame0/frame0.avif"><img src=".assets/thumbnail-frame0.avif" align="center" width="14.2857142857%"></a><a href="source/goland/goland.avif"><img src=".assets/thumbnail-goland.avif" align="center" width="14.2857142857%"></a><a href="source/hoppscotch/hoppscotch.avif"><img src=".assets/thumbnail-hoppscotch.avif" align="center" width="14.2857142857%"></a><a href="source/intellij-idea/intellij-idea.avif"><img src=".assets/thumbnail-intellij-idea.avif" align="center" width="14.2857142857%"></a><a href="source/jdownloader/jdownloader.avif"><img src=".assets/thumbnail-jdownloader.avif" align="center" width="14.2857142857%"></a><a href="source/joal-desktop/joal-desktop.avif"><img src=".assets/thumbnail-joal-desktop.avif" align="center" width="14.2857142857%"></a><a href="source/netnewswire/netnewswire.avif"><img src=".assets/thumbnail-netnewswire.avif" align="center" width="14.2857142857%"></a><a href="source/phpstorm/phpstorm.avif"><img src=".assets/thumbnail-phpstorm.avif" align="center" width="14.2857142857%"></a><a href="source/pycharm/pycharm.avif"><img src=".assets/thumbnail-pycharm.avif" align="center" width="14.2857142857%"></a><a href="source/rider/rider.avif"><img src=".assets/thumbnail-rider.avif" align="center" width="14.2857142857%"></a><a href="source/rubymine/rubymine.avif"><img src=".assets/thumbnail-rubymine.avif" align="center" width="14.2857142857%"></a><a href="source/rustrover/rustrover.avif"><img src=".assets/thumbnail-rustrover.avif" width="14.2857142857%"></a><a href="source/transmission/transmission.avif"><img src=".assets/thumbnail-transmission.avif" width="14.2857142857%"></a><a href="source/webstorm/webstorm.avif"><img src=".assets/thumbnail-webstorm.avif" width="14.2857142857%"></a></p>
<!-- CEASE_BLOCK -->

## Change Application Icon

```sh
address="https://github.com/olankens/obscured/raw/refs/heads/main/source/android-studio/android-studio.icns"
picture="$(mktemp -d)/$(basename "$address")"
curl -LA "mozilla/5.0" "$address" -o "$picture"
fileicon set "/Applications/Android Studio.app" "$picture"
```
