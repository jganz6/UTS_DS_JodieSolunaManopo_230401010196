# --------------------------------------
# ANALISIS DESKRIPTIF DATA SOCIAL_NETWORK_ADS
# --------------------------------------

data <- read.csv("data/Social_Network_Ads.csv")

cat("=== NAMA FITUR/VARIABEL ===\n")
print(colnames(data))
cat("\nJumlah fitur (kolom):", ncol(data), "\n")

age <- data$Age
salary <- data$EstimatedSalary

if (!requireNamespace("modeest", quietly = TRUE)) {
  install.packages("modeest")
}
library(modeest)

# --------------------------------------
# 1. Statistik Deskriptif: AGE
# --------------------------------------
cat("\n=== STATISTIK: AGE ===\n")
cat("Mean              :", mean(age), "\n")
cat("Median            :", median(age), "\n")
cat("Modus             :", mlv(age, method = "mfv"), "\n")
cat("Kuartil           :\n")
print(quantile(age))
cat("Jangkauan         :", max(age) - min(age), "\n")
cat("IQR               :", IQR(age), "\n")
cat("Varians           :", var(age), "\n")
cat("Standar Deviasi   :", sd(age), "\n")

# --------------------------------------
# 2. Statistik Deskriptif: ESTIMATED SALARY
# --------------------------------------
cat("\n=== STATISTIK: ESTIMATED SALARY ===\n")
cat("Mean              :", mean(salary), "\n")
cat("Median            :", median(salary), "\n")
cat("Modus             :", mlv(salary, method = "mfv"), "\n")
cat("Kuartil           :\n")
print(quantile(salary))
cat("Jangkauan         :", max(salary) - min(salary), "\n")
cat("IQR               :", IQR(salary), "\n")
cat("Varians           :", var(salary), "\n")
cat("Standar Deviasi   :", sd(salary), "\n")

# --------------------------------------
# 3. Statistik Deskriptif: PURCHASED
# --------------------------------------
cat("\n=== STATISTIK: PURCHASED ===\n")
cat("Frekuensi (table):\n")
print(table(data$Purchased))
cat("Persentase (%):\n")
print(round(prop.table(table(data$Purchased)) * 100, 2))

# Rata-rata = persentase yang membeli
cat("Mean (persentase pembeli):", round(mean(data$Purchased) * 100, 2), "%\n")

# Median dan modus
cat("Median:", median(data$Purchased), "\n")
cat("Modus :", mlv(data$Purchased, method = "mfv"), "\n")

# Varians dan standar deviasi
cat("Varians:", var(data$Purchased), "\n")
cat("Standar Deviasi:", sd(data$Purchased), "\n")
