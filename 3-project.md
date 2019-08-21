\chapter{Projekt}

Symulator wypłat z bankomatów, będący tematem tej pracy, daje możliwość symulacji wypłat z sieci bankomatów rozmieszczonych na terenie miasta. Pierwszą częścią projektu jest symulator, który generuje zachowanie bankomatów, wypłaty oraz sytuacje nietypowe, na podstawie wcześniej przygotowanej konfiguracji. Samo przygotowanie parametrów wejściowych w postaci pliku konfiguracyjnego, to zadanie złożone, dlatego drugą częścią projektu jest graficzny interfejs użytkownika. Jego zadaniem jest ułatwienie użytkownikom przygotowania parametrów oraz uruchomienie symulacji, jak również obejrzenie wyników symulacji w postaci wizualizacji. Gotowy wynik symulacji jest dostępny do wyeksportowania i pobrania z interfejsu.

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/usecase.png}
\caption{Przypadki użycia symulatora}
\end{figure}

# Symulator wypłat z bankomatów

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/highlevel.png}
\caption{Wysokopoziomowy diagram architektury symulatora}
\end{figure}

Logika symulatora nie jest bezpośrednio dostępna dla użytkownika. Przykrywa ją warstwa infrastruktury pod postacią dwóch komponentów: *serwera symulacji* oraz *serwera danych*. Użytkownik, poprzez *interfejs graficzny*, komunikuje się z wyżej wymienionymi serwerami, a przez nie z samym symulatorem. Używając interfejsu *edytora* użytkownik przygotowuje *konfigurację*. Poprzez protokół *\gls{http}* jest ona wysyłana do serwera symulacji, który odpowiada za komunikacje z symulatorem.
Wykorzystując parametry wejściowe z konfiguracji symulator przeprowadza symulację, a jej wynik odkłada do *dziennika danych*.
Następnie dane te mogą zostać odczytane przez serwer danych, który poza wynikiem symulacji udostępnia również jej wejściowe parametry.
Gotową symulację można obejrzeć w graficznym interfejsie użytkownika w postaci *wizualizacji*. 

\newpage

## Edytor

\begin{figure}[htbp]
\centering
\includegraphics[width=120mm]{graphics/editor.png}
\caption{Zrzut ekranu edytora symulacji}
\end{figure}

Edytor jest częścią graficznego interfejsu użytkownika tego projektu.
Składa się z trzech głównych elementów:

 1) mapy
 2) edytora parametrów bankomatu
 3) edytora parametrów globalnych

Mapa przedstawia rozmieszczenie bankomatów w przestrzeni. Dane mapowe są dostarczane dzięki wykorzystaniu projektu społecznościowego OpenStreetMap \autocite{openstreetmap:web}. Znajdują się na niej ikony reprezentujące bankomaty. Ich rozmieszczenie przedstawia rzeczywiste położenie bankomatów w okolicy krakowskiego Rynku Głównego. Ich lokalizacja, podobnie jak mapy, uzyskano za pośrednictwem projektu OpenStreetMap. Po kliknięciu w ikonę bankomatu pojawia się okno edycji parametrów bankomatu. 
Wśród nich znajduje się:

 - identyfikator bankomatu
 - współrzędne geograficzne
 - zawartość sejfu bankomatu
 - odstęp czasu pomiędzy uzupełnieniem sejfu bankomatu
 - domyślne obciążenie bankomatu
 - godzinowe obciążenie bankomatu

Po prawej stronie znajduje się edytor parametrów globalnych symulacji. Dzieli się on na trzy sekcje: 
 
 - parametry ogólne
 - domyślne parametry bankomatu
 - parametry wypłat

Parametry ogólne składają się z:

 - nazwę symulacji nadawaną przez użytkownika
 - datę i godzinę rozpoczęcia symulacji
 - datę i godzinę zakończenia symulacji
 - ziarno generatora liczb pseudolosowych

Domyślne parametry bankomatu składają się z:

 - zawartość sejfu bankomatu
 - odstępu czasu pomiędzy uzupełnieniem sejfu bankomatu
 - obciążenia bankomatu

\newpage

Zawartość sekcji parametrów wypłat jest zależna od wybranej funkcji rozkładu prawdopodobieństwa wypłat.

W przypadku wybrania funkcji rozkładu jednostajnego są to:

 - liczba wypłat na godzinę
 - maksymalna wartość wypłaty
 - minimalna wartość wypłaty

Zaś w przypadku wyboru funkcji rozkładu normalnego są to:

 - liczba wypłat na godzinę
 - średnia wartość wypłaty
 - odchylenie standardowe wartości wypłaty

Szczegółowy opis parametrów znajduje się w sekcji \ref{serwer-symulacji}.

