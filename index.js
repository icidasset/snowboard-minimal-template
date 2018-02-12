const fs = require("fs")
const tachyonsBuildCss = require("tachyons-build-css")


// Input


const input = fs.readFileSync(
  "src/template.css",
  "utf8"
)



// Output


tachyonsBuildCss(input, {
  plugins: [
    require("postcss-inherit")
  ]

}).then(result => {
  fs.writeFileSync("dist/template.css", result.css)

})
