## Introduction

This repository contains my submission for the course project in Getting and Cleaning Data course.

## Description

Raw data was collected from the accelerometers of the Samsung Galaxy S smartphone in six different activities by different subjects ((http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "UCI HAR data set")). The purpose of this project was to calculate the means of different raw measurements grouped by activities and subjects.

## Contents
 * `run_analysis.R` contains the extraction script
 * `tidy.txt` is an example file generated with the script
 * `Codebook.md` is the codebook for the extracted features


## Instructions
 * Download the (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "source data") and unzip the file
 * Execute run_analysis.R script from a directory that contains the unzipped UCI HAR Dataset subdirectory
 * The script will produce tidy.txt as an output for the digested means of 66 variables
 * Code book is described in CodeBook.md
