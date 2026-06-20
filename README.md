# OBSCURED

<p><img src=".assets/preview-01.avif" align="center" width="100%"></p>

...

## Pack Collection

...

## Change Application Icon

```sh
address="https://github.com/olankens/obscured/raw/refs/heads/main/source/android-studio/android-studio.icns"
picture="$(mktemp -d)/$(basename "$address")"
curl -LA "mozilla/5.0" "$address" -o "$picture"
fileicon set "/Applications/Android Studio.app" "$picture"
```