Ostatnim elementem edytora parametrów globalnych jest przycisk odpowiadający za rozpoczęcie symulacji. Po jego wciśnięciu konfiguracja przygotowana z użyciem edytora jest przesyłana do serwera symulacji.

Interfejs edytora jest udostępniony w postaci strony internetowej. Dzięki temu można z niego korzystać z dowolnego komputera wyposażonego w przeglądarkę internetową ze wsparciem języka JavaScript, bez potrzeby instalacji żadnego dodatkowego oprogramowania. Aby zapewnić wygodną i interaktywną obsługę aplikacja edytora wykorzystuje JavaScript oraz bibliotekę *React*. Dzięki temu użytkownik może zmieniać parametry symulacji, w tym domyślne oraz globalne, a zmiany automatycznie rozpropagują się do wszystkich komponentów bez udziału serwera symulacji.

## Serwer symulacji

Serwer symulacji odpowiada za komunikacje z symulatorem. Wykorzystuje on protokół HTTP do komunikacji i został zaimplementowany przy użyciu *akka-http*, biblioteki implementującej protokół HTTP, wchodzącej w skład zestawu narzędzi Akka. Udostępnia zasób \gls{http}, `/simulation/{nazwa-symulacji}` wywoływany metodą *POST*, który dla zadanych parametrów uruchamia symulację. Ostatni człon ścieżki jest wybraną przez użytkownika nazwą nowo utworzonej symulacji.

~~~~{ .numberLines caption="Zapytanie HTTP do uruchomienia symulacji"}
POST /simualtion/{nazwa-symulacji} HTTP/1.1
Content-Type: application/json
{dane zapytania - konfiguracja}
~~~~

Parametry zapytania są przekazywane w jego ciele w formacie *\gls{json}*.

\newpage

~~~~{ .numberLines .json caption="Uproszczone dane zapytania"}
{
  "startDate": 1558470392042,
  "endDate": 1559068059000,
  "eventsPerHour": 100,
  "randomSeed": 1,
  "default": {
    "refillAmount": 10000,
    "load": 2,
    "scheduledRefillInterval": 72
  },
  "withdrawal": {
    "min": 10,
    "max": 10000,
    "mean": 100,
    "stddev": 1000,
    "distribution": "Gaussian"
  },
  "atms": [
    {
      "name": "bankomat1",
      "location": [
        50.0622357,
        19.9359087
      ],
      "refillAmount": 50000,
      "scheduledRefillInterval": 24,
      "atmDefaultLoad": 3,
      "hourly": {
        "1551611460000": {
          "load": 5
        }
      }
    }
  ]
}
~~~~

### Opis parametrów wejściowych

 - **startDate** - liczba całkowita będąca datą i godziną początku symulacji w formacie czasu unixowego
 - **endDate** - liczba całkowita będąca datą i godziną końca symulacji w formacie czasu unixowego
 - **eventsPerHour** - liczba całkowita będąca liczbą zdarzeń (wypłat z bankomatów) w symulacji w ciągu godziny
 - **randomSeed** - liczba całkowita będąca ziarnem generatora liczb losowych symulatora
 - **default** - struktura parametrów domyślnych bankomatów
 - **refillAmount** - liczba całkowita będąca wartością zawartości sejfu bankomatu
 - **load** (w default) - liczba całkowita będąca wagą obciążenia bankomatu
 - **scheduledRefillInterval** - liczba całkowita będąca odstępem czasu pomiędzy kolejnymi uzupełnieniami sejfu bankomatu, wyrażonym w godzinach
 - **withdrawal** - struktura parametrów wypłat w symulacji
 - **distribution** - funkcja rozkładu prawdopodobieństwa, dostępne są:
    - Uniform - funkcja odpowiadająca rozkładowi jednorodnemu
    - Gaussian - funkcja odpowiadająca rozkładowi normalnemu (Gaussa)
 - **min** - liczba całkowita będąca minimalną wartością wypłaty (używana tylko w rozkładzie **Uniform**)
 - **max** - liczba całkowita będąca maksymalną wartością wypłaty (używana tylko w rozkładzie **Uniform**)
 - **mean** - liczba całkowita będąca średnią wartością wypłaty (używana tylko w rozkładzie **Gaussian**)
 - **stddev** - liczba całkowita będąca odchyleniem standardowym wartości wypłat (używana tylko w rozkładzie **Gaussian**)
 - **atms** - lista parametrów bankomatów
 - **name** - ciąg znaków będący nazwą bankomatu
 - **location** - dwuelementowa lista będąca lokalizacją bankomatu
 - **refillAmount** - liczba całkowita będąca wartością zawartości sejfu bankomatu; jeśli nie jest ustawiona, brana jest wartość parametru *refillAmount* z sekcji *default*
 - **scheduledRefillInterval** - liczba całkowita będąca odstępem czasu pomiędzy kolejnymi uzupełnieniami sejfu bankomatu, wyrażonym w godzinach; jeśli nie jest ustawiona, brana jest wartość parametru *scheduledRefillInterval* z sekcji *default*
 - **atmDefaultLoad** - liczba całkowita będąca wagą obciążenia danego bankomatu w danej godzinie; jeśli nie jest ustawiona, brana jest wartość parametru *load* z sekcji *default*
 - **hourly** - struktura parametrów godzinnych, kluczem jest godzina przedstawiona w formacie czasu unixowego
 - **load** (w hourly) - liczba całkowita będąca wagą obciążenia danego bankomatu w danej godzinie; jeśli nie jest ustawiona, brana jest wartość parametru *atmDefaultLoad*

