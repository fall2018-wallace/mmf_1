
CleandfStates <- function()
{
    dfStates <- read.csv(url("https://www2.census.gov/programs-surveys/popest/datasets/2010-2017/state/asrh/scprc-est2017-18+pop-res.csv"))
    dfStates <- dfStates[,c(5,6,7,8)]
    dfStates <- dfStates[2:52,]
    dfStates <-setNames(dfStates,c("stateName", "population", "popOver18", "percentOver18"))

    return (dfStates)
}

CleandfStates()
