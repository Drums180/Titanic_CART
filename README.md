# Analysis of the Titanic with CART

This repository contains a data analysis project using the famous Titanic dataset. The goal of this project is to understand the characteristics that may have influenced passenger survival and create a decision tree model to predict survival.

## Content

- `titanic.csv`: Original Titanic dataset.
- `titanic_analysis.R`: R script that contains all the code to import, process, analyze the dataset and create a decision tree.

## Instructions

To reproduce this analysis, you will need to have R and RStudio installed on your computer. Follow these steps:

1. Clone this repository to your local machine.
2. Open the file `titanic_analysis.R` in RStudio.
3. Install the necessary libraries by uncommenting and executing the `install.packages()` lines if you don't already have them installed.
4. Run the script to see the analysis and results.

## Analysis Summary

The script does the following:

1. **Dataset Import**: Load the Titanic dataset from a CSV file.

2. **Understanding the Dataset**: Use functions like `summary()` and `str()` to obtain a statistical summary and the structure of the dataset.

3. **Data Filtering**: Prepare the dataset for analysis, selecting relevant columns and converting variables to factors.

4. **Missing Data Analysis**: Identify and manage missing data.

5. **Decision Tree Creation**: Use the `rpart` library to create a decision tree model that predicts survival based on class, age and sex.

6. **Decision Tree Display**: Display the decision tree using `rpart.plot` and `prp` for better interpretation of the results.

## Conclusions

- The greatest probabilities of survival correspond to male children under 9.5 years of age in 1st and 2nd class (100%) and female children in 1st and 2nd class (93%).
- The lowest probability of survival corresponds to men over 9.5 years of age (18%) and to male children under 9.5 years of age in 3rd class (38%).

This analysis provides an interesting insight into the factors that may have influenced the survival of the Titanic passengers.

## License

This project is under the MIT license. See the `LICENSE` file for details.
