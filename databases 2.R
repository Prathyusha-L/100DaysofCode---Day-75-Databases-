install.packages

N50_URL <- "https://www1.nseindia.com/content/indices/ind_nifty50list.csv"
download <- read.csv(N50_URL)
download


temp_tickers=paste(as.character(download$Symbol),".NS",sep="")
temp_tickers
write.csv(temp_tickers,"Nifty50.csv")

start_date=as.Date("2020-01-01")
end_date=as.Date("2020-06-01")
temp_prices= BatchGetSymbols(temp_tickers, first.date=start_date, last.data=end_data)

head(temp_prices)

NM100_Date=reshape.wide(temp_prices$df.tickers)