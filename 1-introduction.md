# Abstrakt

# Wstęp

## Symulacja i wizualizacja pracy bankomatu

Istniejące dotychczasowe symulatory i wizualizacje, ich możliwości. Być może takie nie istnieją, nie są publicznie dostępne ani opisane. 

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

Cel: symulacja ma reprezentować realistyczne, naturalne rozkłady wypłat bankomatowych.

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

Symulacja musi być realistyczna, naturalna.

 - ziarnistość symulacji: godzina
 - okres symulacji: rok

Rozkłady muszą pokrywać cały okres symulacji.

## Wizualizacja

Wizualizacja przedstawia pozycje bankomatów na mapie, ich stan sejfu oraz natężenie ruchu oraz błędy.
Udostępnia definiowanie konfiguracji symulacji.

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
