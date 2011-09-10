# Art direction plugin for Nesta

Art directed blogs (or "blogazines") use a different design on every
page (the [PeepCode blog][] is a good example). It's easy to implement
with Nesta, but easier still if you install this plugin.

[PeepCode blog]: http://blog.peepcode.com/archives

It adds a `page_design` helper method that you can use to serve a
different stylesheet for each page on your site. Update your site's
layout template to call the helper when serving your stylesheet:

    %link(href="/css/#{page_design}.css" media="screen" rel="stylesheet")

You can specify the name of a default stylesheet to use on pages that
don't specify their own design. If you don't specify a default the
plugin assumes that you want to render a stylesheet called 'master.css'.

    %link(href="/css/#{page_design('application')}.css" media="screen" rel="stylesheet")

Then create one stylesheet for each unique design, and drop it into your
`views` folder (so you might have `views/design-1.sass` or
`views/trees.scss`).

Then add some metadata to the top of each page inside `content/pages`
that should use one of your hand crafted designs. For example:

    Design: trees
    Date: 10 Sep 2011
    Categories: blog/nature

    # Deciduous woodland

    Your blog post starts here...

You can share common styles between designs using Sass's ability to import
common other Sass files. For example, at the top of `trees.sass` you
could write:

    @import "master"

    // Styles specific to the trees design go here...
