## Introduction

This repository contains my submission for the course project in Getting and Cleaning Data course.

## Description

Raw data was collected from the accelerometers of the Samsung Galaxy S smartphone during six different activities by different subjects ([UCI HAR data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)). The purpose of this project was to produce a digested data set containing the means of different raw measurements grouped by activities and subjects.

## Contents
 * `run_analysis.R` contains the extraction script
 * `tidy.txt` is an example file generated with the script
 * `Codebook.md` is the codebook for the extracted features


## Instructions
 * Download the [source data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip the file
 * Execute run_analysis.R script from a directory that contains the unzipped UCI HAR Dataset subdirectory
 * The script will produce tidy.txt as an output. Features are explained in the codebook file