W powyższym przykładzie przestawiono konfigurację z pojedynczym bankomatem, lecz można skonfigurować ich wiele. Maksymalna liczba bankomatów jest ograniczona pamięcią operacyjną maszyny, na której przeprowadzana jest symulacja. 

## Serwer danych

Serwer danych udostępnia zarówno parametry wejściowe symulacji oraz jej wyjściowy wynik. 
Konfiguracja z parametrami wejściowymi jest udostępniona pod zasobem `/config/{nazwa-symulacji}` wywołany metodą *GET*.

~~~~{ .numberLines caption="Zapytanie HTTP do pobrania konfiguracji danej symulacji"}
GET /config/{nazwa-symulacji} HTTP/1.1
Accept: application/json
~~~~

Komplet danych jest udostępniony pod zasobem `/{nazwa-symulacji}/log` wywołany metodą GET.

~~~~{ .numberLines caption="Zapytanie HTTP do pobrania kompletu danych symulacji"}
GET /{nazwa-symulacji}/log HTTP/1.1
Accept: application/octet-stream
~~~~

Protokół Websocket wykorzystywany jest w serwerze danych do strumieniowego udostępniania wyników symulacji. Dzięki temu dowolna aplikacja kliencka może dostosować prędkość pobierania danych do własnych potrzeb.
Poprzez Websocket serwer wysyła do klienta dane w postaci wpisów dziennika zdarzeń, po 1000 na raz. Dane w dzienniku są uporządkowane chronologicznie, od najstarszych do najnowszych. Po każdym zapytaniu od klienta serwer wysyła koleją partię danych, aż do końca dziennika.

\begin{figure}[htbp]
\centering
\includegraphics[width=120mm]{graphics/player.png}
\caption{Zrzut ekranu wizualizacji symulacji}
\end{figure}

\newpage

## Wizualizacja

Wizualizacja jest drugą, po edytorze, częścią graficznego interfejsu użytkownika. Można na nim obejrzeć przebieg symulacji w czasie, od początku do końca. Odtwarzanie danych symulacji może zostać zatrzymane oraz wznowione przy użyciu przycisków sterującym. Poza zatrzymywaniem czasu symulacji można go również przyspieszyć, co jest przydatne w przypadku długoterminowych symulacji, oraz spowolnić go, aby szczegółowo obserwować zmiany stanu. 
Widok okna jest analogiczny do tego z edytora. 
Składa się on z czterech głównych elementów:

 1) mapy
 2) okna podglądu parametrów bankomatu
 3) panelu kontrolnego wizualizacji
 4) panelu zdarzeń

Mapa, podobnie jak w przypadku edytora, przedstawia rozmieszczenie bankomatów w przestrzeni. Ikony, poza położeniem bankomatu, przedstawiają również jego stan, do którego należą:

 - \includegraphics[height=15mm]{atm-green.png} - bankomat jest sprawny, a jego sejf jest pełny
 - \includegraphics[height=15mm]{atm-blue.png} - bankomat jest sprawny, a jego sejf jest zapełniony powyżej 50% zaplanowanej pojemności
 - \includegraphics[height=15mm]{atm-yellow.png} - bankomat jest sprawny, a jego sejf jest zapełniony powyżej 10% zaplanowanej pojemności
 - \includegraphics[height=15mm]{atm-red.png} - bankomat jest sprawny, a jego sejf jest pusty

 - \includegraphics[height=15mm]{atm-green-alert.png} - bankomat napotkał problem, a jego sejf jest pełny
 - \includegraphics[height=15mm]{atm-blue-alert.png} - bankomat napotkał problem, a jego sejf jest zapełniony powyżej 50% zaplanowanej pojemności
 - \includegraphics[height=15mm]{atm-yellow-alert.png} - bankomat napotkał problem, a jego sejf jest zapełniony powyżej 10% zaplanowanej pojemności
 - \includegraphics[height=15mm]{atm-red-alert.png} - bankomat napotkał problem, a jego sejf jest pusty

