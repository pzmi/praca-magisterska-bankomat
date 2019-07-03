\chapter{Wstęp}

Modele symulacyjne są częścią życia codziennego, więc pojęcie symulacji nie powinno być obce nikomu. Prognozy pogody codziennie prezentują ludziom wyniki symulacji pogodowych, na których można obserwować ruchy frontów pogodowych na kilka dni do przodu. Gry komputerowe, które stały się częścią kultury masowej, symulują różnorodne zachowania, umożliwiając każdemu sprawdzenie swoich możliwości jako kierowcy rajdowi, podróżnicy czy architekci. Symulacje umożliwiają w szybki sposób zweryfikować hipotezy i przeprowadzać obserwacje procesów, które w świecie rzeczywistym mogą trwać latami. 

Dynamiczny rozwój sprzętu komputerowego umożliwia tworzenie coraz bardziej złożonych algorytmów oraz dokładniejsze modelowanie rzeczywistości.
Symulacje nie muszą opierać się na oprogramowaniu komputerowym. Modele kolei i zdalnie sterowane pojazdy, jak łodzie i samochody, są przykładami symulacji fizycznych spotykanych na co dzień.
Innym codziennym procesem jest bankowość. Większość Polaków posiada rachunek bankowy i korzysta z usług finansowych banków \autocite{nbp:raportpolakow}.
W Polsce tylko w 2018 dokonano prawie 710 milionów transakcji w bankomatach (*ang. \gls{atm}*) na łączną wartość 429 miliardów złotych. \autocite{nbp:bankomaty}.

Na rynku można znaleźć wiele przykładów oprogramowania służącego do symulacji automatów bankomatowych \autocite{oclf:atm:simulation, tranzway:atm:simulator}. Udostępniają one zbiór interfejsów użytkownika końcowego wielu producentów sprzętu i oprogramowania do bankomatów. Z jego pomocą użytkownik może dokonać szeregu różnych operacji w systemie bankomatowym, jak wypłata gotówki, przelew czy opłata rachunków. Symulatory te umożliwiają również symulację szeregu dostępnych na rynku protokołów komunikacyjnych oraz operacji serwisowych dokonywanych przez operatorów bankomatu.
Są to zaawansowane aplikacje, realistycznie odwzorowujące pracę pojedynczej maszyny. Niestety nie udało się odnaleźć oprogramowania zdolnego do symulowania interakcji ludzi z siecią wielu bankomatów na terenie miasta na podstawie przygotowanej konfiguracji i danych wejściowych.

# Cel pracy

Celem pracy jest stworzenie symulatora wypłat z sieci bankomatów na terenie miasta oraz narzędzi niezbędnych do konfiguracji i obserwacji wyników symulacji. 
Kluczowymi cechami zaprojektowanego symulatora są: symulowanie długich okresów w rozsądnym czasie przy użyciu sprzętu porównywalnego z komputerem domowym oraz wysoka i łatwa konfigurowalność modelu.

W skład stworzonych narzędzi wchodzi interfejs graficzny do wizualizacji wyników symulacji na mapie, w czasie. Interfejs graficzny umożliwia również konfigurację parametrów wejściowych modelu symulacyjnego.

# Zastosowanie

Wyniki tej pracy można zastosować w dziedzinach naukowych, dydaktycznych lub rozrywkowych. Wykorzystując podstawową funkcję symulacyjną naturalnym zastosowaniem są badania naukowe, których przykładem może być badanie wpływu wydarzeń społecznych, jak imprezy masowe, na infrastrukturę bankomatową. W dydaktyce przygotowany symulator można wykorzystać na zajęciach z tematyki badania rozkładów prawdopodobieństwa oraz opracowywania najkrótszych ścieżek dla pojazdów zaopatrzenia bankomatów. Logistyka odgrywa znaczną rolę w obsłudze infrastruktury bankowej. Przy dziesiątkach tysięcy bankomatów w całej Polsce, optymalizacja uzupełniania sejfów bankomatowych jest złożonym, wielowymiarowym problemem. Gry komputerowe są popularną rozrywką budującą coraz większy rynek na świecie \autocite{pwc2019outlook}. Zserializowane wyniki symulacji można wykorzystać jako bazę danych do gry komputerowej

# Plan pracy

TODO: plan pracy po zakończeniu

\chapter{Powiązane prace}

# Bankomaty

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/liczba-bankomatow.png}
\caption{Liczba bankomatów w Polsce na przestrzeni lat\autocite{nbp:stats}}
\end{figure}

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/liczba-transakcji.png}
\caption{Liczba transakcji bankomatowych w Polsce na przestrzeni lat\autocite{nbp:stats}}
\end{figure}

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/wartosc-transakcji.png}
\caption{Wartość transakcji bankomatowych w Polsce na przestrzeni lat\autocite{nbp:stats}}
\end{figure}

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/srednia-wartosc-transakcji.png}
\caption{Średnia wartość transakcji bankomatowych w Polsce na przestrzeni lat\autocite{nbp:stats}}
\end{figure}

Podstawowe informacje o bankach, instytucjach finansowych, zrzeszeniach finansowych i wypłatach bankomatowych.

# Symulacja

