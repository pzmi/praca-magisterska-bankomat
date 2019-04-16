# Abstrakt

# Wstęp

## Symulacja i wizualizacja pracy systemu bankomatów

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

Eksperymenty, fizyczne, ekonomiczne lub socjologiczne, w świecie rzeczywistym bywają skomplikowane lub niemożliwe do przeprowadzenia. Symulacja jest procesem umożliwiającym takie eksperymenty poprzez proces reprezentacji świata rzeczywistego jako uproszczonego, abstrakcyjnego modelu. W wielu przypadkach wykorzystywana jest losowość, aby wprowadzić element różnorodności do symulacji. Umożliwia to naukowcom wykorzystanie statystycznych obserwacji do uzupełnienia szczegółów uproszczonego modelu, których nie da się przedstawić w modelu matematycznym lub czynniki ten nie mają bezpośredniego wpływu na badanie. Połączenie losowości z możliwością sterowania warunkami modelu umożliwia generowanie wyników poprzez zapis cyklu uruchomień modelu i statystyczną ich analizę. Obiektem dyskusji w tej pracy są symulacje komputerowe. chociaż historia symulacji sięga daleko przed powstaniem komputerów. Przed komputerami, dużą rolę w symulacjach odgrywało modelowanie matematyczne. W tej dziedzinie cały system jest przedstawiony w postaci zbioru równań, obliczanych dla zadanych parametrów. W kontraście, symulacje opierają się na uruchomieniach modelu, dla których dwa wyniki z tymi samymi warunkami początkowymi mogą być inne. Symulacje komputerowe dzielą się na dwie kategorie. Pierwszą z nich stanowią symulacje modele, w których aktorzy, ludzie lub inne elementy świata rzeczywistego, wchodzą w interakcję z systemem w czasie symulacji. Systemy te są często nazywane systemami "w pętli" lub symulacją z "ludźmi w pętli". Sztandarowymi przykładem tego typu symulacji są gry komputerowe, interaktywne systemy treningu wojskowego oraz systemy testowania maszyn przemysłowych. Drugą z kategorii są symulacje, w których cały system jest zaprojektowany jako oprogramowanie komputerowe. Wśród nich znajdują się symulacje ze zdarzeniami dyskretnymi, symulacje z czasem dyskretnym oraz symulacje statystyczne/Monte Carlo. Kluczową cechą wyróżniającą metody "w pętli" od pozostałych jest wymaganie odpowiedzi w czasie rzeczywistym.  Systemy "w pętli" muszą odpowiadać w zadanym czasie, aby zewnętrzny obserwator, człowiek lub maszyna, otrzymał odpowiedź na wykonaną akcje. W przeciwieństwie do systemów "W pętli", pozostałe systemy generują wyniki symulacji w dowolnych odstępach czasowych.

W symulacjach ze zdarzeniami dyskretnymi, modelowany system jest przedstawiony jako stan i zbiór zdarzeń, które wpływają na niego. Zdarzenia są częściowo uporządkowane wedle czasu, w którym się wydarzyły w modelu. Zdarzenia są przechowywane w uporządkowanej strukturze, jak kolejka, oraz przetwarzane przez algorytm symulacji. Algorytmy oparte o dyskretne zdarzenia implementują pętlę zdarzeń, która przetwarza zdarzenia dopóki nie zajdzie warunek końcowy. Warunkami stopu może być wyczerpanie kolejki zdarzeń, liczba przetworzonych zdarzeń, upływ czasu w modelu lub warunki opierające się o stan symulacji.

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


#### Bankomaty

 - ma maksymalną pojemność
 - przynależy do banku / instytucji finansowej

### Parametry symulacji

Symulacja musi być realistyczna, naturalna.

 - ziarnistość symulacji: godzina
 - okres symulacji: rok

Rozkłady muszą pokrywać cały okres symulacji.

## Wizualizacja na mapie

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
