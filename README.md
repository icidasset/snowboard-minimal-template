__A minimalistic template for [Snowboard](https://github.com/bukalapak/snowboard), a renderer for [API Blueprints](https://apiblueprint.org/).__  
_Built with the tachyons css library._

[🔬 Demo](https://icidasset.github.io/snowboard-minimal-template/)



## Usage

1. Copy the files from the `dist` directory here to your project
2. Reference the template when you use the `snowboard html -t template.html` command



## Customisable

The template styles are easy to customise:

- Style the `.default-font` class to change the default font
- Style the `.heading-font` class to change the heading font
- Style the `.accent` class to change the accent color (links, etc.)

And the code styles as well,  
just change the stylesheet that is used for `highlight.js` (located in the `head` element).



## Development

```shell
brew install node
brew install snowboard
brew install watchexec

npm install


# The following compiles the css file,
# copies the html and css to the `dist` directory,
# and prepares everything for the demo.

make


# Alternatively, you could do ...

make watch


# 🚀

open demo/demo.html
```
