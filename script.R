# Function: get_data
# Parameter(s): filepath
# Description: Retrieve the data from the indicated filepath
get_data <- function(file_path) {
  dataset <- read.csv(file_path)
  return(dataset)
}

# Function: view_worlds
# Parameter(s): data
# Description: View the different worlds, ie) Arab World, East Asia & Pacific, etc..
view_worlds <- function(data) {
  return(unique(data$Country.Name))
}

# Function: view_worlds
# Parameter(s): data
# Description: View the different worlds' corresponding code
view_worlds_code <- function(data) {
  return(unique(data$Country.Code))
}

# Function: view_data_categories
# Parameter(s): data
# Description: 
# Note: Each world has their own 
view_data_categories <- function(data) {
  return(unique(data$Indicator.Name))
}

# Function: world_subset
# Parameter(s): data, world
# Description: Creating a subset of data for a desired world
world_subset <- function(data, world) {
  return(subset(data, Country.Code == world))
}

######################################## Main program ###############################

# m_filepath = Mariette's filepath to the data (Note: There is a better way of doing 
# this which I can look into later. I just wanted to get this program working)
git_repo <- "/Educational-Gender-Gap/data/edstats/EdStatsData.csv"
m_filepath <- "/Users/mariette/Desktop"
a_filepath <- ""

# Get and load the whole dataset
data <- get_data(m_filepath + git_repo)

# Data browsing
worlds <- view_worlds(data)
worlds_code <- view_worlds_code(data)
categories <- view_data_categories(data)

# For this instance I choose the world, East Asia & Pacific which has the world code "EAP"
world <- world_subset(data, "EAP")

