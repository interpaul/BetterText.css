# bettertext.css

[![npm version](https://badge.fury.io/js/bettertext.css.svg)](http://badge.fury.io/js/bettertext.css)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fpaulradzkov%2Fbettertext.css.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fpaulradzkov%2Fbettertext.css?ref=badge_shield)

Improved typography styles for naked HTML (without any classnames) and Markdown-generated content. [Demo page](http://paulradzkov.github.io/bettertext.css/)

## Install

`npm install bettertext.css --save-dev`

`bower install bettertext.css --save`

or use compiled version from CDN

* `https://unpkg.com/bettertext.css@latest/bettertext.css`  
* `https://unpkg.com/bettertext.css@latest/bettertext.min.css`  
* `https://unpkg.com/bettertext.css@latest/bettertext.min.css.map`


## Usage in HTML

Insert bettertext.css after [normalize.css](https://github.com/necolas/normalize.css) and after your `@font-face` declaration.

Or include bettertext.less into your project styles.

## Default values

Component has global mixin with settings named `.bettertext-settings();` and global variable `bettertext` which contains all the code.

Default settings:

```less
.bettertext-settings() {

    //settings
    @fz: 16px;                         // default font-size in px
    @rythm: 24px;                      // vertical rythm = line-height in pixels
    @fz-small: 12px;                   // smaller font-size (px)
    @linel: 50rem;                     // max-width for text (any css value)
    @font-body: sans-serif;            // body
    @font-headers: sans-serif;         // headers
    @font-code: monospace, monospace;  // code (duplication is intentional)
    @scale1: 1.125;                    // header size multiplier for small screens
    @scale2: 1.250;                    // header size multiplier for large screens

    // margin for body, articles and sections (any css value)
    @structure-margin: ~"calc(24px + 3vw)" 5vw;

    // breakpoint to switch from 'mobile' to 'desktop'
    @bettertext-breakpoint: ~"(min-width: 768px)";

    //calculations
    // ...
}
```

## Usage in LESS

Running with default parameters:

```less
@import (less) "node_modules/bettertext.css/bettertext.less";
```

Setting up basic parameters:

```less
@import (less) "node_modules/bettertext.css/bettertext.less";

.bettertext-settings() {

    //settings
    @fz: 16px;                          // default font-size
    @font-body: 'Arial', sans-serif;    // body
    @font-headers: 'Georgia', serif;    // headers

    @bettertext-breakpoint: ~"(min-width: 50em)"; // large screens starts from that value

}
```

Deep customization: you able to redefine any formula in calculation section inside `bettertext-settings` mixin.

```less
@import (less) "node_modules/bettertext.css/bettertext.less";

.bettertext-settings() {

    //settings
    @fz: 16px;                          // default font-size
    @font-body: 'Arial', sans-serif;    // body
    @font-headers: 'Georgia', serif;    // headers

    @bettertext-breakpoint: ~"(min-width: 50em)"; // large screens starts from that value

    //redefining header margin-top
    @h1-mt: 3em;
    @h2-mt: 2.5em;
    @h3-mt: 2em;
    @h4-mt: 1.5em;
    @h5-mt: unit((2 * @lh * @fz / @h5-fz), em);
    @h6-mt: unit((2 * @lh * @fz / @h6-fz), em);
}
```

## Customizing without LESS

If you are not using LESS on your project you can fork and customize bettertext.css on [codepen](http://codepen.io/paulradzkov/pen/Mygdrb): adjust settings with your parameters, test with your HTML or Markdown, press "View Compiled" and grab compiled CSS.


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fpaulradzkov%2Fbettertext.css.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fpaulradzkov%2Fbettertext.css?ref=badge_large)