Imitacja oznacza naśladowanie lub kopiowanie czegoś innego. Przykładowo fałszerz naśladuje pracę wielkich artystów, systemy projektowania wspomaganego komputerowo (*ang. \gls{cad}*) dostarczają imitacji procesów produkcyjnych, mapa procesów biznesowych jest imitacją pracy organizacji, a model kolei jest fizyczną imitacją prawdziwego składu kolejowego. Wszystkie z powyższych przykładów można określić mianem symulacji. Jednakże spośród nich moża wyróżnić dwa zbiory. Pierwszym z nich są przykłady uwzględniające upływ czasu, a drugą stanowią te, na które czas nie wpływa. Stąd wywodzi się pojęcie symulacji statycznej, która reprezentuje proces w konkretnym momencie czasu, oraz symulacji dynamicznej, która odwzorowuje proces zmieniający się w czasie. Termin symulacja najczęściej odnosi się do symulacji dynamicznej. 
Bazując na wcześniejszym opisie można zdefiniować pojęcie symulacji komputerowej. Jest to komputerowe odwzorowanie procesu zmieniającego się w czasie. Procesem jest w tym przypadku zbiór elementów działających we wspólnym celu. Przykładowo pogoda jest zbiorem składającym się między innymi ze słońca, wody i lądu, którego celem jest utrzymanie życia. 
Spośród istniejących procesów możemy wyróżnić:

 * procesy naturalne - procesy powstałe wraz z wszechświatem, na przykład: atomy, pogoda, układ słoneczny
 * zaprojektowane procesy fizyczne - fizyczne procesy stworzone przez człowieka, na przykład: budynki, pojazdy
 * zaprojektowane abstrakcyjne proesy - abstrakcyjne procesy stworzone przez człowieka, na przykład: matematyka, literatura
 * procesy interakcji ludzkich - świadome lub nieświadome procesy interakcji ludzkiej, na przykład: rodzina, miasto, polityka \autocite{checkland1981systems}

Wiele procesów jest podatnych na zmienność. Może być ona przewidywalna, otwieranie więcej kas w supermarkecie w ciągu dnia w reakcji na zmienną liczbę kupujących w ciągu dnia. Zmienność może być również nieprzewidywalna, jak tempo przybywania pacjentów na szpitalny oddział ratunkowy.

Nie tylko zmienność wpływa na stopień skomplikowania procesu. Jego elementy często są połączone ze sobą i wywierają wzajemny wpływ w czasie. 

W związku ze zmiennością procesów, skomplikowaniem i zawiłymi zależnościami w nich bardzo trudnym lub wręcz niemożliwym jest przewidywanie ich właściwości. Modele symulacyjne przedstawiają jawnie zmienność, połączenia pomiędzy elementami oraz złożoność procesów. W rezultacie przewidywalność symulacji jest znacznie łatwiejsza, umożliwia porównywanie alternatywnych parametrów.

Symulacje nie są jedyną metodą analizowania i rozwijania procesów. Innym podejściem jest przeprowadzenie eksperymentów w świecie rzeczywistym. Przykładem może być zmiana układu hali fabrycznej. Modele symulacyjne posiadają szereg zalet i wad, które należy wziąć pod uwagę.

Pierwszą z zalet jest koszt. Eksperymenty w świecie rzeczywistym bywają kosztowne. Modyfikacja codziennej działalności może powodować przerwy w działaniu procesów, prowadzić do spadków wydajności, niezadowolenia lub utraty klientów. W przypadku symulacji, przetestowanie zmiany wiąże się jedynie z kosztem uruchomienia symulacji ze zmodyfikowanymi parametrami, bez przerw w działaniu rzeczywistego systemu. 
Innym aspektem jest czas. Eksperyment może trwać miesiącami lub dłużej aby móc wnioskować na temat jakości wprowadzonych zmian. W zależności od skomplikowania modelu, mocy obliczeniowej komputera symulację można przeprowadzić wiele razy szybciej niż w czasie rzeczywistym. W związku z tym wyniki można otrzymać w ciągu minut lub godzin. Dodatkowo symulację można przeprowadzić na przestrzeni długich okresów, nawet lat.
Kolejną zaletą jest fakt, że symulację można przeprowadzić bez istniejącego systemy. W przypadkach wielu modele symulacyjne powstają przed rzeczywistym systemem. 
W przypadku rozważania kilku alternatywnych możliwości kontrola nad warunkami eksperymentu jest niezwykle przydatna. Jest to trudne do osiągnięcia eksperymentując z rzeczywistym procesem. 
Symulacja nie jest jedyną istniejącą metodą modelowania rzeczywistości. Do innych należą między innymi programowanie liniowe, programowanie dynamiczne oraz metody heurystyczne jak symulowane wyżarzanie lub algorytmy genetyczne. 
Symulacja może być atrakcyjniejsza od pozostałych metod ze względu na łatwość modelowania zmienności, co w niektórych przypadkach jest niemożliwe przy zastosowaniu metod alternatywnych.

Pomimo wielu zalet symulacja posiada również swoje wady.
Oprogramowanie symulacyjne niekoniecznie jest tanie, a w przypadku nowatorskich modeli może wymagać wytworzenia zupełnie nowej aplikacji. 
Ponadto samo modelowanie potrafi być czasochłonne, a wyniki nie są natychmiastowe. 
Aby stworzyć model potrzebna jest znacząca ilość informacji, które mogą być niedostępne. 
Jednak dane to nie wszystko. Potrzeba specjalistycznej wiedzy, wykraczającej poza wytwarzanie oprogramowania. Myślenie wysokopoziomowe, konceptualne, wiedza statystyczna oraz umiejętność zarządzania projektem często są niezbędne tworząc symulację od podstaw.
Największa zaleta symulacji jest także jej największą wadą. Możliwość przeprowadzania eksperymentów komputerowych w oderwaniu od rzeczywistości wprowadza dozę niepewności. Analizując wyniki symulacji należy przyłożyć szczególną uwagę na to, że powstały na podstawie pewnych założeń oraz uproszczonego modelu rzeczywistości.

