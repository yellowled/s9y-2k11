# 2k11 – A new default theme for Serendipity

2k11 is supposed to become the new default theme for the [Serendipity (s9y) blog engine](http://s9y.org).

## Important

**Please note:** Following the release of [Serendipity 1.7](http://blog.s9y.org/archives/247-Serendipity-1.7-released.html), 2k11 development will be moved to the s9y [core repository](https://github.com/s9y/Serendipity). This means that as of today (2013-05-11), this repository is discontinued and will receive no further updates.

If you are still using a version from this repository in your blog, please switch to the 2k11 version bundled with s9y 1.7 after upgrading, e.g. switch from `2k11-dev` to `2k11` under “Manage Styles”. Note that this switch will **not** adopt your 2k11 theme options, so make sure to write them down before switching.

* * *

## Disclaimer

This is the development branch of 2k11. This is still subject to (sometimes experimental) changes. I do **not** recommend using it in a production environment.

### Testing

If you *do* want to test it, your blog needs to run at least s9y v1.6. Extract the downloaded archive. I recommend downloading a `.zip` or `.tar.gz` file from the [Tags section](https://github.com/yellowled/s9y-2k11/tags) rather than cloning the repo. Keep the folder name if you want to be able to test multiple versions or rename it to `2k11` to have just one version installed. Copy it to `/templates/` and activate it in the s9y backend. (Might need a reload in the frontend.)

**Note:** If you used Bulletproof or a similar template with a customizable navigation, the global navigation in 2k11 **will** overwrite your current navigation. Please write down your navigation's URLs and link texts *before* switching to 2k11.

### Reporting bugs

Please use the [GitHub issue tracker](https://github.com/yellowled/s9y-2k11/issues) or email to report bugs. Also make sure you include some kind of version number with your bug report -- a [tag](https://github.com/yellowled/s9y-2k11/tags) if you use a tagged version or the SHA hash of the commit if you use a forked/cloned GitHub version.

Please note that SHA hashes are no longer included in the name of the `.zip` or `.tar.gz` files if you're using the ZIP download button to get the latest version. You can get the SHA hash for any commit on the [commit overview](https://github.com/yellowled/s9y-2k11/commits/master) using the 'Copy SHA' button.

If you have a blog running said version, please also state your URL in your bug report.

## Features

2k11 is a responsive HTML5 template. It has a fluid grid layout which adapts to the visitor's screen resolution, even on smaller screens down to smartphones. 2k11 looks plain and simple by design, hoping it will appeal to as many users as possible.

### It is built using:

* [HTML5 Boilerplate](http://h5bp.com)
* [Modernizr](http://www.modernizr.com)
* [jQuery](http://jquery.com)
* *Optional:* [Google webfonts](http://www.google.com/webfonts)
* [Respond](https://github.com/scottjehl/Respond)
* [iOS Orientationchange Fix](https://github.com/scottjehl/iOS-Orientationchange-Fix)
* [FitVids.js](https://github.com/davatron5000/FitVids.js)
* [CSS Tricks small screen navigation](http://css-tricks.com/13303-convert-menu-to-dropdown/)
* [jQuery placeholder](https://github.com/mathiasbynens/jquery-placeholder)
* [Details-Polyfill](https://github.com/manuelbieh/Details-Polyfill)
* [AccessifyHTML5](https://github.com/yatil/accessifyhtml5.js)

### Layout options

2k11 supports three different layouts, activated by pushing sidebar plugins to the standard left/hidden/right sidebars in plugin management in the backend:

* 3 columns, left + right sidebars
* 2 columns, left sidebar only
* 2 columns, right sidebar only

If you leave *both* sidebars empty, you'll get a layout which looks like 2 columns, right sidebar only – just without a sidebar. Also, the 3-column layout will display both sidebars on one side in small resolutions, effectively turning it into a 2-column layout in those resolutions.

### Theme options

* **Date format:** Sets a date format used _globally_ in the theme, i.e. for entries, comments, trackbacks, static pages. Basically for anything controlled by the `.tpl` files provided by 2k11.
* **Header image:** Pick an image from the s9y media database (or leave empty to omit). This will be added as a banner image between header/search and navigation. It's a responsive image only displayed in screen resolutions higher than 600 pixels. Should be 1120 pixels wide to work properly.
* **Google webfont:** Pick one of five preselected webfonts or the 'none' option to use Helvetica/Arial. These webfonts are included via the Google webfonts API.
* **User stylesheet:** Includes an additional stylesheet. Note that this **must** be called `user.css` and you have to create it manually in your template directory. Also note that both this and the Google webfont option add an additional HTTP request which might cause slight performance issues.
* **Image styles:** Lets you choose how to style images in entries and static pages, basically any images from the media db that appear in the content area of the blog. Possible values: no border, simple border or shadow border. Implemented using a class on `#content`, so you could even overwrite `.plain-images` and/or `.fancy-images` in your `user.css`.
* **Comment references:** Includes a link to related comment to comments which are replies to another comment, so you can scroll to referenced comment on click.
* **Navigation:** Global navigation provided by s9y core. Switches to an (additionally added using JS) `select` as a pseudo dropdown menu on small screens. Automagically suppresses links if link text *or* URL is empty, also has an option to not emit the nav at all.

### user.css Generator

Since changing the (desktop) layout isn't *that* easy for CSS novices, I have built a basic generator: [2k11 user.css generator](http://yellowled.github.com).
