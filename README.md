# Healthcare Safety Analysis with Power BI

## Overview
This repository contains Power BI files, presentations, reports, and datasets for a comprehensive analysis of the `MetroHealth83` dataset, aimed at assessing healthcare safety risks across 77 U.S. cities. The project leverages Power BI to clean data, explore patterns, engineer features, and provide actionable insights, with some tasks adapted to Tableau for cross-validation. The dataset includes 17 columns such as `RateMDs`, `RateBeds`, `PctChangeMedicare`, and engineered features (`newHAI`, `newPDI`, `newMedicareDependencyRatio`).

## Project Structure
- `cleaneddataset.pbix`: Power BI file with cleaned data tables.
- `Phase2.pbix`: Power BI file for Phase 2 analyses with report and presentation.
- `Phase3.pbix`: Power BI file for Phase 3 analyses with report and presentation.
- `Task7.pbix`: Power BI file for Task 7 analyses with report and presentation.
- `Healthcare_Safety_Presentation.pptx`: Presentation summarizing all tasks.
- `MetroHealth83.xlsx`: Excel dataset.
- `README.md`: This file, providing an overview and instructions.
- `Data analytics for healthcare.pdf`: Report of the project.

## Tasks Completed

### Phase 1: Data Acquisition and Preparation
- **Task 1: Obtain the Health Dataset with Relevant Attributes**  
  Loaded `MetroHealth83.csv` into Power BI, confirming 16 columns and 83 rows.
- **Task 2: Evaluate Dataset's Quality, Completeness, and Relevance**  
  Assessed high quality, no missing data, and relevance for healthcare analysis; noted 6 duplicate cities and no `Population` column.
- **Task 3: Perform Initial Data Cleaning**  
  Removed 6 duplicate cities (77 rows remain), capped `RateMDs` at 510 and `RateBeds` at 550, estimated `Population`, and saved as `MetroHealth83_Cleaned.pbix`.

### Phase 2: Data Exploration and Visualization
- **Task 4: Explore the Dataset Using Power BI**  
  Created a histogram for `RateMDs` (binned at 50), a table for key metrics, and a matrix for summary statistics to explore distributions across 77 cities. (Included in `Phase2.pbix` with report and presentation.)
- **Task 5: Visualize Data Patterns and Relationships**  
  Developed a bar chart for low `RateMDs` (<150), a line chart for `PctChangeMedicare`, and a scatter plot for `RateMDs` vs. `RateBeds`, identifying safety threats. (Included in `Phase2.pbix` with report and presentation.)
- **Task 6: Identify and Visualize Potential Outliers and Anomalies**  
  Identified `RateBeds` outliers (>585) via scatter plot and table, capped at 585, with no new `RateMDs` anomalies. (Included in `Phase2.pbix` with report and presentation.)

### Phase 3: Data Analysis and Feature Engineering
- **Task 7: Conduct Univariate and Bivariate Analyses**  
  Performed univariate analysis with a histogram and card, and bivariate analysis with a scatter plot and matrix, linking low `RateMDs` to safety risks. (Included in `Task7.pbix` with report and presentation.)
- **Task 8: Develop New Features Through Feature Engineering**  
  Engineered `newHAI` (average of `RateMDs` and `RateBeds`, capped at 400), `newPDI` (population per physician, capped at 1000), and `newMedicareDependencyRatio` (capped at 15), visualized with bar, line, and scatter charts. (Included in `Phase3.pbix` with report and presentation.)
- **Task 9: Apply Outlier Detection Methods**  
  Detected and capped outliers (`newHAI` >400, `newPDI` >1000, `newMedicareDependencyRatio` >15) using DAX calculated columns. (Included in `Phase3.pbix` with report and presentation.)

### Phase 4: Reporting and Documentation
- **Task 13: Summarize Findings and Insights**  
  Summarized key insights: Low `newHAI` (<200) and high `newPDI` (>500) indicate safety threats, and high `newMedicareDependencyRatio` (>15%) with low `RateMDs` signals vulnerability. (Summarized in `Healthcare_Safety_Presentation.pptx`.)
- **Task 14: Create Impactful Data Visualizations**  
  Enhanced dashboards with a histogram, combo chart, scatter plot, and matrix to communicate safety patterns effectively. (Included in `MetroHealth83_Cleaned.pbix` and `Healthcare_Safety_Presentation.pptx`.)
- **Task 15: Prepare a Comprehensive Report**  
  Documented the analysis, feature engineering via DAX, and recommendations: Invest in low `newHAI` cities, mitigate negative `PctChangeMedicare` areas, and monitor `newMedicareDependencyRatio`. (Included in `Healthcare_Safety_Presentation.pptx`.)

### Phase 5: Real-World Applications
- **Task 16: Apply Insights and Visualizations**  
  Applied visuals to target Hanford-Corcoran (low `RateMDs`) and Scranton (negative `PctChangeMedicare`) for healthcare interventions. (Included in `MetroHealth83_Cleaned.pbix` and `Healthcare_Safety_Presentation.pptx`.)
- **Task 17: Assess the Impact of Data-Driven Recommendations**  
  Assessed that recommendations enhance resource allocation, emergency response, and proactive care for safety operations. (Included in `MetroHealth83_Cleaned.pbix` and `Healthcare_Safety_Presentation.pptx`.)

### Project Conclusion and Future Steps
- **Task 18: Conclude the Project**  
  Concluded with findings: Low `RateMDs` and `RateBeds` correlate with risks, offering a scalable model for public health planning. (Included in `Healthcare_Safety_Presentation.pptx`.)
- **Task 19: Discuss Potential Future Extensions**  
  Proposed integrating real-time data, patient outcomes, and machine learning, with refinements to outlier thresholds and `Population` estimates. (Included in `Healthcare_Safety_Presentation.pptx`.)

## How to Use This Repository
1. **Clone the Repository**:
   - Run `git clone <repository-url>` in your terminal.
2. **Open the Power BI Files**:
   - Install Power BI Desktop, then open `cleaneddataset.pbix`, `Phase2.pbix`, `Phase3.pbix`, and `Task7.pbix`.
   - Explore dashboards, reports, and data models in each.
3. **View Presentation**:
   - Open `Healthcare_Safety_Presentation.pptx` in PowerPoint or compatible software to review the summary.
4. **View Data**:
   - Open `MetroHealth83.xlsx` in Excel or import into Power BI/Tableau.
5. **Requirements**:
   - Power BI Desktop (latest version recommended).
   - Microsoft PowerPoint or compatible software.
   - Microsoft Excel or compatible spreadsheet tool.
   - Basic knowledge of Power BI for navigation.
6. **Contribute**:
   - Fork the repository, make changes, and submit a pull request.

## Contact
For questions or contributions, contact - swapnilnicolsondadel@gmail.com
