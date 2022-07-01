
# xfwm4 themes HiDPI

### not working

Themes which include `.svg` files are not properly adjusted by the below. Affected is `default-4.4`, `default-4.6` and `default-4.8`.

### how to programatically increase size of `xfwm4` themes

This is pretty crude but gets the basics done with a minimum of fooling aorund. Touch ups will still be required on individual themes, especially with regards to lines that got excessively thickened.

* Uses [`ImageMagick`](https://imagemagick.org/)'s [`-sample](https://imagemagick.org/Usage/resize/#sample) to resize without any fancy interpolation

* It will descend into subdirectories (it is recursive)

* It will **overwrite** existing files so do this on a copy if you wish to retain originals

* On my underpowered computer, this operation takes a few minutes to run. Be patient.


In the terminal, `cd` into a directory containing themes you wish to make larger, then run:

```sh
find . -name "*.xpm" -o -name "*.png" | xargs -I @ magick @ -sample 175% @
```

does **not** work to use [`mogrify`](https://imagemagick.org/script/mogrify.php), because it makes a bluy image that fails at gtk color pickup. An example of how this doesn't work can be acheieved with:

```sh
#find . -name "*.xpm" -exec magick mogrify -resize 200% {} \;
```

### link all themes into user theme folder

This wil allow easy `pull` from git in case there is an update in 20 years.

`cd` into the directory containing the size you want

* the below will preceed all names with `200-`; omit or change per your preference


```sh
ls -1 | xargs -I @ ln -s $PWD/@ ~/.themes/200-@

```