Po kliknięciu w ikonę bankomatu pojawia się okno parametrów bankomatu,  analogicznie do widoku edytora, lecz są w trybie tylko do odczytu. Wśród nich znajduje się parametr przedstawiający bieżącą zawartość sejfu bankomatu, która jest aktualizowana na bieżąco, wraz z postępem symulacji.

Na prawej części ekranu znajduje się panel zdarzeń oraz panel kontrolny wizualizacji oraz panel zdarzeń.
Na górze panelu kontrolnego wyświetlany jest aktualny czas symulacji. Format daty i godziny jest zależny od ustawień regionalnych systemu operacyjnego użytkownika.
Pod wyświetlaczem czasu symulacji umiejscowione są trzy przyciski sterujące symulacją:

 - minus - spowalnia działanie wizualizacji
 - plus - przyspiesza działanie wizualizacji
 - pionowe linie / trójkąt - zatrzymanie / wznowienie działania wizualizacji

Ostatnim elementem panelu kontrolnego jest przycisk eksportu danych symulacji do pobrania.

Poniżej panelu kontrolnego znajduje się panel zdarzeń symulacji. W czasie postępu symulacji umieszczane są znaczące zdarzenia cyklu życia bankomatu, jak opróżnienie lub uzupełnienie zawartości sejfu. Szczegółowy opis zdarzeń w symulacji znajduje się w sekcji \ref{symulator}.

## Symulator

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/components.png}
\caption{Diagram komponentów składowych symulatora}
\end{figure}

Symulator jest kluczowym elementem projektu. Z edytora, poprzez serwer symulacji, przyjmuje konfigurację, na podstawie której przeprowadza symulację wypłat z sieci bankomatów. Wygenerowane dane są zapisywane do dziennika danych, a następnie udostępnione przez serwer danych na potrzeby wizualizacji.

Symulator został zaprojektowany jako system wieloagentowy wykorzystując model aktorowy.
Symulator składa się z pięciu głównych elementów:

 - aktora generatora
 - aktora bankomatu
 - aktora wyjścia
 - aktora efektów ubocznych
 - dziennika danych

## Aktor generatora

Aktor generatora jest kluczowym elementem symulacji. Zawiera generator liczb pseudolosowych, na podstawie którego przygotowuje zdarzenia wejściowe symulacji. Użyty generator jest standardowym generatorem liczb pseudolosowych dostarczanym wraz ze standardową biblioteką języka Java. Należy on do rodziny liniowych generatorów kongruencyjnych o 48-bitowym ziarnie \autocite{random:javadoc:web}. 

Zdarzenia generowane są w modelu czasu dyskretnego. Na każdą godzinę czasu symulacji aktor generatora przygotowuje godzinny rozkład prawdopodobieństwa obciążenia każdego z bankomatów na podstawie dostarczonej przez użytkownika konfiguracji. W każdej godzinie generowane są zdarzenia upływu czasu oraz wypłat pieniędzy. Zdarzenie upływu czasu jest wysyłane do aktora efektów ubocznych o upływie czasu.
Ilość wypłat na godzinę oraz ich wysokość jest definiowana na podstawie konfiguracji. Zdarzenia wypłat są wysyłane do aktorów bankomatów, wybranych na podstawie przygotowanych rozkładów prawdopodobieństwa.

Aktor generatora może wytwarzać dane, a następnie przesyłać je do obsługi w krótszym czasie niż sam czas obsługi. Przeciążone procesy przetwarzające zdarzenia mogą doprowadzić do zakłóceń symulacji. Jeżeli ich skrzynki na wiadomości zostaną przepełnione, otrzymane zdarzenia zostaną odrzucone. Nawet jeśli przepełnienie nie nastąpi, to w przypadku znacznej ilości obciążonych aktorów bankomatów zostanie wysycona pamięć operacyjna maszyny, na której przeprowadzana jest symulacja. Aby do tego nie dopuścić, aktor generatora używa reaktywnych strumieni, które dostosowują prędkość produkcji danych do możliwości odbiorców. W symulatorze, aby połączyć świat reaktywnych strumieni z modelem aktorowym wykorzystywany jest wzorzec *zapytaj (ang. ask pattern)*. Wzorzec ten do asynchronicznego wysyłania wiadomości pomiędzy aktorami dodaje, również asynchroniczne, oczekiwanie odpowiedzi zwrotnej od odbiorcy. Takie połączenie sprzyja dostosowaniu tempa produkcji wiadomości do odbiorców tychże.

## Aktor bankomatu