Eksperymenty, fizyczne, ekonomiczne lub socjologiczne, w świecie rzeczywistym bywają skomplikowane lub niemożliwe do przeprowadzenia. Symulacja jest procesem umożliwiającym takie eksperymenty poprzez proces reprezentacji świata rzeczywistego jako uproszczonego, abstrakcyjnego modelu. Aby wprowadzić element różnorodności do symulacji, w wielu przypadkach wykorzystywana jest losowość. Umożliwia to naukowcom wykorzystanie statystycznych obserwacji do uzupełnienia szczegółów uproszczonego modelu, których nie da się przedstawić w modelu matematycznym lub czynniki ten nie mają bezpośredniego wpływu na badanie. Połączenie losowości ze sterowaniem warunkami modelu umożliwia generowanie wyników poprzez zapis cyklu uruchomień modelu i statystyczną ich analizę. Obiektem dyskusji w tej pracy są symulacje komputerowe, chociaż historia symulacji sięga daleko przed powstaniem komputerów. Przed komputerami, dużą rolę w symulacjach odgrywało modelowanie matematyczne. W tej dziedzinie cały system jest przedstawiony w postaci zbioru równań, obliczanych dla zadanych parametrów. W kontraście symulacje opierają się na uruchomieniach modelu, dla których dwa wyniki z tymi samymi warunkami początkowymi mogą być inne. 

Symulacje komputerowe dzielą się na dwie kategorie. Pierwszą z nich stanowią modele, w których aktorzy, ludzie lub inne elementy świata rzeczywistego, wchodzą w interakcję z systemem w czasie symulacji. Systemy te są często nazywane systemami "w pętli" lub symulacją z "ludźmi w pętli". Sztandarowymi przykładem tego typu symulacji są gry komputerowe, interaktywne systemy treningu wojskowego oraz systemy testowania maszyn przemysłowych. Drugą z kategorii są symulacje, w których cały system jest zaprojektowany jako oprogramowanie komputerowe. Wśród nich znajdują się symulacje ze zdarzeniami dyskretnymi, symulacje z czasem dyskretnym oraz symulacje statystyczne/Monte Carlo. Kluczową cechą wyróżniającą metody "w pętli" od pozostałych jest wymaganie odpowiedzi w czasie rzeczywistym.  Systemy "w pętli" muszą odpowiadać w zadanym czasie, aby zewnętrzny obserwator, człowiek lub maszyna, otrzymał odpowiedź na wykonaną akcje. W przeciwieństwie do systemów "W pętli" pozostałe systemy generują wyniki symulacji w dowolnych odstępach czasowych.

W symulacjach ze zdarzeniami dyskretnymi modelowany system jest przedstawiony jako stan i zbiór zdarzeń, które wpływają na niego. Zdarzenia są częściowo uporządkowane wedle czasu, w którym się wydarzyły w modelu. Zdarzenia są przechowywane w uporządkowanej strukturze, jak kolejka, oraz przetwarzane przez algorytm symulacji. Algorytmy oparte o dyskretne zdarzenia implementują pętlę zdarzeń, która przetwarza zdarzenia, dopóki nie zajdzie warunek końcowy. Warunkami stopu może być wyczerpanie kolejki zdarzeń, liczba przetworzonych zdarzeń, upływ czasu w modelu lub warunki opierające się o stan symulacji. Czas jest modelowany jako znacznik ostatnio przetworzonego zdarzenia. W każdym cyklu iteracji pętli zdarzeń najwcześniejsze zdarzenie jest ściągane z kolejki, aby je przetworzyć. W przypadku gdy jest więcej niż jedno zdarzenie z tym samym znacznikiem czasowym, potrzebne jest atomowe przetwarzanie współbieżnych zdarzeń lub mechanizm decyzyjny, który uporządkuje względem siebie zdarzenia. Aby przetworzyć zdarzenie, stan modelu jest modyfikowany na podstawie zawartości zdarzenia. Taka zmiana może mieć również skutki uboczne, które generują kolejne zdarzenia. W symulacji ze zdarzeniami dyskretnymi przedstawiony jest jedynie czas, w którym zdarzenia są generowane, okres pomiędzy może zostać pominięty, aby zredukować moc obliczeniową potrzebną do pokrycia rzadko wypełnionych przedziałów czasowych.

Symulacja z czasem dyskretnym jest modyfikacją symulacji ze zdarzeniami dyskretnymi. Zamiast skokowego postępu czasu wynikającego z czasu zdarzeń, w tym typie symulacji czas posuwa się o stałą wartość. Wszystkie zdarzenia, które pojawiają się w danym okresie, są traktowane tak, jakby wydarzyły się w tym samym momencie. Podejście to ma szereg zalet nad symulacją ze zdarzeniami dyskretnymi. W przypadku dyskretnych zdarzeń, gdy zdarzenia są gęsto rozmieszczone w czasie, symulacja nie może pomijać okresów, co zwiększa zapotrzebowanie na moc obliczeniową. Ten problem nie występuje w symulacji z czasem dyskretnym, ze względu na równe odstępy czasu pojawiania się zbioru zdarzeń. Kolejną zaletą wynikającą z tej własności jest brak konieczności utrzymywania globalnej, uporządkowanej struktury danych zdarzeń. Zamiast niej można wykorzystać struktury danych o lepszych właściwościach dostępu do danych, takich jak tablice mieszające. Co więcej dzięki temu, że w symulacjach z czasem dyskretnym zdarzenia w danym okresie występują jednocześnie, przetwarzanie tego okresu można zrównoleglić. W takim przypadku przetwarzanie można rozdzielić pomiędzy wiele procesów roboczych na zasadzie rozprosz-zbierz (*ang. scatter-gather*).
\autocite{Hartmann:simulation:2005, hartmann:2015:bigsim, banks1998handbook, lnuth1997art, leemis2006discrete, robinson2014simulation}

