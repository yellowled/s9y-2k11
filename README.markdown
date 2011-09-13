# 2k11 – A new default theme for Serendipity

2k11 is supposed to become the new default theme for the [Serendipity (s9y) blog engine](http://s9y.org).

## Disclaimer

At the time of writing, I do **not** recommend using 2k11 in a production enviroment. It's still work in progress, it will also require some work on the s9y core and possibly some plugins to work properly. Use at your own risk, if at all.

### Testing

If you _do_ want to test it (locally), your test blog needs to run at least s9y v1.6-beta, preferably a recent svn snapshot. To test it, simply extract the downloaded archive to `/templates/` and activate it in the s9y backend. Might need a reload in the frontend.

## Features

2k11 is a responsive HTML5 template. It has a fluid grid layout which adapts to the visitor's screen resolution, even on smaller screens down to smartphones. 2k11 looks plain and simple by design, hoping it will appeal to as many users as possible. It is built using the [HTML5 Boilerplate](http://h5bp.com), [Modernizr](http://www.modernizr.com) and [jQuery](http://jquery.com).

### Layout options

2k11 supports three different layouts, activated by pushing sidebar plugins to the standard left/hidden/right sidebars in plugin management in the backend:
    
* 3 columns, left + right sidebars
* 2 columns, left sidebar only
* 2 columns, right sidebar only

(If you leave _both_ sidebars empty, you'll get a layout which looks like 2 columns, right sidebar only – just without a sidebar.)

### Theme options

* **Date format:** Sets a date format used _globally_ in the theme, i.e. for entries, comments, trackbacks, static pages. Basically for anything controlled by the .tpl files provided by 2k11.
* **Header image:** Pick an image from the s9y media database (or leave empty to omit). This will be added as a banner img between header/search and navigation. It's a responsive images only displayed in screen resolutions higher than 600 pixels. Should be 1120 pixels wide to work properly.
* **Google webfont:** Pick one of five preselected webfonts or the 'none' option to use Helvetica/Arial. These webfonts are included via the Google webfonts API.
* **Navigation:** Global navigation provided by s9y core. Switches to an (additionally added using JS) `select` as a pseudo dropdown menu on small screens.

