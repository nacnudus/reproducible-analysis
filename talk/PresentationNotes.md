reproducible-analysis
=====================

Reproducible analysis using the R stack (R/RStudio/Markdown/Latex/Knitr/Beamer/Slidy/Shiny/etc.)

Define objective
Use entertaining examples
Think of what your audience knows (excel, BO, CAS)
Flatter them (we do this stuff every day, we need a car like a rally driver)
Impress them (professors write the software, forecast is better than you are)
Let the examples do the impressing, not your opinions
Follow LCFD -- compare with Excel, BO
Make problem look tedious in Excel, BO, easy in R
Use recent Stackoverflow question -- developer responded!
Use random first slide, then explain later.

Contributors
------------
* `forecast`: Rob Hyndman, professor of statistics at Monash University, Melbourne
* `knitr`: Yihui Xie, fourth-year statistics PhD at Iowa State University
* `ggplot2` & `plyr`: Hadley Wickham, associate professor of statistics at Rice University

Outline
-------
The Problem - show a blank slide and let the mouse do the work.
In our job we move the mouse a lot, but we've got these great labour-saving devices called computers, so it would be really good if we could make the computer use the mouse for us.

Wait.

The problem here is that the mouse can't follow a set of written instructions.  It has to wait for you to move it, and while it's waiting, the computer isn't doing anything.  The computer is resting while you figure out what to do with the mouse.  The computer is using YOU as a labour-saving device.

---
## Written instructions.

Computer programs are simply text files that know how to read other text files.  So you can keep data in one text file, and a set of instructions for what to do with that data in another text file.  Then you hand control to a computer program (which is really just lots of clever text files).  The program reads the instructions, which say, read the data in the text file, mangle it, and spew it out.  That's all programming is.

Advantages:
* you have an automatic record of what you did. The instructions describe it.
* you can write comments right beside the instructions, explaining what you think you did.  So if you write `x + 4` as the instruction, and `Add five fatal crashes`, then someone can tell there's a mistake.  So you're using a computer to do your job for you, to remember what your job is, and to point out your mistakes.
* there are very clever tools available to manage how your work changes over time.  Version control.  Version control in excel is saving a copy as "-version2".  Someone opens both versions and has to work out what changed.  Imagine if the programmers who worked on The Lord of the Rings had to do that.  "LOTR-v2".  Not flash.  There are much better ways to do it, and they only work with text files.  That's a whole talk in itself, which I might give some other time.

## Worked example
Do simplest possible interactive graph that isn't remotely possible in Excel.

### R
R is a statistical programming language.  It's like Excel would be if all you could see were the formulae in each cell.

Excel: `cell-value = SUM(1, 2, 3)`
  
R: `myVariable = sum(1, 2, 3)`
