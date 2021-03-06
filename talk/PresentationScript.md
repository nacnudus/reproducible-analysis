# Why You Should Care

Hello, my name is Duncan Garmonsway.  I am an analyst in the Road Policing Group.  Before that I was an analyst at the New Zealand Defence Force, and before that I was an analyst at the Ministry of Justice.  So I know a little bit about analysis in the public sector, and that's what I'm going to talk to you about today.

You should also know that I'm a perfectionist, and that I'm a perfectionist, and that I'm extremely lazy.  So I'm going to talk about how to do really good analysis with the minimum possible effort.

In the first part I'll make the case for improving the way we do our analysis, and in the second part I'll show that there's really nothing new to learn.  We are already all familiar with the basic concepts.  In the third part I'll show off some magical things that can be achieved with a proper analytical tool like R, and in the final section I'll reassure you that R isn't just some weird shareware I found online once.  It's cutting edge technology used by the big movers and shakers.

But to begin with something small.  Me, doing a typical first piece of work for a new employer.

#### Redo This Thing
"Just redo this spreadsheet we already did, to answer this OIA."

Okay, that's good.  OIAs, they're in the eye of the media, and they're one of the fundemental elements of a free, democratic society, so it's probably all right if I mess this up a bit.  So I look at the spreadsheet that they already did that I'm going to copy.  And let's say I'm working for the Police at this point, because I've already found that the Police get things more right than some other agencies.  So I think, good, this piece of analysis is *reproducible*.  What do I mean?

### Reproducibility?
#### Record of the data
#### Record of the analysis
#### Record of the presentation

All I have to do is look at the data and get the up-to-date version.  Then I look at how the analysis was done, and do it again on the new data.  Finally I look at how the analysis was presented, and I copy the relevent bits of data and analysis into a new version of the presentation and send it off.  So that was reproducible analysis, wasn't it?

Nope.  When I try to get the up-to-date data, I get slightly different numbers, because it turns out there was a little bit of tweaking done between the database and the spreadsheet.  And then a bit more tweaking done in the spreadsheet, saved over the top.

Then the analysis isn't quite consistent.  There's a column of formulae that I assume are all the same, except that one of the formulae part-way down is slightly different to cover a special case in the data.  And there's nothing to explain what the special case is, or how the formula handles it.  And anyway, the up-to-date data has a couple more special cases that need to be handled in the same way, which means I need to type that special formula in somewhere else, too.

Once I've sorted out all the data, and all the analysis, and I get to the presentation.  I copy the relevant bit from the analysis and paste it into the report, or the powerpoint, or whatever it is, and it doesn't fit.  It's too big now.  So I spend forever adjusting everything to fit.

Finally I send out the presentation, and straight away I get an email back that says, "Hey, that was the March presentation.  This is April".  What have I done?  I've forgotten to change the title at the top.  Or if it's going to Joe Public, Joe Public writes back to complain that, in order to exercise his democratic right to information, he has to buy spreadsheet software from an American business.

### Reproducibility
#### Accurate
#### Transparent
#### Efficient

So is that really reproducible analysis?  No.  Is it easy?  Well, sort of.  Is it accurate?  Most of the time.  Is it transparent?  To some extent.  Can anyone outside the immediate team understand it?  Probably not.  Can a lazy person repeat it at a click of a button?  Definitely not.

Obviously there is room for improvement.  That's going to take some effort.  Is it worth it?

### Impact
#### High volume
#### High impact
#### Achievable

Doing real reproducible analysis would impact on all our work, increase our credibility under scrutiny, and we can already do it.

Analysis is this team's bread and butter.  OIAs, information requests, papers, even our own team projects like investigating the integrity of BO Universes; these can all be done in a reproducible way.

Most of our work is read by important people like senior management, the media and the public.  They all want a piece of us.  We must get everything right.

If you've have used email today, you already know how to do reproducible analysis.

# You Can Do It

## Text

### Text Files
(email)


There's some more gobbledegook, but if we were experts in emails we would be able to understand that.  It isn't ones and zeros.  It's human-readable text.  If the computer broke and all it gave us was this text, we could still read it.

How does it work?

### Text Files
#### Instructions
#### Database
#### Presentation...

This text is a database, a computer program, and is presentation-ready.