Każdemu skonfigurowanemu bankomatowi odpowiada aktor bankomatu. Jego główną odpowiedzialnością jest reagowanie na zdarzenia wypłat pieniędzy otrzymanych od aktora generatora. Reakcja jest zależna od aktualnego stanu bankomatu.
Poza wypłatami, istotnym zdarzeniem w cyklu życia bankomatu jest uzupełnienie sejfu. Stan został on zamodelowany w postaci maszyny stanów obsługujących dwa główne stany, *działający* oraz *brak pieniędzy*. Elementami stanu bankomatu jest jego nazwa (identyfikator) oraz zawartość sejfu.
Intuicyjnie zdarzenie wypłaty gotówki zmniejsza zawartość sejfu bankomatu, a uzupełnienie zwiększa. Jeśli wartość wypłaty przekracza bieżącą zawartość sejfu, aktor generuje zdarzenie informujące o niewystarczającej ilości gotówki w bankomacie. W sytuacji, gdy wypłata opróżni sejf, bankomat przechodzi w stan *brak pieniędzy* oraz generuje zdarzenie o braku pieniędzy. Powrót do stanu *działający* jest możliwe jedynie w wyniku otrzymania zdarzenia uzupełnienia sejfu.
Poza zmianą stanu wewnętrznego w reakcji na nadchodzące zdarzenia aktor bankomatu przesyła własne zmiany stanu do aktora wyjścia.

## Aktor wyjścia

Aktor wyjścia odpowiada za trasowanie wiadomości z innych aktorów. Trafiają one *dziennika danych* oraz *aktora efektów ubocznych*. Aktor wyjścia, podobnie jak aktor generatora, łączy reaktywne strumienie z aktorowym modelem przetwarzania. Sam będąc aktorem, przetwarzając otrzymane wiadomości, wkłada je do reaktywnego bufora, którego konsumentem jest dziennik danych. Jeśli czas obsługi dziennika danych jest większy niż tempo napływających wiadomości, bufor, to aktora wyjścia przechowuje je w kolejce. Aby nie dopuścić do przepełnienia kolejki, wprowadzono w niej mechanizm *przeciwciśnienia*. Jego działanie polega na informowaniu producentów o ilości dostępnych zasobów konsumenta. W tym przypadku zasobem jest dostępne miejsc w kolejce. Aktory niestety, komunikując się jedynie asynchronicznie, z natury nie wspierają przeciwciśnienia. W celu obsługi tego mechanizmu wykorzystano wzorzec *zapytaj*, który opisano w sekcji \ref{aktor-generatora}.

## Dziennik danych

Wszystkie dane wytwarzane w trakcie działania symulacji są odkładane w formie dziennika (*ang. log*). Dziennik danych przechowuje zdarzenia otrzymane z aktora wyjścia. Ze względu na fakt, że aktor wyjścia otrzymuje każde zdarzenie, które zaszło w trakcie działania symulacji, dziennik danych również je zawiera. Jego zadaniem jest utrwalenie otrzymanych informacji na dysku twardym maszyny przeprowadzającej symulacje. Spośród rodzajów dostępnej pamięci konwencjonalnego komputera, dysk twardy charakteryzuje się najdłuższym czasem zapisu. Z tego względu dziennik danych jest komponentem symulatora najbardziej narażonym na przeciążenie. Przed takimi sytuacjami chronią go mechanizmy buforowania oraz przeciwciśnienia aktora wyjścia wspomniane w sekcji \ref{aktor-wyjux15bcia}.
W pierwotnej wersji dziennik danych odpowiadał również za kolejność przechowywanych danych. W tym celu wykorzystano algorytm sortowania, który porządkował nadchodzące zdarzenia według ich czasu wystąpienia. Mechanizm ten zajmował znaczną część czasu procesora w symulacji. Dzięki zmianie metody generowania zdarzeń wejściowych, opisanej w sekcji \ref{aktor-generatora}, mechanizm sortowania jest zbędny, ponieważ zdarzenia wejściowe już są posortowane.

~~~~{ .numberLines .json caption="Przykładowe wpisy w pliku dziennika danych"}
{"time":"1558760970472","eventType":"not-enough-money","atm":"3373626720"}
{"amount":99,"balance":82,"time":"1558760970472","eventType":"withdrawal","atm":"1574120501"}
{"amount":318,"balance":203,"time":"1558760970472","eventType":"withdrawal","atm":"3373626720"}
{"time":"1558760970472","eventType":"out-of-money","atm":"1912626490"}
{"amount":99,"balance":82,"time":"1558760970472","eventType":"refill","atm":"1574120551"}
~~~~

Pliki dziennika na dysku zapisywane są w formacie tekstowym w formie ustrukturyzowanego dziennika (*ang. structured log*). Każda linijka zawiera pojedyncze zdarzenie symulacji zserializowane w formacie \gls{json}. Wpisy zawierają informacje niezbędne do zaprezentowania danych na wizualizacji. 
Każde zdarzenie zawiera podstawowe pola, bez względu na typ zdarzenia:

 - **eventType** - typ zdarzenia
 - **time** - czas zajścia zdarzenia
 - **atm** - identyfikator bankomatu, który otrzymał zdarzenie