## Systemy wieloagentowe

Interesującym zagadnieniem symulacji są systemy wieloagentowe (*ang. \gls{mas}*). Można go zdefiniować jako sieć połączonych rozwiązań problemów składających się na jeden większy, który wykracza poza możliwości poszczególnych fragmentów. Fragmenty te, nazywane są agentami, są niezależne i z założenia mogą być heterogeniczne \autocite{sycara1998multiagent}. W związku z tym, że powyższa definicja agenta jest szeroka, podejście to znajduje zastosowanie w symulacjach z różnorodnych dziedzin, jak ekonomiczne, społeczne lub polityczne. Systemy wieloagentowe dostarczają technologicznego szkieletu, który umożliwia tworzenie tego typu modeli. Istnieją różne podejścia do implementacji systemów wieloagentowych, z czego wiele z nich opiera się o model wielowątkowy ze współdzieloną pamięcią. Pomimo tego, że takie podejście jest poprawne i działa, cierpi na szereg trudności zwiąnych z równoległym dostępem do modyfikowanych danych, który prowadzi do zjawiska wyścigu. Innym podejściem do programowania równoległego jest model aktorowy \autocite{agha86actors}. 

### Model aktorowy

W 1973 roku kilku pracowników firmy Ericsson, Carl Hewitt, Pater Bishop oraz Richard Steiger, przedstawiło projekt funkcyjnego języka programowania, zaprojektowanego dla wydajnych, wysoce niezawodnych systemów rozproszonych dużej skali, takich jak jak centrale telefoniczne. Język ten nazwano Erlang \autocite{armstrong2010erlang}. W obecnych czasach powyższe cechy są niezwykle trudne do zapewnienia w oprogramowaniu, a co dopiero prawie 50 lat temu. Aby to osiągnąć, autorzy Erlanga zaproponowali nowy model wspóbieżności, który miał ominąć problemy konwencjonalnego modelu wielowątkowego ze wspólną pamięcią operacyjną, model aktorowy. 

Podstawową jednostką wykonawczą modelu aktorowego jest *\gls{gls-aktor}*. Można go zdefiniować jako lekki proces, który enkapsuluje funkcjonalną część systemu i odpowiada za jego kontrol. Aktory komunikują się się z innym aktorem poprzez przekazywanie wiadomości, a ich zachowanie jest sterowane odbieraniem i reakcją na te wiadomości. Każda taka wiadomość jest wysyłana asynchronicznie i trafia do skrzynki odbiorczej, gdzie czeka w kolejce na przetworzenie przez odbiorcę.

\begin{figure}[htbp]
\centering
\includegraphics[width=140mm]{graphics/actor-messages.png}
\caption{Akcje w modelu aktorowym \autocite{karmani2009actor}}
\end{figure}

W odróżnieniu od modelu wielowątkowego ze współdzieloną pamięcią, aktory są zupełnie niezależne od siebie i nie współdzielą niczego. Model ze współdzieloną pamięcią nie dostarcza mechanizmów przekazywania informacji pomiędzy wątkami. Aby stwierdzić, że jeden z nich zmodyfikował współdzielone zasoby, niezbędne jest stworzenie protokołu. Nie można również stwierdzić czy inny obiekt otrzymał dostęp lub wykonał niedozwoloną akcję na wspólnych danych. Jednym ze sposobów radzenia sobie z sytuacjami tego typu jest zastosowanie blokad i synchronizacji. Synchronizacja nie występuje w modelu aktorowym, cała komunikacja jest asynchroniczna i zakłada częściowy porządek wiadomości. Zabiegi te mają służyć zmniejszeniu ryzyka wystąpienia błędu, a w szczególności nie dopuścić do zakleszczeń (*ang. \gls{gls-deadlock}*).
Aktory do wzajemnej komunikacji wymagają jedynie abstrakcyjnego adresu. Cecha ta umożliwia przezroczystą komunikację każdego aktora w systemie z innym aktorem. Co więcej, dwa aktory mogą znajdować się na fizycznie odrębnych maszynach, połączonych w sieć komputerową, umożliwiając stworzenie dynamicznie konfigurowalnego systemu rozproszonego bez ingerencji w oprogramowanie.
\autocite{karmani2009actor, hewitt1977laws, agha86actors, todd:2012:simulation, barat:2017:simulation, Waite2013ScaNSU, Harrison:2015:actors}

Korzystając z modelu aktorowego można stworzyć szkielet systemu wieloagentowego, który nie będzie podatny na problemy doskwierające bibliotekom opartych o model wielowątkowy. W tym przypadku naturalnym jest reprezentacja agenta jako aktora. Komunikację pomiędzy agentami można zamodelować przy pomocy przekazywania wiadomości pomiędzy aktorami. Ponadto symulacja w takim modelu jest z natury współbieżna. 

## Generatory liczb losowych i pseudolosowych

