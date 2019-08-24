#' ---
#' title: "My Script"
#' author: "Steffi LaZerte"
#' date: "22/08/2019"
#' output: html_document
#' ---
#' 
#' <style>
#' table.dataTable tbody th, table.dataTable tbody td {
#'   padding: 3px;
#' }
#' </style>

#+ echo = FALSE
knitr::opts_chunk$set(echo = TRUE, eval = TRUE)


#' ## Analysis
m <- lm(mpg ~ cyl, data = mtcars)
summary(m)

 
#' ## Reproducibility
#' ### Data
DT::datatable(mtcars, options = list(pageLength = 5))


#' ### Software
devtools::session_info()

