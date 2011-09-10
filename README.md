# Art direction plugin for Nesta

Art directed blogs (or "blogazines") use a different design on every
page. It's easy to implement with Nesta, but easier still if you install
this plugin.

It adds a `page_design` helper method that you can use to serve a
different stylesheet for each page on your site. Update your site's
layout template to call the helper when serving your stylesheet:

    TODO

You can specify the name of a default stylesheet to use on pages that
don't specify their own design. If you don't specify a default the
plugin assumes that you want to render a stylesheet called 'master.css'.

    TODO

Then create one stylesheet for each unique design, and drop it into your
`views` folder (e.g. design-1.sass or trees.scss).

Then add some metadata to the top of each page that should use your design:

    Design: trees

You can share common styles between designs using Sass's ability to import
common other Sass files. For example, at the top of `trees.sass` you
could write:

    @import "master"

    // Your styles go here...
