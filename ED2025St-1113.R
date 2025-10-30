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

#### USTAWIENIE KATALOGU ROBOCZEGO MOZNA ZROBIC ZA POMOCA #####
#### Session -> Set working directory -> To source file location

#####  Katalog roboczy #####
#setwd("C:/Pobrane") <-to jest schemat polecenia

#####  Import danych #####
#Dane kwartalne z okresu 1947:1 - 2021:2
#Y - produkt krajowy brutto
#C - prywatne wydatki konsumpcyjne
#I - prywatne inwestycje krajowe brutto

  
##### wczytanie danych i wstepna analiza #####

#wczytanie danych
dane_oryginalne = read.delim("dane_oryginalne.txt", row.names=1)

#wyswietla poczatek danych
poczatek_danych <- head(dane_oryginalne)
poczatek_danych
#wyswietla koniec danych 
koniec_danych <- tail(dane_oryginalne)
koniec_danych
#liczba analizowanych zmiennych
liczba_analizowanych_zmiennych <- ncol(dane_oryginalne)
liczba_analizowanych_zmiennych
#liczba zebranych obserwacji
liczba_zebranych_obserawacji <- nrow(dane_oryginalne)
liczba_zebranych_obserawacji

#nazwy zmiennych
nazwy_zmiennych <- names(dane_oryginalne) #lub colnames(dane_oryginalne)
nazwy_zmiennych
#####  Przekształcanie zmiennych #####

#logarytm naturalny
logartym_naturalny <- log(dane_oryginalne)
logartym_naturalny
#zapis danych w postaci macierzy
dane_w_postaci_macierzy <- as.matrix(dane_oryginalne)
dane_w_postaci_macierzy
#zapis danych w postaci szeregu czasowego
szereg_czasowy <- ts(logartym_naturalny, start = c(1947,1,1), frequency = 4) 
szereg_czasowy


#####  Wykresy i wstępna analiza poziomów #####

#laczny wykres calego szeregu
wykres <- plot.ts(szereg_czasowy)
wykres

#PĘTLA FOR W R
# for (i in 1:3){piszemy polecenia}
for (i in 1:3){
  print(i)
  print(i^2)
  print("witam")
}
# MACIERZE W R
# M[,1] - PIERWSZA KOLUMNA
# M[,i] - KOLUMNA i
# M[1,] - WIERSZ 1
# M[i,] - WIERSZ i
# M[,c(1,3)] - KOLUMNA 1 i 3 
#laczny wykres poziomow calego szeregu z trendem liniowym
#Analiza poziomów

#liczba opóznien do ACF i PACF

#szereg, acf, pacf