Jednym z aspektów symulacji jest modelowanie postępu w czasie, drugim zaś istotnym elementem jest zmienność. Do tej pory, z obecnym stanem informacji w tej pracy, każde uruchomienie modelu jest takie same i  przewidywalne. Co w sytuacji kiedy 60% kupujących można przyporządkować do typu A, a pozostałe 40% do typu B? Taki przypadek można przedstawić na 10 karteczkach, z których sześć należy oznaczyć literą A, a cztery literą B. Tak przygotowane karteczki można wrzucić do koszyka, z którego losowanie jednej za każdym razem kiedy przychodzi klient określa typ wchodzącego klienta. Metoda ta nie jest praktyczna w przypadku symulacji komputerowej, ponieważ komputer nie może wyciągać karteczek z koszyka. Analogiczne podejście używając komputerów możemy osiągnąć wykorzystując liczby losowe.

Dla wielu symulacji naukowych, ekonomicznych lub społecznych liczby losowe są niezbędne. Często sam model, taki jak obserwacje fizyczne, cechuje się losowością parametrów. Lecz nawet wtedy gdy symulowany system nie jest z natury losowy, to zastosowanie losowości jest praktyczne w wielu sytuacjach. Kiedy wartości parametrów może być nieskończenie wiele, sprawdzanie wszystkich przypadków jest niepraktyczne lub niemożliwe, a losowa próbka pozwoli zbadać typowe zachowanie. Liczby losowe są również wykorzystywane w programach komputerowych, aby sprawdzać efektywność algorytmów. Ponadto, istnieje cała kategoria algorytmów losowych, zwanych też *Monte Carlo*, które opierają swoje działanie na losowości. Szczególnym przypadkiem programów komputerowych, są gry. W nich losowość jest stosowana, aby świat przedstawiony wydawał się bardziej rzeczywisty. Liczby losowe wykorzystuje się do podobnych celów w symulacjach, w których komputer odwzorowuje zjawiska naturalne. 
Ciężko określić co jest liczbą losową, bo czy liczba 2 jest losowa? Poprzez losowość rozumiemy *losową sekwencję*.

> Sekwencją losową *a* *n* liczb nazywamy sekwencję liczb, zawierających się w określonym zbiorze, w której nie da się przewidzieć $n_{k+1}$ z żadnej kombinacji poprzedzającej $n_i, i = 0,1,...,k$.

Można postrzegać losową sekwencję jako generator, który produkuje wartość, kiedy jest o to poproszony, której nie da się przewidzieć na podstawie żadnej z poprzednich wartości.
Procesy losowe są często przedstawiane jako próbkowanie z funkcji rozkładu prawdopodobieństwa. W związku z tym, pomimo faktu, że da się przewidzieć $n_k$, można stworzyć przybliżenie rozkładu, zbudowanego na podstawie histogramu z wartości próbek pobranych z generatora.

\begin{figure}[htbp]
\centering
\includegraphics[width=140mm]{graphics/distributions.png}
\caption{Przykładowe rozkłady przedstawiające procesy losowe \autocite{Kneusel2018RandomNA}}
\end{figure}

Zakładamy, że sekwencje losowe istnieją i można znaleźć je w fizycznym świecie. Przykładami procesów losowych, które można użyć do wygenerowania losowej sekwencji, są:

#. sprawiedliwy rzut kością
#. sprawiedliwy rzut monetą
#. rozpad radioaktywnych pierwiastków
#. wzór zakłóceń telewizora CRT 

Niestety, powyższe metody są niepraktyczne do zastosowań naukowych. Z tego powodu powstały specjalistyczne maszyny do mechanicznego generowania losowych sekwencji, bazujące na generatorach szumu lub licznikach Geigera. Początkowo służyły one to produkcji tablic liczb losowych, obliczanych przed przeprowadzeniem eksperymentu. Ze względu na ograniczenia pamięci, długi czas wprowadzania sekwencji oraz jej ograniczoną długość, metoda ta nie znalazła szerokiego zastosowania w programach komputerowych.

Powszechnie używane komputery są z natury maszynami deterministycznymi. Niemożliwym jest więc bezpośrednie generowanie prawdziwie losowych liczb. Jako źródło entropii można wykorzystać na przykład czas pomiędzy kliknięciami w klawiaturę komputera, który jest prawdziwie losowy. Bardziej praktyczne w zastosowaniu mogą być urządzenia peryferyjne podpięte do komputera, w który zachodzą fizyczne procesy służące jako źródło informacji losowej.
Jednakże metody te okazały się niewystarczające, ponieważ korzystając z prawdziwej losowości, niemożliwym jest przeprowadzenie stochastycznych symulacji w sposób kontrolowany i powtarzalny.

> Jak wiele razy wspomniano, coś takiego jak liczba losowa nie istnieje - występują jedynie metody tworzenia liczb losowych, a ścisła arytmetyczna procedura taką metodą nie jest. \autocite{vonN51}

Jak napisał John von Neumann, wygenerowanie prawdziwie losowych liczb przy pomocy deterministycznego algorytmu jest niemożliwe. Jednakże do symulacji, osiągnięcie asymptotycznie bliskich do prawdziwych wyników, jest wystarczające.
W tym celu można wykorzystać generatory liczb *pseudolosowych*

> Pseudolosową sekwencją nazywamy deterministycznie wygenerowaną sekwencję liczb, która jest nieodróżnialna od prawdziwie losowej sekwencji liczb.

Generator liczb pseudolosowych jest matematycznym algorytmem, który dla zadanego stanu początkowego wytwarza sekwencję liczb pseudolosowych. Generatory te mają kilka zalet nad generatorami liczb prawdziwie losowych. Główną z nich są określone matematyczne właściwości, jak długość sekwencji, które zapewniają przewidywalność oraz fakt, że można taki generator zaimplementować bez użycia specjalistycznego sprzętu. 
Generator $P$ produkuje sekwencje liczb całkowitych, $n$, na zbiorze , $[0,m], 0 <= n < m$ dla pewnej maksymalnej, nieosiągalnej wartości m oraz spełniają definicje losowej sekwencji liczb z asymptotyczną dokładnością, dostosowaną do zastosowania.

