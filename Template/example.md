### Markdown

It's possible to write your slides using Markdown. To enable Markdown, add the `data-markdown` attribute to your `<section>` elements and wrap the contents in a `<textarea data-template>` like the example below.

This is based on [data-markdown](https://gist.github.com/1343518) from [Paul Irish](https://github.com/paulirish) modified to use [marked](https://github.com/chjj/marked) to support [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown). Sensitive to indentation (avoid mixing tabs and spaces) and line breaks (avoid consecutive breaks).


```html
<section data-markdown>
	<textarea data-template>
		## Page title

		A paragraph with some text and a [link](http://hakim.se).
	</textarea>
</section>
```



#### External Markdown

You can write your content as a separate file and have reveal.js load it at runtime. Note the separator arguments which determine how slides are delimited in the external file: the `data-separator` attribute defines a regular expression for horizontal slides (defaults to `^\r?\n---\r?\n$`, a newline-bounded horizontal rule)  and `data-separator-vertical` defines vertical slides (disabled by default). The `data-separator-notes` attribute is a regular expression for specifying the beginning of the current slide's speaker notes (defaults to `note:`). The `data-charset` attribute is optional and specifies which charset to use when loading the external file.

When used locally, this feature requires that reveal.js [runs from a local web server](#full-setup).  The following example customises all available options:


```html
<section data-markdown="example.md"  
         data-separator="^\n\n\n"  
         data-separator-vertical="^\n\n"  
         data-separator-notes="^Note:"  
         data-charset="iso-8859-15">
</section>
```
