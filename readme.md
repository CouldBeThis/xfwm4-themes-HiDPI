
# xfwm4 themes HiDPI

### how to programatically increase size of `xfwm4` themes

* Uses [`ImageMagick`](https://imagemagick.org/)'s [`mogrify`](https://imagemagick.org/script/mogrify.php)

* It will descend into subdirectories (it is recursive)

* It will **overwrite** existing files so do this on a copy if you wish to retain originals

In the terminal, `cd` into a directory containing themes you wish to make larger, then run:

```sh
find . -name "*.xpm" -exec magick mogrify -resize 200% {} \;
```

### link all themes into user theme folder

This wil allow easy `pull` from git in case there is an update in 20 years.

`cd` into the directory containing the size you want

* the below will preceed all names with `200-`; omit or change per your preference


```sh
ls -1 | xargs -I @ ln -s $PWD/@ ~/.themes/200-@

```








