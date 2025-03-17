# Historical Weather Data R Script Debugging Assignment

## Overview
In this assignment, you are provided with an R script that is designed to:
- Download historical weather data from the Open-Meteo API.
- Parse the JSON response into a data frame.
- Visualize key weather parameters over time.
- Save the processed data as an RDS file.

Your task is to review the provided code, debug any issues that prevent it from running correctly, and document your changes. You are also required to add meaningful comments throughout the code to explain your modifications and overall approach.

## Objectives
- **Debugging:** Identify and fix syntax, logical, and data handling errors in the provided script.
- **API Handling:** Demonstrate your ability to interact with a web API, parse JSON data, and convert it into R data structures.
- **Visualization:** Use R’s base plotting functions to generate clear visual representations of the weather data.
- **Data Persistence:** Ensure that the final data frame is saved as an RDS file.
- **Documentation:** Provide detailed inline comments within your code and a debugging report in Markdown format describing your debugging process and corrections.
- **Git Workflow:** Fork the repository on GitHub, implement your changes in your fork, and submit the link to your fork with your updated code pushed to it.

## Resources and Documentation
- **Open-Meteo Historical Weather API Documentation:**  
  [API Documentation](https://open-meteo.com/en/docs/historical-weather-api?start_date=2014-01-02&end_date=2024-12-31&temperature_unit=fahrenheit&hourly=temperature_2m,precipitation,relative_humidity_2m,dew_point_2m&timezone=America%2FNew_York)

- **Example API Output (JSON):**  
  [Example API Output](https://archive-api.open-meteo.com/v1/archive?latitude=52.52&longitude=13.41&start_date=2014-01-02&end_date=2024-12-31&hourly=temperature_2m,relative_humidity_2m,dew_point_2m&temperature_unit=fahrenheit)

## Assignment Tasks

### 1. Debug the Provided Script
- **Review the Code:** Carefully study the provided R script which is designed to perform the complete workflow: data download, JSON parsing, data visualization, and data saving.
- **Identify and Correct Errors:** Make all necessary modifications so that the script:
  - Successfully downloads data from the API.
  - Correctly parses the JSON response and creates a data frame.
  - Generates a 2×2 panel of plots (temperature, precipitation, relative humidity, and dew point) and saves the output as a PNG file.
  - Saves the final data frame as an RDS file.
  
### 2. Enhance Code Documentation
- **Inline Comments:** Ensure your code includes clear and descriptive comments throughout. These comments should explain the purpose of code segments and the changes you make.
- **Debugging Report:** Write a brief debugging report in Markdown format that includes:
  - A description of each error encountered (include debugging output/stack traces from R here as well). 
  - Your approach and rationale for the corrections.
  - Any additional improvements or enhancements you implemented.

### 3. GitHub Repository Requirements
- **Fork the Repository:** Create a fork of the provided GitHub repository.
- **Push Your Changes:** Make your code changes and commit them to your fork.
- **Submission:** Submit the URL to your GitHub fork. Your repository should contain:
  - The debugged and fully documented R script.
  - Your debugging report in Markdown format.

*Note:* There is no need to include the output files (e.g., the generated PNG or RDS file) in the repository. The code will be executed during evaluation to verify that the debugging was successful.

## Submission Requirements
- **Corrected Script:** Ensure your final R script (e.g., `get-historical-weathe.R`) is pushed to your GitHub fork.
- **Debugging Report:** Include your debugging report as a Markdown file in your repository.
- **Repository Link:** Submit the URL to your GitHub fork containing your changes.

Good luck, and happy debugging!