At the core of this email is a database.  It doesn't look like a database because it doesn't cost $gazillions and because humans can read it.  The database is simply the information that I want my brother to know.  It's the body of the email.

The top section is a set of instructions to the computer to tell it what to do.  The instructions say to send a message from me to my brother, at this time, conveying this information.  Both computers and humans can read it.  Humans can write it.  It isn't a complete mystery, and most of the time we can forget it's there.  Someone invented it once, and now we can all use it without thinking about it.  But if it broke, or we wanted to tinker with it, we could understand it relatively easily.

And it's presentation-ready.  You can decide how you want to read this email.  He can read it in his own Gmail account.  He can forward it to his work and read it in Outlook.  He can read it on his phone.  He can share it with his blind friend who can read it in Braille.  Whatever he decides to do, I don't care, because it doesn't imply any more work for me.  I don't have to rewrite the email in Braille.

It's also accurate, transparent and efficient.  Emails rarely make mistakes.  You're not tied down to a particular software vendor.

That's all very well for emails, but what about our work?  You want to see a text file draw a graph.

### Plot

```r
plot(x = c(1, 2, 3, 4, 5), y = c(10, 20, 15, 8, 2), type = "line")
```

```
## Warning: plot type 'line' will be truncated to first character
```

![plot of chunk simplePlot](figure/simplePlot.png) 


This is a text file - just one line of text - that draws the graph.  Everything I've talked about is there.  There's the database.  There's the instruction.  The instruction is human-readable---everyone knows it's doing a line chart of these numbers against these axis.  It's accurate---the computer isn't going to make a mistake by accidentally missing off the bottom row of data in the spreadsheet.  And it's presentation-ready.  It so happens that that actual line of code drew this actual graph that's projected now, but it didn't have to be.  It could be printed instead, or it could go on a webpage.  It would be the same code, and in fact it would be the same software.  The 'R Stack' this talk is about did all the leg work.  It read the instruction, drew the plot, and put it on a slide.  If I was going to send it to Joe Public, then Joe public could obtain the software for free, or at the very least he could see what I'd done just by reading the instructions.

So we've done it?  End of presentation?  Not yet.  Now that we're using text, let's see what else we can do.

What if I tweaked my presentation a bit for next time.  What if I wanted to make the graph a bit taller?  If I were using Powerpoint and Excel then I'd resize the graph in Excel, copy it over the top of the old one in Powerpoint, and save it as My Presentation V2.ppt.  Then someone wants to know what changed between the versions, because they're terrified that the numbers have changed, so they go and check all the numbers in the presentation, by eye.  I know what you're thinking, you're thinking, "What about track changes?".  Um, show me where that button is on the Excel ribbon.

### Where's the error?
\includegraphics[width=4in]{figures/ExcelError.png}

Tracked changes doesn't work on spreadsheets.  It works really well on text files.

### Diff

R will track changes on your analysis.

This is the difference, or the 'diff' between two versions of the actual code that produced this presentation.  The red is lines that have been deleted.  Green lines have been added.

Looking at the middle pair, you can see that the red line was re-written.  So it's effectively been deleted, and a very similar line has been inserted in its place.  There are two differences between them, the first is that I've renamed the instruction from "meanRbiByYear" to "basicPlot", which makes more sense.  The other is that I've increased the height of the plot from 2.25 inches to 2.5 inches.

Along with that change, I will have recorded what it was I'd done.  There's a whole history of this presentation that records all the changes to it, when they were made, who made them, and what they said they'd changed.  This is something I haven't mentioned yet: an audit trail.  When we report a funny number and someone doubts us (how dare they), we need to have at hand the exact steps that got us from the data to the report.  The report might have been produced several months ago, and since then we might have changed a few things, so we need to be able to recover every version of every analysis that we do.

If you're now thinking, "That's great for text files, but what if the data folder goes somewhere else? All my linked data sources will be broken", then you're in luck, because this kind of track changes also tracks directories.

### Folder Structure

That's cute, but it's kinda weird.  Where did you dig that up, Duncan?  Well, Facebook uses it.  So does Google.  In fact, everybody uses it.  Nobody uses the "Last modified" timestamp on a file called "Presentation for Dave - Megan's comments - v4 draft.ppt"