Tak zdefiniowany generator liczb całkowitych można przekształcić do przeskalowanej postaci, która wytwarza liczby zmiennoprzecinkowe w dowolnym zakresie.

$$f = \frac{P}{m}, f \in [0, 1)$$

$$\omega = a + (b - a) * f, \omega \in [a,b)$$

Generatory liczb pseudolosowych można podzielić na dwie główne kategorie: generatory bazowe oraz generatory dystrybucyjne.
Najczęściej generator bazowy jest generatorem liczb pseudolosowych, który skupia się na wytwarzaniu ciągów o rozkładzie jednorodnym. Generator dystrybucyjny jest procedurą, która biorąc wkład z generatora bazowego, przekształca go na wartości odpowiadające zadanym rozkładom, takim jak jednorodne, normalne (Gaussa) lub gamma. 

Dobry bazowy generator liczb losowych powinien spełniać następujące cechy:

 - jednorodność
 - powtarzalność
 - duża długość cyklu
 - niezależność
 - niezależność od ziarna
 - wysoka szybkość
 - niskie zużycie pamięci

Z praktycznego punktu widzenia, generator powinien zwracać poprawne rezultaty w tak wielu zastosowaniach, jak to jest możliwe. Jednakże własność ta jest niemożliwa do realizacji.
Nie istnieje idealna kombinacja cech generatora, który będzie spełniał wszystkie wymagania użytkownika. Są one zależne od zastosowania i znacznie różnią się generatory do zastosowań kryptograficznych i kryptologicznych, od tych dostosowanych pod symulację stochastyczną.

Liczby generowane przez taki generator powinny być jednorodnie rozłożone w zakresie (0,1]. Aby generator nadawał się do zastosowań eksperymentów i symulacji, dla zadanych parametrów musi wytworzyć tę samą sekwencję. Jest to niezbędne w przypadku analizy wyników oraz potencjalnych błędów. Generatory liczb pseudolosowych, są niczym innym niż deterministycznymi algorytmami, wytwarzającymi liczby o określonych własnościach rozkładu. Pseudo losowa sekwencja ma skończoną dokładność arytmetyczną, więc powtarza się ze skończonym okresem. Okres ten powinien być znacznie dłuższy niż liczba liczb losowych potrzebnych do symulacji. Wygenerowana liczba musi być niezależna od poprzedzającej jej sekwencji. Ponadto, niezależność tyczy się również stanu początkowego, czyli ziarna. Różnie jego wartości nie mogą wypływać na długość okresu lub jakość generowanych sekwencji. Symulacje są procesami czasochłonnymi i szybkość generatora liczb pseudolosowych nie jest w nich kluczowa. Jednakże szybkość generatora może mieć znaczenie w przypadku symulacji wielokrotnie powtarzanych. Jeśli wybrany symulator będzie 10-krotnie szybszy od innego, może to znacznie przyspieszyć proces badawczy. Zużycie pamięci zaś powinno być dostosowane do wykorzystywanego sprzętu komputerowego. Niewystarczająca ilość pamięci może powodować spowolnienia oraz błędy symulacji, często trudne to zlokalizowania.

Zadaniem generatora, nie jest symulowanie losowości, a zwrócić poprawne wyniki w symulacji. W związku z tym, do symulacji należy dobrać odpowiedni generator liczb pseudolosowych, co nie jest zadaniem łatwym. Na szczęście z pomocą przychodzą zdefiniowane matematyczne właściwości generatorów, jak długość cyklu lub rozkład i współczynnik korelacji, które zabezpieczają projektantów symulacji przed uzyskaniem nieprawidłowych wyników na skutek nieprawidłowo dobranego generatora.

Przykładem prostego, lecz powszechnie używanego generatora jest liniowy generator kongruencyjny (*ang. \gls{lcg}*).
Generują one sekwencje $x_1, x_2, ...$ liczb całkowitych, pomiędzy $0$ i $m - 1$ wedle poniższej, rekurencyjnej definicji:

$$x_(n+1) = (ax_n + c) \mod m$$

Jest to algebraiczna metoda wykorzystująca arytmetykę modularną, na bazie wartości zwanej ziarnem ($x_0$). W powyższym wzorze $a \in \mathbb{Z}, 0<a<m$ jest mnożnikiem, $c \in \mathbb{Z} , 0<= c < m$ jest inkrementem, a $m \in \mathbb{Z}$ jest modułem.

~~~~{.Java .numberLines caption="Implementacja i przykład użyca LCG w języku Java"}
class Lcg {
    public static void main(String[] args) {
        var a = 1;
        var c = 2;
        var m = 5;
        var x = 55;

        for (int i = 0; i < m; i++) {
            x = (a * x + c) % m;
            System.out.println(x);
        }
    }
}
~~~~

Poprzez staranny dobór parametrów można stworzyć używalną sekwencję liczb całkowitych. Górną granicą długości ciągu jest moduł $m$, lecz w zależności od parametrów może być ona krótsza od $m$ \autocite{Ecuyer:rng, Hellekalek:rng, Ecuyer:simulation:rng, lnuth1997art}.

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/lcg-histogram.png}
\caption{Histogram długości ciągów  dla prostego generatora LCG z $m=10$ i wszystkich  możliwych  wartości $a, c$ oraz ziarna\autocite{Kneusel2018RandomNA}}
\end{figure}

<!-- W przypadku liniowego generatora kongruencyjnego obowiązują trzy reguły ułatwiające dobór wartości parametrów:

1. $m$ i $c$ są względnie pierwsze
2. $a-1$ jest podzielne przez piersze dzielniki $m$
3. $a-1$ jest podzielne przez $4$ jeśli $m$ jest podzielne przez 4 -->

# Użyte narzędzia

Przedstawienie użytych narzędzi i motywacja

## Java

Simula \autocite{dahl1968simula} jest językiem, który wprowadził podstawowe zagadnienia programowania obiektowego. Przy jego projektowaniu, twórcy położyli nacisk na wykorzystanie języka w symulacjach komputerowych, co wpłynęło na rozwój systemów symulacyjnych. Simula zapoczątkowała połączenie symulacji z programowaniem obiektowym, jako naturalnej reprezentacją symulacji. Związek ten istnieje po dziś dzień w wielu współczesnych narzędziach symulacyjnych zaimplementowanych w popularnych językach obiektowych, jak C++ lub Java. \autocite{urbansim} \autocite{advanced:simulation:library}

Java \autocite{gosling1995java} jest językiem programowania zaprojektowanym w latach 90. Wywodzi się z rodziny języka C i wspiera programowanie obiektowe. Obecnie Java zawiera pojęcia z wielu różnych paradygmatów programowania, lecz centralnym punktem tego języka są klasy. Pieczę nad rozwojem języka oraz środowiska uruchomieniowego trzyma Java Community Proces, komisja obradująca nad propozycjami rozwoju Javy. 

Głównym założeniem języka Java jest bezpieczeństwo wykonywanych operacji w modelu obiektowym. To doprowadziło do stworzenia języka z automatycznym zarządzaniem pamięcią, działającym na wirtualnej maszynie, zwanej Java Virtual Machine. Przejmuje ona część obowiązków jak poprawność i bezpieczeństwo, z programisty na środowisko uruchomieniowe. 

Standardowa biblioteka Javy jest mocno związana z językiem, więc często nie dokonuje się rozróżnienia pomiędzy samym językiem a standardową biblioteką. Zawiera ona moduły szerokiego zastosowania, struktury danych, model współbieżności, lecz brak w niej wsparcia dla programowania aktorowego, który należy uzupełnić biblioteką zewnętrzną.

## Scala

Scala \autocite{odersky2008scala} jest językiem programowania bardzo bliskim Javie, kompilowany do kodu bajtowego wirtualnej maszyny Javy, aby zachować kompatybilność pełną z tymże językiem i korzystać z bogactwa platformy. Jest to język ogólnego przeznaczenia, łączącym w sobie dwa, uzupełniające się podejścia, programowania obiektowego oraz programowania funkcyjnego, w statycznie typowany język. Jego funkcyjna strona umożliwia budowanie funkcjonalności z prostych elementów składowych. Podejście obiektowe zaś umożliwia porządkowanie złożonych systemów. Nazwa **Scala** wywodzi się od *scalable language*, aby zaznaczyć jego rozwój wraz z rosnącymi wymaganiami jego użytkowników. Został zaprojektowany do tworzenia zwięzłego kodu w prostych skryptach, jak i rozbudowanych systemach informatycznych.

~~~~{.Scala .numberLines caption="Przykład kodu w języku Scala"}
private  calculateBalance(currentBalance: Int, amount: Int, e: Event): Int =
    currentBalance + amount match {
      case newBalance if newBalance < 0 => sendToOutputAndAck(currentBalance, NotEnoughMoney(e.time))
        currentBalance
      case newBalance if newBalance == 0 => sendToOutputAndAck(newBalance, OutOfMoney(e.time))
        context.become(outOfMoney)
        newBalance
      case newBalance if newBalance > 0 =>
        context.become(operational(newBalance))
        newBalance
    }
~~~~

## Akka

Akka \autocite{akka:web} \autocite{roestenburg2015akka} jest zewnętrznym zestawem narzędzi, który implementuje aktorowy model programowania i współbieżności. Zestaw ten napisany jest w języku Scala, lecz wspiera również język Java przez kompatybilny interfejs programistyczny.
Pomimo tego, że model aktorowy zaimplementowany w Erlangu różni się nieco od tego w narzędziach Akka, to miał on znaczący wpływ na ich rozwój i współdzielą ze sobą wiele cech.
Powstał, aby zredukować koszty wytwarzania zadań asynchronicznych i współbieżnych. W założeniu Akka ma zapewniać sprawdzony zestaw funkcjonalności do budowania skalowalnych oraz niezawodnych rozwiązań programistycznych.

~~~~{.Scala .numberLines caption="Przykładowa implementacja aktora używając biblioteki Akka"}
class CustomActor extends Actor with ActorLogging {
  override def receive: Receive = {
    case m: Message => println(s"Received message: $m")
  }
}
~~~~

Akka tworzy warstwę abstrakcji nad niskopoziomowymi aspektami programowania współbieżnego i równoległego jak wątki (
*ang. thread*) i blokady (*ang. lock*). Wykorzystuje nieblokujące struktury danych i algorytmy oraz techniki *CAS (compare-and-swap)*, aby ograniczyć liczbę blokad do minimum.

## Reaktywne Strumienie

Obliczenia współbieżne oparte o model blokujący, czekając na zakończenie akcji, blokują swoje dalsze przetwarzanie. W ten sposób znaczna część zasobów sprzętowych pozostaje niewykorzystana. Wykorzystując modele nieblokujące, takie jak model aktorowy, te same zasoby można wykorzystać znacznie efektywniej. Jednakże nadmierne zużycie zasobów może prowadzić do niestabilności systemu. Jeżeli producent wykonuje znacznie więcej asychronicznych akcji niż konsument jest w stanie obsłużyć, to konsument ten może zostać przytłoczony nadmiarem pracy. Jeśli taka sytuacja zajdzie w modelu aktorowym, to skrzynka odbiorcza aktora konsumenta może zostać przepełniona, co prowadzi do usunięcia danego aktora, a co za tym idzie utraty postępu przetwarzania danych znajdujących się w kolejce. 

