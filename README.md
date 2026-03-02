# 📊 PCA-Based Dietary Pattern Segmentation in Europe

## 🔎 Project Summary

European countries exhibit diverse dietary consumption patterns across multiple protein and staple food categories. However, analyzing 9 correlated nutritional variables independently makes cross-country comparison complex and noisy.

This project applies **Principal Component Analysis (PCA)** to reduce dimensionality and uncover the dominant dietary structures driving variation across 25 European countries.

The analysis demonstrates how unsupervised learning can simplify multivariate data into interpretable components suitable for segmentation, visualization, and strategic insight.

---

## 🎯 Objective

- Reduce high-dimensional nutritional data into interpretable components  
- Identify dominant dietary consumption patterns  
- Visualize country-level clustering  
- Translate statistical output into business-relevant insight  

---

## 📂 Dataset

**Countries:** 25 European nations  
**Variables (9):**
- Red Meat
- White Meat
- Eggs
- Milk
- Fish
- Cereals
- Starch
- Nuts
- Fruit & Vegetables

Each row represents a country.  
Each column represents average protein intake from a specific food group.

---

## ⚙️ Methodology

1. Data loading and validation in R  
2. Standardization of variables (scaling to remove unit bias)  
3. Principal Component Analysis using `prcomp()`  
4. Variance explained analysis  
5. Scree plot evaluation  
6. Biplot visualization  
7. Component loadings interpretation  

---

## 📈 Results

### Variance Explained

| Principal Component | Variance Explained | Cumulative Variance |
|--------------------|-------------------|--------------------|
| PC1 | **44.52%** | 44.52% |
| PC2 | **18.19%** | 62.68% |
| PC3 | 12.53% | 75.22% |
| PC4 | 10.61% | 85.82% |
| PC5 | 5.15% | 90.98% |
| PC6 | 3.61% | 94.59% |
| PC7 | 3.02% | 97.61% |
| PC8 | 1.29% | 98.90% |
| PC9 | 1.10% | 100.00% |

### Key Insights

- **PC1 alone explains 44.5%** of total dietary variation.
- **First two components explain 62.7%**, capturing the majority of cross-country differences.
- **First four components explain 85.8%**, indicating strong dimensionality reduction with minimal information loss.

---

## 🧠 Interpretation of Principal Components

### PC1 (44.5%) – Dietary Structure Dimension  
Main contributors:
- Cereals
- Eggs
- Nuts

This component differentiates staple-heavy consumption patterns from dairy/meat-dominant dietary structures.

---

### PC2 (18.2%) – Mediterranean Influence Dimension  
Main contributors:
- Fish
- Fruit & Vegetables
- Starch

This component highlights countries with stronger Mediterranean-style consumption patterns characterized by higher fish and produce intake.

Southern European countries align more strongly with Fish and Fruit & Vegetables, while Northern/Western countries cluster closer to dairy and meat consumption.

---

## 📊 Visualizations

- Scree Plot (Variance Explained)
- PCA Biplot (Country Clustering + Variable Loadings)

These visualizations allow intuitive interpretation of multivariate structure and country positioning.

---

## 💡 Strategic Relevance

Although applied to nutritional data, this methodology demonstrates strong real-world applications:

### Market Segmentation
Reduce multiple correlated variables into interpretable dimensions for clustering and targeting.

### Policy Targeting
Identify regions with specific dietary patterns to design focused public health interventions.

### Demand Forecasting
Support food industry planning by understanding dominant regional consumption structures.

### Executive Reporting
Simplify complex datasets into 2–4 strategic indicators for dashboards and decision-making.

---

## 🛠 Tools & Techniques

- Principal Component Analysis (PCA)
- Dimensionality Reduction
- Multivariate Statistical Analysis
- Data Scaling & Standardization
- Loadings Interpretation
- Data Visualization
- R (`prcomp`, `factoextra`, `ggplot2`)

---

## 🚀 Skills Demonstrated

- Unsupervised Machine Learning
- Statistical Modeling
- Analytical Storytelling
- Insight Translation
- Structured Data Workflow
- Country-Level Segmentation Analysis

---

## 👩‍💻 Author

**Nida Muhammad Umer**  
Data Analyst | Statistical Machine Learning | Multivariate Analysis
