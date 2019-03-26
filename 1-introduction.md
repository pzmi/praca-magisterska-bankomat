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

## Symulacja \autocite{Hartmann:simulation:2005} \autocite{hartmann:2015:bigsim}

### Symulacja w grach komputerowych \autocite{vogel:simulation}

### Generatory liczb losowych i pseudolosowych \autocite{Ecuyer:rng} \autocite{Hellekalek:rng} \autocite{Ecuyer:simulation:rng}

### Użyte narzędzia

Przedstawienie użytych narzędzi i motywacja

### Akka

### Model aktorowy \autocite{todd:2012:simulation} \autocite{barat:2017:simulation} \autocite{aceto:2011:simulations} \autocite{Waite2013ScaNSU} \autocite{Harrison:2015:actors}

TODO: przepisać i uzupełnić

Model aktorowy jest modelem programowania, w którym przetwarzanie jest wykonywane z natury współbieżnie. Podstawową jednostką wykonawczą tego modelu jest *aktor*.

Aktor jest jednostką wykonawczą, która odwzorowuje każdą przychodzącą wiadomość na krotkę składającą się z:

 - skończonego zbioru komunikatów przesłanych do innego aktora;
 - nowego zachowania, które wpłynie na odpowiedź następnego przetwarzanego komunikatu;
 - skończonego zbioru nowo utworzonych aktorów.

\begin{figure}[htbp]
\centering
\includegraphics[width=140mm]{graphics/actor-messages.png}
\caption{Akcje w modelu aktorowym \autocite{karmani2009actor}}
\end{figure}

Aktorzy, w odróżnieniu od modelu współdzielonych zmiennych, nie dzielą między sobą wspólnych obszarów pamięci. Informacje w obliczeniach aktorów mogą być przekazywane, tylko i wyłącznie, poprzez wiadomości. Model ze współdzieloną pamięcią nie dostarcza żadnych mechanizmów abstrakcji i ukrywania informacji. Aby stwierdzić czy inny obiekt otrzymał dostęp lub zmodyfikował wykorzystywane zmienne wymagane jest zdefiniowanie odpowiedniego protokołu. Co więcej, nie można stwierdzić czy na danych nie zostały wykonane niewłaściwe lub wręcz niepożądane operacje. Jednym ze sposobów radzenia sobie z sytuacjami tego typu jest wykorzystywanie blokad i synchronizacji. Model aktorowy zakłada, że komunikacja pomiędzy aktorami nie jest synchroniczna, a akcje stanowią częściowy porządek. Nadchodzące wiadomości trafiają do skrzynki odbiorczej, gdzie czekają na przetworzenie. Wszystko to ma służyć zapobieganiu blokowania i przetrzymywania zasobów, co może doprowadzić do zakleszczeń (ang. *deadlock*). Podstawową informacją zawartą w wiadomości jest istnienie innego *aktora*. Jest to spowodowane tym, że *aktor* A może skomunikować się z *aktorem* B jedynie znając jego *nazwę*. Tę wiedzę może posiąść jeśli otrzymał ją w chwili powstania lub poznał  
w wyniku przetwarzania nadchodzących wiadomości. Co więcej, komunikacja jest transparentna. Pomimo "świadomości" istnienia innego aktora, nie jest znane jego położenie. Umożliwia to utworzenie systemu aktorów fizycznie rozproszonych pomiędzy wiele maszyn połączonych w sieć oraz dynamiczną rekonfigurację topologii \autocite{karmani2009actor, hewitt1977laws, agha86actors}.


### Akka Streams

### Reaktywne strumienie

## Symulator wypłat bankomatów

Cel: symulacja ma reprezentować realistyczne, naturalne rozkłady wypłat bankomatowych.

### Elementy symulacji

### Karta

 - jest obiektem, który wypłaca pieniądze z bankomatu
 - posiada datę ważność
 - jest powiązana z bankiem / instytucją która ją wypuściła
 - może mieć różne waluty

### Bankomat

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
