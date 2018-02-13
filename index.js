const fs = require("fs")
const tachyonsBuildCss = require("tachyons-build-css")


// Input


const input = fs.readFileSync(
  "src/template.css",
  "utf8"
)



// Output


const minify = process.env.MINIFY === "t"


tachyonsBuildCss(input, {
  minify: minify,
  plugins: [ require("postcss-inherit") ]

}).then(result => {
  fs.writeFileSync(`dist/template${minify ? ".min" : ""}.css`, result.css)

})
