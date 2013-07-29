reproducible-analysis
=====================

All about reproducible analysis using the R stack (R/RStudio/Markdown/Latex/Knitr/Beamer/Slidy/Shiny/etc.)

* [Beamer Gallery](http://deic.uab.es/~iblanes/beamer_gallery/individual/Goettingen-default-default.html)
  * theme
  Goettingen (plain, sidebar)
  * colour sidebartab (plain, highlighted sidebar)
  * fonts professionalfonts

Interactive charts on html5 slides using rCharts and slidify from [gist](https://gist.github.com/3340d43d8c09ffcd53e3.git), see [thread](https://github.com/ramnathv/slidify/issues/244).  This requires the dev versions of slidify and slidify libraries:

```
require(devtools)
install_github(c("slidify", "slidifyLibraries"), "ramnathv", ref = "dev")
```
