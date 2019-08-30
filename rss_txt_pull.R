rss_txt_pull <- function(url, paper, section = "") {

  # Function for streamlining the process of pulling RSS feeds
  # Used primarily for the AMAR scraping project
  # Arguments:
  #      url: the html for the RSS page to be scraped
  #    paper: the name of the newspaper being scraped
  #  section: the paper section being scraped; 
  #           default is no section and the papers
  #           are saved in the paper folder


  if(section == ""){
  file_name <- paste(paper,"/",paper,"-", as.numeric(as.POSIXct(Sys.time())), ".txt", sep = "")
  
  download.file(url, file_name,
                quiet = FALSE, mode = "w",
                cacheOK = TRUE,
                extra = getOption("download.file.extra"))
  }
  
  else{
    file_name <- paste(paper,"/",section,"/",paper,"-",section,"-", as.numeric(as.POSIXct(Sys.time())), ".txt", sep = "")
    
    download.file(url, file_name,
                  quiet = FALSE, mode = "w",
                  cacheOK = TRUE,
                  extra = getOption("download.file.extra"))
  }
}