The reason is collaboration.  There's another thing we do every day, and we could do more of every day.  Imagine if Megan didn't have to manually merge our individual Weekly Reports into one big Weekly Report?  Effectively, we're all contributing to the same document, so why don't we all use the same file and work on it at the same time?  Because it's a recipe for spaghetti.  Version control uses a special brand of spaghetti that all lies parallel and never collides.

### Diff Tree

This is several people collaborating on one document, without their individual workstreams ever colliding.  It's like a very safe railway network where all the tracks run parallel, except at carefully controlled junctions.  This is called a trunk, this is called a branch, and the whole thing is called a tree.

This is the trunk.  The main document.  People are contributing to their own copies of that document, which are the other coloured lines, the branches.  From time to time, they merge their changes into the main document.

So we've covered the fundamental component of reproducible analysis, which is the text file.  It records the data, it records the analysis, and it's presentation-ready.  It's easy to exchange, it's easy to collaborate, it's cheap, and we already know how to use it.  That OIA I'm writing is on the right track.  The next piece of the puzzle is a good workflow.

# Do The Magic

## Workflow

### LCFD

#### Least Commonly Fouled-up Data

#### Load
#### Clean
#### Function
#### Do

Text is great, but it's still possible to stuff up the OIA.  Police already does this bit pretty well, so instead of spending a lot of time explaining it, I'll just give examples of how to implement this process using the R statistical programming language.

Basically, it's wise to use a modular process.  If the source of the data changes, all you should have to do is load the data in a different way.  If the data acquires a couple of new inconsistencies or is available in a different form, all you should have to do is clean it in a different way.  You can be more efficient by keeping your natty little formulae and routines separately where you can use them for other pieces of work, and that improves accuracy too---if you fix a bug in one function, it's fixed for everybody at the same time.  Finally, the "Do", the actual analysis, is uncluttered by any tedious administrative stuff.  You'll be able to draw a graph a different way without having to change any of your loading or cleaning processes.

I'll quickly show you what loading and cleaning looks like in R, and then I'll show you some pretty pictures of what R can do that you can't do in Excel.

### Load

#### From a text file
`mydata = read.table("mydata.txt")`

#### From a database
`mydata <- sqldf("SELECT * FROM School", dbname = "Test2.sqlite")`

#### From the web
`dminit("4b3320aa36214e35a7d0c6c175a1ff98") # api key`
`mydata <- dmlist("22ry")`

#### From other statistical packages
`mydata <- read.xls("mydata.xls")`
`mydata <- read.spss("myfile", to.data.frame=TRUE)`

You can load data into R from anywhere.  There are no compatibility problems.  If you want to use a Twitter feed, you can do that.  More likely, if you want a real-time traffic feed from the NZTA, you can use that to.  Heaven forfend that you have to use Excel, but you can even load data from spreadsheets.

The database connections understand SQL, which is a language specifically for retrieving data from databases.

### Clean
`x <- read.csv("data.csv")`

      COUNT HOUR     WEEKEND
          1    1 Not weekend
          2    1 Not weekend
          3    1 Not weekend
          2    1 Not weekend
          3    1     Weekend
          1    1     Weekend

### Clean
`y <- dcast(x, hour~weekend, sum, value.var = "count")`

          HOUR NOT WEEKEND WEEKEND
             1           4       6
             2           5       6
             3           4       5
             4           1       6
             5           5       5
             6           7       5


You can see in the first slide that there were eight crashes during the first hour of both days of the weekend.  In the second slide these have been added up.  People say R is hard.  The equivalent in Excel would either be screeds of formulae to cover every possible option, or a pivot table, and we know what a pain it is to maintain pivots.

### Function
```
myFunction <- function(z){
 dcast(z, hour ~ weekend, sum, value.var = "count")
}

y <- myFunction(x)
a <- myFunction(b)
```
If it took you ages to get some code just right, you can make it into a function and forget all about how it works.  Next time, just call the function, and the computer will do all the hard work for you.  You can do the same with graphs---draw one really fancy graph, and then easily duplicate it for as many datasets as you like.  This is a massive timesaver when you do a piece of work for one district, and suddenly all the districts want one.

## Magic

### Facet

This is where the magic starts.  Now we're doing the analysis.  This graph answers the kind of question we often get, especially in OIAs:

    Give me the number of crashes by the hour of the day.
    Also by whether it's the weekend.
    Also by urban/rural.
    Also by drink/drug or not.

Each of those graphs was a single command.  One line of code.

