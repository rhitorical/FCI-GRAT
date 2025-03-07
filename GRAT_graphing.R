library(tidycensus)
library(tidyverse)
library(dplyr)
library(stringr)

census_api_key("b04a3c521c0b4e5c1a74610ea5c18a5d31ed9aac")

variables <- c(
  "B25001_001", "B25004_001", "B25058_001", "B25077_001", "B25003_003", "B25003_002", 
  "B03002_003", "B03002_004", "B03002_001", "B19013_001", "B17001_002", "B17001_001", 
  "B25070_007", "B25070_008", "B25070_009", "B25070_010", "B25070_011", "B25091_009", 
  "B25091_010", "B25091_011", "B25091_012", "B25091_013", "B25095_005", "B25095_006", 
  "B25095_007", "B25095_008"
)

census_data_2015 <- get_acs(
  geography = "tract",
  state = "FL",
  county = "Alachua",
  variables = variables,
  geometry = FALSE,
  year = 2015
) |> pivot_wider(
  id_cols = c(GEOID, NAME),
  names_from = variable,
  values_from = estimate
) |> group_by(GEOID)

census_data_2016 <- get_acs(
  geography = "tract",
  state = "FL",
  county = "Alachua",
  variables = variables,
  geometry = FALSE,
  year = 2016
) |> pivot_wider(
  id_cols = c(GEOID, NAME),
  names_from = variable,
  values_from = estimate
) |> group_by(GEOID)

census_data_2017 <- get_acs(
  geography = "tract",
  state = "FL",
  county = "Alachua",
  variables = variables,
  geometry = FALSE,
  year = 2017
) |> pivot_wider(
  id_cols = c(GEOID, NAME),
  names_from = variable,
  values_from = estimate
) |> group_by(GEOID)

census_data_2018 <- get_acs(
  geography = "tract",
  state = "FL",
  county = "Alachua",
  variables = variables,
  geometry = FALSE,
  year = 2018
) |> pivot_wider(
  id_cols = c(GEOID, NAME),
  names_from = variable,
  values_from = estimate
) |> group_by(GEOID)

census_data_2019 <- get_acs(
  geography = "tract",
  state = "FL",
  county = "Alachua",
  variables = variables,
  geometry = FALSE,
  year = 2019
) |> pivot_wider(
  id_cols = c(GEOID, NAME),
  names_from = variable,
  values_from = estimate
) |> group_by(GEOID)


census_data_2020 <- get_acs(
  geography = "tract",
  state = "FL",
  county = "Alachua",
  variables = variables,
  geometry = FALSE,
  year = 2020
) |> pivot_wider(
  id_cols = c(GEOID, NAME),
  names_from = variable,
  values_from = estimate
) |> group_by(GEOID)


census_data_2022 <- get_acs(
  geography = "tract",
  state = "FL",
  county = "Alachua",
  variables = variables,
  geometry = FALSE,
  year = 2022
) |> pivot_wider(
  id_cols = c(GEOID, NAME),
  names_from = variable,
  values_from = estimate
) |> group_by(GEOID)

census_data_2023 <- get_acs(
  geography = "tract",
  state = "FL",
  county = "Alachua",
  variables = variables,
  geometry = FALSE,
  year = 2023
) |> pivot_wider(
  id_cols = c(GEOID, NAME),
  names_from = variable,
  values_from = estimate
) |> group_by(GEOID)

write.csv(census_data_2015, "census_data_2015.csv")
write.csv(census_data_2016, "census_data_2016.csv")
write.csv(census_data_2017, "census_data_2017.csv")
write.csv(census_data_2018, "census_data_2018.csv")
write.csv(census_data_2019, "census_data_2019.csv")
write.csv(census_data_2020, "census_data_2020.csv")
write.csv(census_data_2022, "census_data_2022.csv")
write.csv(census_data_2023, "census_data_2023.csv")