Ponadto występują pola szczegółowe, specyficzne dla danego typu zdarzenia.

Dla zdarzenia wypłaty gotówki z bankomatu (**withdrawal**) są nimi:

 - **amount** - kwota wypłaty
 - **balance** - stan sejfu bankomatu po wypłacie
 - **state** - stan, w jakim znajduje się bankomat na skutek wypłaty, wśród nich są:
    - **Operational** - bankomat gotowy do użytku
    - **OutOfMoney** - bankomat niezdatny do użytku, brak pieniędzy w sejfie

Analogiczne do powyższych parametrów zawiera zdarzenie uzupełnienia sejfu bankomatu (**refill**):

 - **amount** - kwota uzupełnienia sejfu bankomatu
 - **balance** - stan sejfu bankomatu po uzupełnieniu
 - **state** - stan w jakim znajduje się bankomat na skutek uzupełnienia

## Aktor efektów ubocznych

Znacząca część zachowań zachodzących w symulacji jest wynikiem reakcji na akcję symulowanej populacji, jak wypłata gotówki z bankomatu. Jednakże istnieją aktywności, których zajście nie wynika z zachowania człowieka (lub innego aktora symulacji), a ze środowiska, jak upływ czasu, lub efektów ubocznych akcji. 

Aktor efektów ubocznych jest odpowiedzialny za tego typu zdarzenia. Otrzymuje on informacje o przebiegu symulacji od aktora wyjścia. Na ich podstawie planuje zajście zdarzenia będącego wynikiem innego zdarzenia.

Wiadomości przychodzące są dzielone na trzy kategorie:

 - **bodźce** - których wynikiem jest zaplanowanie zdarzenia
 - **wykonawcy** - na ich podstawie podejmowana jest decyzja o wykonaniu zaplanowanych zdarzeń
 - inne - ignorowane przez aktora efektów ubocznych

Zaplanowane zdarzenia są przechowywane w kolejce priorytetowej, posortowanej po czasie planowanej emisji.

Aktor efektów ubocznych na początku swojego działania wysyła wiadomości do samego siebie, w których znajdują się informacje niezbędne do zaplanowania uzupełnienia sejfu bankomatu dla każdego bankomatu skonfigurowanego w symulacji. Wiadomości te są bodźcem do umieszczenia zdarzeń uzupełnienia w kolejce, gdzie oczekują na odpowiednie zdarzenie *upływu czasu*.
Zdarzenie upływu czasu jest podstawową wiadomością wykonawcy. W skutek otrzymania zdarzenia tego typu aktor efektów ubocznych opróżnia kolejkę oczekujących zdarzeń, aż natrafi na takie, którego czas planowanego zajścia jest późniejszy niż obecnie obsługiwanego zdarzenia upływu czasu.
Jeśli zdarzenie wyciągnięte z kolejki oznacza uzupełnienie sejfu bankomatu, to aktor efektów ubocznych planuje kolejne takie zdarzenie dla danego bankomatu z datą wystąpienia przesuniętą w przyszłość o wartość zdefiniowaną w konfiguracji bankomatu.

\newpage

# Struktura projektu

Katalog projektu składa się z dwóch głównych podkatalogów: 
 
 - **webapp** - zawierającym kod źródłowy warstwy prezentacji
 - **src** -  zawierającym pozostały kod źródłowy warstw komunikacji, konfiguracji i symulacji

Poza nimi w projekcie znajdują się narzędzia oraz pliki konfiguracyjne niezbędne do zbudowania aplikacji z kodu źródłowego, konfiguracji kompilatora oraz zarządzania zależnościami zewnętrznymi i bibliotekami.

Katalog webapp jest podzielony na podkatalogi:

 - **config** - z konfiguracją kompilatora
 - **node_modules** - z modułami bibliotecznymi
 - **scripts** - ze skryptami uruchamiania projektu
 - **public** - ze statycznymi plikami serwera, jak kod HTML strony startowej
 - **src** - z kodem źródłowym aplikacji przeglądarkowej

Podkatalog src mieści w sobie dziesięć plików zawierających:

 - 915 linii kodu w języku *JavaScript* warstwy wizualizacji
 - 69 linii *\gls{css}* odpowiadających za stylowanie aplikacji

Katalog src znajdujący się w katalogu głównym składa się z zagnieżdżonych podkatalogów:

 - main/resources - z konfiguracją aplikacji serwerowej oraz stanem początkowym i konfiguracją wejściową symulacji
 - main/scala/io.github.pzmi.atmsim - z kodem źródłowym aplikacji serwerowej

Podstawowa konfiguracja wejściowa jest plikiem \gls{json} zawierającym 1261 linii.
Zaś kod aplikacji stanowi 568 linii kodu w języku Scala. 