Okay, but you could almost do that in Excel.  What about the complex statistics and forecasting that Nils is going to be doing.  Can Excel keep up with that?

### Forecast - Gas

The black line is the production of gas per month in Australia.  The blue line is the forecast.  Note that the trend is seasonal---it goes up and down regularly on an annual cycle.  So does the forecast.  To see how it does it, we can plot the decomposition.

### Decomposition - Gas

R has decomposed the whole series into three components - the regular seasonal cycle, the upward trend as production of gas increases, and the random fluctuations left over.  If we were reporting these figures, we could forget about the top three graphs, because they're boring and predictable.  The management would want to know about the bottom graph, the unpredictable one.

But we rarely have such clearly seasonal data in Road Policing.  What use is such sophisticated forecasting to us?

### Forecast (hard)

This is more like the graphs we have to forecast.  Can anyone guess what this is?  That's right, it's the Australian annual beer production.  Let's show how Excel would forecast this.

### Forecast (hard)

It's done a linear regression, and it's terrible.  Who wants to send that upstairs to the boss?  So let's see whether a sophisticated forecasting package can do any better.

### Forecast (hard)

Okay, it's drawn a fairly straight line, in blue, and it's given us confidence intervals.  It's 95% confident that production will be somewhere within the grey area for the next four years.  How did it do?

### Forecast (hard)
It got it 95% correct. 

Now I know you're still not impressed, and you won't be until you see an interactive chart that you can click on and that will sing you a song.  Unfortunately, the computer in this conference room doesn't have Chrome, so it can't show you that.  So instead, I'll show you just how easy it is to draw a map.

### Map

There you go.  And guess what?  Having done all that analysis, it's a trivial step to publish it on paper, as a slideshow, or on the web.  I built this whole slideshow using R.  I never had to copy a graph from Excel and paste it into Powerpoint, and then do it again when I tweaked the chart a bit.

I hope by this stage you have three ideas in your heads.  First, you want to benefit from reproducible research.  Second, you feel confident you can do it, because it's only text files so it's no more difficult than an email.  Third, you're impressed by what R can do for you.  I suspect you also have a nagging doubt.  Is R reliable?

# Be Amongst the Best

### Developers

R is as reliable as its developers, and R's developers are experts.  

### Community

"The third problem in your code is, you are printing plots from R base graphics. Sigh. Printing base graphics does not make any sense."

R is also as reliable as its users.  If I make a mistake, that's my fault.  But R has a huge support network that will catch me when I fall.  I got a bit stuck preparing one of the charts in this presentation, so I posted my problem online.  Within half an hour, I had this response.

So some random stranger abused me on the internet?  What's that to boast of?  Well, he's no random stranger.  That post was written to me by the package developer.  It would be like the chief developer of Microsoft Excel emailing me a solution to my problem, within half an hour, from a different country.  In fact, it's better than that, because Yihui Xie isn't just some random developer either, he's on the previous slide.  He's a postdoc in statistics at Iowa State University.  He knows what he's talking about.

Okay, so R is reliable, there's incredible support available for it, but you've never heard of it.  You don't want to invest anything into some shareware thing, even though you now understand that everything's a text file so you can always get out of it, you won't be tied into propriety software the way you are with Excel and BO.  Is anyone else using R, and is it going anywhere?

### Pace of Development

The pace of development of R is exploding.  That's one reason why businesses like ANZ use it.  And because it's open source, everyone will benefit from everybody-else's investment in it, so if ANZ develops a new feature in R, everyone we get to use it too.  Development is so fast, that there's almost nothing in R that hasn't been updated in the last couple of years.

This graph is actually slightly misleading, and I can use that to illustrate a couple of the great things about R that I've been talking about.  I've adapted this graph from its original publication on someone's blog.  One change I made was to use up-to-date data.  It didn't cost me any effort to do that, because the original analyst had written the code to download new data every time.  That's the first step in LFCD, and as you can see, it's really helpful.

The major change I made was to label the x-axis "Year of Last Update".  Without that label, you might think that the number of packages available was increasing exponentially.  That might be true, but the graph doesn't show that.  However, the blog where this graph was published interpreted it that way.  Fortunately, because they made their code available to, as a text file, I was able to work out exactly what was going on and correct it.

# Questions
\begin{center}
\LARGE{Questions?}
\end{center}
