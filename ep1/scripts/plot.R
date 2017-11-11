oldw <- getOption("warn")
options(warn = -1)

suppressMessages(require(ggplot2))
suppressMessages(require(svglite))
args <- commandArgs(TRUE)
name <- args[1]
fileName <- c("./../pics/generated", args[2])
file = paste(fileName, collapse = "/") 
file = paste(file, ".pdf", collapse="")
df <- read.csv(name, header = TRUE)
image = ggplot(df, aes(x=X, y=Y, label=X)) + geom_point(size=0.2,stroke=0) + xlim(0,1) + ylim(-0.3,0.3) + geom_text(aes(label=ifelse(y=0,as.character(X),'')),hjust=0,vjust=0)

ggsave(file, image, width= 16.5, height=10,units="cm",dpi=1500000,scale=1)


options(warn = oldw)