# Abstrakt

# Wstęp

## Symulacja i wizualizacja pracy bankomatu

Istniejące dotychczasowe symulatory i wizualizacje, ich możliwości. Być może takie nie istniją, nie są publicznie dostępne ani opisane. 

## Zastosowanie

 - dydaktyka - badanie rozkładów, badanie najkrótszych ścieżek zaopatrzenia bankomatów
 - rozkłady - dniowe, godzinowe obciążenia
 - baza danych do gry
 - symulacja samochodów z pieniędzmi, wożących pieniądze - optymalizacja

## Instytucje finansowe i bankomaty

Podstawowe informacje o bankach, instytucjach finansowych, zrzeszeniach finansowych i wypłatach bankomatowych.

# Projekt

## Symulacja

### Symulacja w grach komputerowych

### Generatory liczb losowych i pseudolosowych

### Użyte narzędzia

Przedstawienie użytych narzędzi i motywacja

## Symulator wypłat bankomatów

Cel: symulacja ma reprezentować relistyczne, naturalne rozkłady wypłat bankomatowych.

### Elementy symulacji

#### Karta

Obiektem który wypłaca jest karta, konto bankomatowe

Karta
 - posiada datę ważność
 - jest powiązana z bankiem / instytucją która ją wypuściła
 - może mieć różne waluty

 #### Bankomat

 - ma maksymalną pojemność
 - przynależy do banku / instytucji finansowej

### Parametry symulacji

 - ziarnistość symulacji: godzina
 - okres sumulacji: rok

zdarzenia "nietypowe":
- zostawiamy użytkownikowi - modelowane jako parametry wejściowe symulacji, przedziały czasowe

naturalność symulacji: zrobić okresy symulacji: rozdzielczość godzinowa. definiujemy godzinowo rozkłady w przedziałach. rozkłady muszą pokrywać cały okres symulacji


## Wizualizacja mapowa

definiowanie: na mapie, klikać

Wyróżnianie bankomatów:
 - wielkość kropki - obciążenie bankomatu
 - stos pieniędzy, który maleje w miarę upływania pieniędzy w sejfie bankomatu


# Podsumowanie

## Wnioski

## Problemy

## Rozszerzenia i możliwości rozwoju

 - funkcja wpłatomatu
 - sprawdzanie stanu konta
 - transakcja anulowana - klient rozpoczął transakcje, ale nie wypłacił pieniędzy