Reaktywne Strumienie (*ang. Reactive Streams*) powstały jako odpowiedź na potrzebę kontroli przepływu danych w systemach o przetwarzaniu asynchronicznym. Jest to inicjatywa, mająca na celu opracowanie standardu przetwarzania strumieniowego z nieblokującym mechanizmem kontroli przepływu. 
Implementacją tego modelu jest Akka Streams \autocite{akka:web}, czyli rozszerzenie wcześniej wspomnianej implementacji modelu aktorowego o gwarancje niezawodności dostarczane przez Reactive Streams.
\autocite{whyreactive2016malawski}

## React

React \autocite{react} został stworzony w firmie Facebook przez zespół web deweloperów w 2013 roku do tworzenia widoków stron internetowych. Biblioteka umożliwia na renderowanie komponentów jako widocznych elementów w przeglądarce. Widoki tworzone z wykorzystaniem Reacta składają się z hierarchii złożonych ze sobą komponentów. 
Jedną z głównych cech wyróżniających Reacta od innych bibliotek oraz technik tworzenia graficznych interfejsów użytkownika w przeglądarce internetowej jest wirtualny *\gls{dom}*. Model ten pozwala na aktualizację wyświetlanych treści w oderwaniu od wprowadzanych zmian, co umożliwia automatyczną optymalizację zmian. \autocite{wieruch2018road}

## Websocket

Websocket jest komputerowym protokołem komunikacyjnym, umożliwiającym dwukierunkowe połączenie pomiędzy klientem a zdalnym systemem poprzez pojedyncze połączenie *\gls{TCP}* \autocite{RFC7414}. Protokół ten znajduje się w siódmej warstwie modelu *\gls{osi}* \autocite{ISO7498-1}. Umożliwia przesyłanie strumienia wiadomości, gdzie TCP przesyła jedynie bajty, pomiędzy przeglądarką internetową a serwerem.
\autocite{RFC6455}

\chapter{Projekt}

# Symulator wypłat z bankomatów

Cel: symulacja ma reprezentować realistyczne, naturalne rozkłady wypłat bankomatowych.

## Elementy symulacji 

// TODO: opisać model - narysować, jak gadają ze sobą elementy. przedstawić jak działa "biznesowo", nie technicznie
// TODO: architektura techniczna model C4
// TODO: opis konfiguracji wejściowej
// TOOD: opis logu wyników
// TODO: opis aplikacji - screeny i wyjaśnienia
// TODO: dlaczego aktory - agent based modeling
// TODO: dlaczego reactive - backpressure, którego nie mają aktory

### Karta

 - jest obiektem, który wypłaca pieniądze z bankomatu
 - posiada datę ważność
 - jest powiązana z bankiem / instytucją która ją wypuściła
 - może mieć różne waluty
    - czy karta na pewno może mieć różne waluty? jeśli ma inną walutę niż złotówki to jak przeliczamy? co z limitem wypłat
 - może mieć limity


### Bankomaty

 - ma maksymalną pojemność
 - przynależy do banku / instytucji finansowej

## Parametry symulacji

Symulacja musi być realistyczna, naturalna.

 - ziarnistość symulacji: godzina
 - okres symulacji: rok
 - użytkownik ustala start i stop

Rozkłady muszą pokrywać cały okres symulacji.

# Wizualizacja wypłat na mapie

 - długoterminowa symulacja pracy bankomatu
 - wysoka konfigurowalność
   - drobnoziarnistość godzinowa 
   - definiowanie rozkładów wypłat
   - zapełnienie bankomatu
   - o jaką kwotę jest uzupełniany
   - jak często jest uzupełniany
   - ile po alarmie o braku pieniędzy zostanie uzupełniony
 - symulacja wypłat ze zbioru bankomatów w terenie
 - wizualizacja powyższych na mapie terenowej
 - interfejs do konfiguracji parametrów symulacji

## Edytor

## Wizualizacja symulacji

Wizualizacja przedstawia pozycje bankomatów na mapie, ich stan sejfu oraz natężenie ruchu oraz błędy.
Udostępnia definiowanie konfiguracji symulacji.

Wyróżnianie bankomatów:

 - wielkość kropki / kolor kropki - obciążenie bankomatu
 - stos pieniędzy, który maleje w miarę upływania pieniędzy w sejfie bankomatu

 Po kliknięciu w bankomat na mapie pojawiają się szczegółowe informacje o stanie bankomatu:

 - aktualne obciążenie bankomatu
 - zapasy pieniędzy
 - stan bankomatu - czy działa poprawnie, czy zaszła awaria
  - parametry symulacji danego bankomatu

 Po prawej stronie znajdują się awarie, które zaszły w symulacji.

# Przebieg symulacji

benchmark - jak szybko generuje w zależności od:
 - liczby bankomatów
 - liczby zdarzeń na godzinę
 - długości okresu czasu symulacji

\chapter{Podsumowanie}

# Wnioski

# Problemy

# Rozszerzenia i możliwości rozwoju

 - funkcja wpłatomatu
 - sprawdzanie stanu konta
 - transakcja anulowana - klient rozpoczął transakcje, ale nie wypłacił pieniędzy
 - testowanie modelu