\newpage

# Wydajność symulatora

Oprogramowanie symulacyjne można opisać przyjętym modelem symulacji, charakterystyką jego parametrów wejściowych, typem oraz własnościami generatora liczb losowych. Niewątpliwie istotną cechą symulatora jest jego wydajność. 

Celem pracy jest stworzenie symulatora, który jest w stanie przeprowadzić symulację długich okresów, takich jak rok, w rozsądnym czasie, używając sprzętu porównywalnego z komputerem domowym.
Na potrzeby tej pracy wydajność symulatora definiujemy prędkość, z jaką może on zasymulować zadany okres.

### Warunki eksperymentu

Przeprowadzono trzy testy wydajności w zależności od:

 - liczby bankomatów
 - liczby zdarzeń na godzinę czasu symulacji
 - okresu symulacji

Parametry poza zmiennymi poszczególnych testów są stałe i wynoszą:

 - okres symulacji: 10 godzin
 - liczba bankomatów: 100
 - ziarno generatora liczb losowych: 1
 - poziom uzupełnienie sejfu bankomatu: 10000
 - poziom obciążenia bankomatu: niski
 - odstęp czasu pomiędzy uzupełnieniami sejfu bankomatu: 72 godziny
 - rozkład wypłat gotówki: rozkład Gaussa
 - średnia wysokość wypłaty gotówki: 100
 - odchylenie standardowe wysokości wypłaty gotówki: 10000

Pomiary zostały przeprowadzone na następującym sprzęcie komputerowym:

 - system operacyjny: macOS Mojave 10.14.6 18G84 x86_64
 - jądro systemowe: 18.7.0
 - procesor: Intel i7-8559U (8) @ 2.70GHz
 - karta graficzna: Intel Iris Plus Graphics 655
 - pamięć operacyjna: 16384MiB

 Wszystkie warianty, w których zapisano wynik, dla każdego eksperymentu poprzedzono ponownym uruchomieniem symulatora oraz dwoma rozruchowymi uruchomieniami symulatora z parametrami identycznymi z tymi z danego wariantu.

\newpage

### Zmienna liczba bankomatów

Eksperyment zależności liczby bankomatów przeprowadzono w siedmiu wariantach, zmieniając liczbę skonfigurowanych bankomatów: 0, 1, 10, 100, 1000, 10000, 100000.

| Liczba bankomatów | Czas przetwarzania (s) |
|-------------------|------------------------|
| 0                 | 0.018585814            |
| 1                 | 3.218749338            |
| 10                | 3.308612662            |
| 100               | 2.592305945            |
| 1000              | 2.176936267            |
| 10000             | 7.171100241            |
| 100000            | 67.38502417            |

Table: Czas przetwarzania w zależności od liczby bankomatów

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/benchmark-atms-direct.png}
\caption{Wykres czasu przetwarzania w zależności od liczby bankomatów}
\end{figure}

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/benchmark-atms-log.png}
\caption{Logarytmiczny wykres czasu przetwarzania w zależności od liczby bankomatów}
\end{figure}

\pagebreak

Wariant z liczbą bankomatów równą 0 jest próbą kontrolną. 
Warianty z liczbą bankomatów od 1 do 1000 włącznie zwróciły zbliżone czasy przetwarzania, które oscylują pomiędzy 2.17 sekund a 3.3 sekund, przy czym warianty z liczbą bankomatów 100 i 1000 uzyskały lepszy wynik (krótszy czas przetwarzania) niż te z 1 i 10.
Wariant z liczbą bankomatów równą 10000 już odstaje do poprzednich wyników osiągając czas przetwarzania ponad dwukrotnie większy od najwyższego wyniku z poprzedzających prób.
Czas przetwarzania ostatniego z wariantów, z liczbą bankomatów równą 100000, uzyskał czas niemalże dziesięć razy większy niż próba poprzednia.

Pierwszą znaczącą różnicę wynikach można zaobserwować po przekroczeniu 1000 bankomatów. Zmiana ta wynika z maksymalnej liczby wątków skonfigurowanej dla procesu symulatora, który wynosi dokładnie 1000.
Zrzut wątków procesu symulatora przedstawia wiele wątków oczekujących w kodzie aktora bankomatu na uzyskanie odpowiedzi zwrotnej od aktora wyjścia. Oczekiwanie to wynika z zastosowania wzorca *zapytaj*. Aktory wyjścia oraz efektów ubocznych wyposażone, każdy wyposażony w jedną kolejkę skrzynki odbiorczej muszą obsłużyć wiadomości przychodzące od dużej liczby aktorów bankomatów wykonująca obliczenia w sposób współbieżny. Dodatkowo aktor wyjścia jest obciążony operacjami wejścia wyjścia na dysku.

