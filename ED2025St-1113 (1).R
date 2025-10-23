###### pakiety ######

if(!require(tseries)){
  install.packages('tseries')
  library(tseries)
}

if(!require(plotrix)){
  install.packages('plotrix')
  library(plotrix)
}

if(!require(zoo)){
  install.packages('zoo')
  library(zoo)
}

if(!require(vars)){
  install.packages('vars')
  library(vars)
}


#####  Katalog roboczy #####

#setwd("scieżka pliku np. C:/Users/s-A121-31/Downloads)

#####  Import danych #####
#Dane kwartalne z okresu 1947:1 - 2021:2
#Y - produkt krajowy brutto
#C - prywatne wydatki konsumpcyjne
#I - prywatne inwestycje krajowe brutto

  
##### wczytanie danych i wstepna analiza #####

#dane_oryginalne <- read.delim("C:/Users/s-A121-31/Downloads/dane_oryginalne.txt", row.names=1)

#wczytanie danych

#wyswietla poczatek danych
#wyswietla koniec danych 

#liczba analizowanych zmiennych

#liczba zebranych obserwacji

#nazwy zmiennych


#####  Przekształcanie zmiennych #####

#logarytm naturalny

#zapis danych w postaci macierzy

#zapis danych w postaci szeregu czasowego


#####  Wykresy i wstępna analiza poziomów #####

#laczny wykres calego szeregu


#laczny wykres poziomow calego szeregu z trendem liniowym

#Analiza poziomów

#liczba opóznien do ACF i PACF

#szereg, acf, pacf
par(mfrow=c(1,1))#jeden wykres
par(mfrow=c(n, 3))#podzial obszaru wykresu na n wierszy i 3 kolumny 

#zapis do pliku pdf
#wymiary
pdf_h = 8.75
pdf_w = 12.71

#otwieramy plik
pdf(file = "poziomy.pdf", width = pdf_w, height = pdf_h)
par(mfrow=c(1,1))
par(mfrow=c(n, 3))

#wykres

dev.off()#zamykamy plik

#To co wyzej, tylko z zapisem do pliku jpeg
jpeg(file = "poziomy.jpeg")
par(mfrow=c(1,1))
par(mfrow=c(n, 3))
#wykres

dev.off()

