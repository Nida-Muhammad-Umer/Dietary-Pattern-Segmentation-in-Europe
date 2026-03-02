set.seed(49747)
protein <- read.csv(file.choose(), header=TRUE, row.names=1)
head(protein)

# Scaled data
protein_scaled <- scale(protein)

# Performed PCA
protein_pca <- prcomp(protein_scaled, center=TRUE, scale.=TRUE)

# Summary of PCA to view variance explained
summary(protein_pca)

# Scree plot
plot(protein_pca, type="lines", main="Scree Plot")

# Better Scree plot using factoextra package
install.packages('factoextra')
library(factoextra)
fviz_eig(protein_pca, addlabels=TRUE, ylim=c(0,80))

# Biplot
biplot(protein_pca, scale=0, main="Biplot of PCA")

# Enhanced Biplot using factoextra
fviz_pca_biplot(protein_pca, repel=TRUE, col.var="#2E9FDF", col.ind="#696969")

# Proportion of Variance Explained (PVE)
pr.var <- protein_pca$sdev^2
pve <- pr.var / sum(pr.var)
pve

# Cumulative Proportion of Variance Explained
cumsum_pve <- cumsum(pve)
cumsum_pve

# Variance table
data.frame(PC = 1:length(pve), Variance_Explained = pve, Cumulative_Variance = cumsum_pve)

# Loadings of the PCs
loadings <- protein_pca$rotation
loadings

# Top contributing variables to PC1 and PC2
main_contributors_PC1 <- names(sort(abs(loadings[,1]), decreasing=TRUE)[1:3])
main_contributors_PC2 <- names(sort(abs(loadings[,2]), decreasing=TRUE)[1:3])
main_contributors_PC1
main_contributors_PC2