\pagebreak

Zachowanie to można zinterpretować jako przypadek zastosowania *prawa Amdhala* \autocite{amdahl1967validity} lub *prawa Gustafsona* \autocite{gustafson1988reevaluating}, które w mówi, że maksymalne przyspieszenie przetwarzania jest ograniczone przez jego część, której nie da się zrównoleglić. W tym przypadku ścieżka wykorzystująca wzorzec zapytaj, zastosowana w celu zabezpieczenia przetwarzania, zachowuje się jak nierównoległe wykonywanie programu, blokując obliczenia w aktorach bankomatów.

### Zmienna liczba zdarzeń na godzinę symulacji

Eksperyment zależności liczby zdarzeń na godzinę symulacji przeprowadzono w sześciu wariantach, zmieniając liczbę skonfigurowanych bankomatów: 0, 1, 10, 100, 1000, 10000.

| Liczba wypłat gotówki na godzinę czasu symulacji | Czas przetwarzania (s) |
|--------------------------------------------------|------------------------|
| 0                                                | 0.250330537            |
| 1                                                | 0.264598115            |
| 10                                               | 0.389471400            |
| 100                                              | 2.658253438            |
| 1000                                             | 30.12316105            |
| 10000                                            | 295.2026618            |

Table: Czas przetwarzania w zależności od liczby wypłat gotówki na godzinę czasu symulacji

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/benchmark-events-direct.png}
\caption{Wykres czasu przetwarzania w zależności od liczby wypłat gotówki na godzinę czasu symulacji}
\end{figure}

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/benchmark-events-log.png}
\caption{Logarytmiczny wykres czasu przetwarzania w zależności od liczby wypłat gotówki na godzinę czasu symulacji}
\end{figure}

\pagebreak

Wariant z liczbą bankomatów równą 0 jest próbą kontrolną. Można zaobserwować liniową zależność czasu przetwarzania do liczby zdarzeń na godzinę symulacji. Zwiększając liczbę zdarzeń dziesięciokrotnie, czas przetwarzania również rośnie dziesięciokrotnie.

### Zmienny okres symulacji

Eksperyment zależności okresu symulacji przeprowadzono w siedmiu wariantach, zmieniając liczbę skonfigurowanych bankomatów: 0, 1, 10, 100, 1000, 10000, 100000.

| Okres symulacji (h)   | Czas przetwarzania (s)     |
|-----------------------|----------------------------|
| 0                     | 0.04884319                 |
| 1                     | 0.04296004                 |
| 10                    | 0.07900505                 |
| 100                   | 0.20033556                 |
| 1000                  | 1.34298085                 |
| 10000                 | 12.16457639                |
| 100000                | 106.68885781               |

Table: Czas przetwarzania w zależności od okresu symulacji

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/benchmark-length-direct.png}
\caption{Wykres czasu przetwarzania w zależności od okresu symulacji}
\end{figure}

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/benchmark-length-log.png}
\caption{Logarytmiczny wykres czasu przetwarzania w zależności od okresu symulacji}
\end{figure}

\newpage

Wariant z liczbą bankomatów równą 0 jest próbą kontrolną. Można zaobserwować zbliżoną do liniowej zależność czasu przetwarzania do liczby zdarzeń na godzinę symulacji. Zwiększając liczbę zdarzeń o rząd wielkości, czas przetwarzania również rośnie o rząd wielkości. Nie jest to tak jednoznaczna zależność, jak w przypadku zmiennej liczby zdarzeń na godzinę czasu symulacji. 
Zgodnie z założeniami projektu symulator powinien symulować długie okresy czasu w rozsądnym czasie. Biorąc pod uwagę, że rok nieprzestępny składa się 8760 godzin, wariantem najbliższym tej liczbie jest wariant numer 6 z okresem symulacji równym 10000 godzin, którego czas przetwarzania wyniósł 12 sekund. Jednakże należy zwrócić uwagę na fakt, że tej konfiguracji wykonywane jest jedynie 100 wypłat gotówki na godzinę ze 100 bankomatów. Analizując dane statystyczne wypłat z bankomatów w Polsce \autocite{nbp:stats} można obliczyć, że średnia liczba wypłat dla pojedynczego bankomatu wynosi 3 na godzinę, a w opisywanym wariancie liczba ta wynosi jedną wypłatę na godzinę. Biorąc pod uwagę wyniki poprzednich wariantów, można wywnioskować, że czas przetwarzania symulacji jest liniowo zależny od liczby wypłat na godzinę symulacji.
W świetle powyższych danych można wywnioskować, że zwiększając trzykrotnie liczbę wypłat z bankomatów, tak aby średnia odpowiadała średniej w Polsce, czas przetwarzania wydłuży się trzykrotnie do czasu przetwarzania 36 sekund. 