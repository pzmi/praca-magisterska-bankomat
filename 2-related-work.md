\chapter{Powiązane prace}

# Bankomaty

Bankomat jest automatycznym urządzeniem, którego główną funkcją jest wypłata gotówki z konta bankowego przez jego właściciela. Obecne bankomaty ponadto udostępniają takie funkcjonalności sprawdzanie stanu konta, wpłacanie gotówki, przyjmowanie zleceń przelewu. Nie są one tematem tej pracy, a skupiono się na wypłatach gotówki.

Jedna tego typu maszyna, w zależności od rozmiaru, mieści do 6 kaset z gotówką, z których każda ma pojemność do 2500 banknotów. Pomimo dużej pojemności w bankomatach znajduje się zwykle kilkaset tysięcy złotych, które uzupełnia się co kilka dni. Ustalenie poziomu zapełnienia bankomatu oraz częstotliwości uzupełniana jest nietrywialnym zagadnieniem logistycznym, które wchodzi w obowiązki operatora automatu, instytucji bankowej lub specjalistycznych operatorów infrastruktury bankomatowej \autocite{ncr2019marketing, ncr2019tech}.

Bankomaty stanowią niezwykle istotny element infrastruktury bankowej w Polsce. Według danych udostępnianych przez banki oraz operatorów bankomatów, przedstawionych na rysunkach \ref{fig:liczba-bankomatów}, \ref{fig:liczba-transakcji}, \ref{fig:wartosc-wyplat}, \ref{fig:srednia-transakcji}, liczba bankomatów w Polsce od 2016 systematycznie zmniejsza się. Pomimo tego Polacy wciąż wykonują ponad 650 milionów wypłat przy użyciu bankomatu, a sumaryczna wartość tych wypłat oraz średnia wartość pojedynczej wypłaty rośnie z roku na rok \autocite{nbp:stats, nbp:bankomaty, firkowicz2018bankomaty}.

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/liczba-bankomatow.png}
\caption{Liczba bankomatów w Polsce na przestrzeni lat\autocite{nbp:stats}}
\label{fig:liczba-bankomatów}
\end{figure}

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/liczba-transakcji.png}
\caption{Liczba wypłat bankomatowych w Polsce na przestrzeni lat\autocite{nbp:stats}}
\label{fig:liczba-transakcji}
\end{figure}

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/wartosc-transakcji.png}
\caption{Wartość wypłat bankomatowych w Polsce na przestrzeni lat\autocite{nbp:stats}}
\label{fig:wartosc-wyplat}
\end{figure}

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/srednia-wartosc-transakcji.png}
\caption{Średnia wartość wypłat bankomatowych w Polsce na przestrzeni lat\autocite{nbp:stats}}
\label{fig:srednia-transakcji}
\end{figure}

\newpage

# Symulacja

Imitacja oznacza naśladowanie lub kopiowanie czegoś innego. Przykładowo fałszerz naśladuje pracę wielkich artystów, mapa procesów biznesowych jest imitacją pracy organizacji, a model kolei jest fizyczną imitacją prawdziwego składu kolejowego. Wszystkie z powyższych przykładów można określić mianem symulacji. Jednakże spośród nich można wyróżnić dwa zbiory. Pierwszym z nich są przykłady uwzględniające upływ czasu, a drugą stanowią te, na które czas nie wpływa. Stąd wywodzi się pojęcie symulacji statycznej, która reprezentuje proces w konkretnym momencie czasu, oraz symulacji dynamicznej, która odwzorowuje proces zmieniający się w czasie. Termin symulacja najczęściej odnosi się do symulacji dynamicznej. 
Bazując na wcześniejszym opisie, można zdefiniować pojęcie symulacji komputerowej. Jest to komputerowe odwzorowanie procesu zmieniającego się w czasie. Procesem jest w tym przypadku zbiór elementów działających we wspólnym celu. Przykładowo pogoda jest zbiorem składającym się między innymi ze słońca, wody i lądu, którego celem jest utrzymanie życia. 
Spośród istniejących procesów możemy wyróżnić:

 * procesy naturalne - procesy powstałe wraz z wszechświatem, na przykład: atomy, pogoda, układ słoneczny
 * zaprojektowane procesy fizyczne - fizyczne procesy stworzone przez człowieka, na przykład: budynki, pojazdy
 * zaprojektowane abstrakcyjne procesy - abstrakcyjne procesy stworzone przez człowieka, na przykład: matematyka, literatura
 * procesy interakcji ludzkich - świadome lub nieświadome procesy interakcji ludzkiej, na przykład: rodzina, miasto, polityka \autocite{checkland1981systems}

Wiele procesów jest podatnych na zmienność. Może być ona przewidywalna, otwieranie więcej kas w supermarkecie w ciągu dnia w reakcji na zmienną liczbę kupujących w ciągu dnia. Zmienność może być również nieprzewidywalna, jak tempo przybywania pacjentów na szpitalny oddział ratunkowy.
Nie tylko zmienność wpływa na stopień skomplikowania procesu. Jego elementy często są połączone ze sobą i wywierają wzajemny wpływ w czasie. 
W związku ze zmiennością procesów, skomplikowaniem i zawiłymi zależnościami w nich bardzo trudne lub wręcz niemożliwe jest przewidywanie ich właściwości. Modele symulacyjne przedstawiają jawnie zmienność, połączenia pomiędzy elementami oraz złożoność procesów. W rezultacie przewidywalność symulacji jest znacznie łatwiejsza, pozwala na porównywanie alternatywnych parametrów.

Symulacje nie są jedyną metodą analizowania i rozwijania procesów. Innym podejściem jest przeprowadzenie eksperymentów w świecie rzeczywistym. Przykładem może być zmiana układu hali fabrycznej. Modele symulacyjne posiadają szereg zalet i wad, które należy wziąć pod uwagę.
Pierwszą z zalet jest koszt. Eksperymenty w świecie rzeczywistym bywają kosztowne. Modyfikacja codziennej działalności może powodować przerwy w działaniu procesów, prowadzić do spadków wydajności, niezadowolenia lub utraty klientów. W przypadku symulacji przetestowanie zmiany wiąże się jedynie z kosztem uruchomienia symulacji ze zmodyfikowanymi parametrami, bez przerw w działaniu rzeczywistego systemu. 
Innym aspektem jest czas. Eksperyment może trwać miesiącami lub dłużej, aby móc wnioskować na temat jakości wprowadzonych zmian. W zależności od skomplikowania modelu, mocy obliczeniowej komputera symulację można przeprowadzić wiele razy szybciej niż w czasie rzeczywistym. W związku z tym wyniki można otrzymać w ciągu minut lub godzin. Dodatkowo symulację można przeprowadzić na przestrzeni długich okresów, nawet lat.
Kolejną zaletą jest fakt, że symulację można przeprowadzić bez istniejącego systemu. W wielu przypadkach modele symulacyjne powstają przed rzeczywistym systemem. 
Kiedy rozważanych jest kilka alternatywnych możliwości, kontrola nad warunkami eksperymentu jest niezwykle przydatna. Jest to trudne do osiągnięcia, eksperymentując z rzeczywistym procesem. 
Symulacja nie jest jedyną istniejącą metodą modelowania rzeczywistości. Do innych należą między innymi programowanie liniowe, programowanie dynamiczne oraz metody heurystyczne jak symulowane wyżarzanie lub algorytmy genetyczne. 
Symulacja może być atrakcyjniejsza od pozostałych metod ze względu na łatwość modelowania zmienności, co w niektórych przypadkach jest niemożliwe przy zastosowaniu metod alternatywnych.

Pomimo wielu zalet symulacja posiada również swoje wady.
Oprogramowanie symulacyjne niekoniecznie jest tanie, a w przypadku nowatorskich modeli może wymagać wytworzenia zupełnie nowej aplikacji. 
Ponadto samo modelowanie potrafi być czasochłonne, a wyniki nie są natychmiastowe. 
Aby stworzyć model, potrzebna jest znacząca ilość informacji, które mogą być niedostępne. 
Jednak dane to nie wszystko. Potrzeba specjalistycznej wiedzy, wykraczającej poza wytwarzanie oprogramowania. Myślenie wysokopoziomowe, konceptualne, wiedza statystyczna oraz umiejętność zarządzania projektem często są niezbędne, tworząc symulację od podstaw.
Największa zaleta symulacji jest także jej największą wadą. Możliwość przeprowadzania eksperymentów komputerowych w oderwaniu od rzeczywistości wprowadza dozę niepewności. Analizując wyniki symulacji, należy przyłożyć szczególną uwagę na to, że powstały na podstawie pewnych założeń oraz uproszczonego modelu rzeczywistości.

Eksperymenty, fizyczne, ekonomiczne lub socjologiczne, w świecie rzeczywistym bywają skomplikowane lub niemożliwe do przeprowadzenia. Symulacja jest procesem ułatwiającym takie eksperymenty poprzez reprezentację świata rzeczywistego jako uproszczonego, abstrakcyjnego modelu. Aby wprowadzić element różnorodności do symulacji, w wielu przypadkach wykorzystywana jest losowość. Daje to naukowcom możliwość wykorzystania statystycznych obserwacji do uzupełnienia szczegółów uproszczonego modelu, których nie da się przedstawić w modelu matematycznym lub czynniki nie mają bezpośredniego wpływu na badanie. Połączenie losowości ze sterowaniem warunkami modelu daje możliwość generowania wyników poprzez zapis cyklu uruchomień modelu i statystyczną ich analizę. Obiektem dyskusji w tej pracy są symulacje komputerowe, chociaż historia symulacji sięga daleko przed powstaniem komputerów. Przed komputerami, dużą rolę w symulacjach odgrywało modelowanie matematyczne. W tej dziedzinie cały system jest przedstawiony w postaci zbioru równań, obliczanych dla zadanych parametrów. W kontraście symulacje opierają się na uruchomieniach modelu, dla których dwa wyniki z tymi samymi warunkami początkowymi mogą być inne. 

Symulacje komputerowe dzielą się na dwie kategorie. Pierwszą z nich stanowią modele, w których aktorzy, ludzie lub inne elementy świata rzeczywistego, wchodzą w interakcję z systemem w czasie symulacji. Systemy te są często nazywane systemami *w pętli (ang. in the loop)* lub symulacją z *ludźmi w pętli*. Sztandarowymi przykładem tego typu symulacji są gry komputerowe, interaktywne systemy treningu wojskowego oraz systemy testowania maszyn przemysłowych. Drugą z kategorii są symulacje, w których cały system jest zaprojektowany jako oprogramowanie komputerowe. Wśród nich znajdują się symulacje ze zdarzeniami dyskretnymi, symulacje z czasem dyskretnym oraz symulacje statystyczne (Monte Carlo). Kluczową cechą wyróżniającą metody w pętli od pozostałych jest wymaganie odpowiedzi w czasie rzeczywistym.  Systemy w pętli muszą odpowiadać w zadanym czasie, aby zewnętrzny obserwator, człowiek lub maszyna, otrzymał odpowiedź na wykonaną akcje. W przeciwieństwie do systemów w pętli pozostałe systemy generują wyniki symulacji w dowolnych odstępach czasowych.

W symulacjach ze zdarzeniami dyskretnymi modelowany system jest przedstawiony jako stan i zbiór zdarzeń, które wpływają na niego. Zdarzenia są częściowo uporządkowane wedle czasu, w którym się wydarzyły w modelu. Zdarzenia są przechowywane w uporządkowanej strukturze, jak kolejka, oraz przetwarzane przez algorytm symulacji. Algorytmy oparte o dyskretne zdarzenia implementują pętlę zdarzeń, która przetwarza zdarzenia, dopóki nie zajdzie warunek końcowy. Warunkami stopu może być wyczerpanie kolejki zdarzeń, liczba przetworzonych zdarzeń, upływ czasu w modelu lub warunki opierające się o stan symulacji. Czas jest modelowany jako znacznik ostatnio przetworzonego zdarzenia. W każdym cyklu iteracji pętli zdarzeń najwcześniejsze zdarzenie jest ściągane z kolejki, aby je przetworzyć. W przypadku gdy jest więcej niż jedno zdarzenie z tym samym znacznikiem czasowym, potrzebne jest atomowe przetwarzanie współbieżnych zdarzeń lub mechanizm decyzyjny, który uporządkuje względem siebie zdarzenia. Aby przetworzyć zdarzenie, stan modelu jest modyfikowany na podstawie zawartości zdarzenia. Taka zmiana może mieć również skutki uboczne, które generują kolejne zdarzenia. W symulacji ze zdarzeniami dyskretnymi przedstawiony jest jedynie czas, w którym zdarzenia są generowane, okres pomiędzy może zostać pominięty, aby zredukować moc obliczeniową potrzebną do pokrycia rzadko wypełnionych przedziałów czasowych.

Symulacja z czasem dyskretnym jest modyfikacją symulacji ze zdarzeniami dyskretnymi. Zamiast skokowego postępu czasu wynikającego z czasu zdarzeń, w tym typie symulacji czas posuwa się o stałą wartość. Wszystkie zdarzenia, które pojawiają się w danym okresie, są traktowane tak, jakby wydarzyły się w tym samym momencie. Podejście to ma szereg zalet nad symulacją ze zdarzeniami dyskretnymi. W przypadku dyskretnych zdarzeń, gdy zdarzenia są gęsto rozmieszczone w czasie, symulacja nie może pomijać okresów, co zwiększa zapotrzebowanie na moc obliczeniową. Ten problem nie występuje w symulacji z czasem dyskretnym, ze względu na równe odstępy czasu pojawiania się zbioru zdarzeń. Kolejną zaletą wynikającą z tej własności jest brak konieczności utrzymywania globalnej, uporządkowanej struktury danych zdarzeń. Zamiast niej można wykorzystać struktury danych o lepszych właściwościach dostępu do danych, takich jak tablice mieszające. Co więcej, dzięki temu, że w symulacjach z czasem dyskretnym zdarzenia w danym okresie występują jednocześnie, przetwarzanie tego okresu można zrównoleglić. W takim przypadku przetwarzanie można rozdzielić pomiędzy wiele procesów roboczych na zasadzie rozprosz-zbierz (*ang. scatter-gather*)
\autocite{Hartmann:simulation:2005, hartmann:2015:bigsim, banks1998handbook, lnuth1997art, leemis2006discrete, robinson2014simulation}.

## Systemy wieloagentowe

Interesującym zagadnieniem symulacji są systemy wieloagentowe (*ang. \gls{mas}*). Można go zdefiniować jako sieć połączonych rozwiązań problemów składających się na jeden większy, który wykracza poza możliwości poszczególnych fragmentów. Fragmenty te, nazywane są agentami, są niezależne i z założenia mogą być heterogeniczne \autocite{sycara1998multiagent}. W związku z tym, że powyższa definicja agenta jest szeroka, podejście to znajduje zastosowanie w symulacjach z różnorodnych dziedzin, jak ekonomiczne, społeczne lub polityczne. Systemy wieloagentowe dostarczają technologicznego szkieletu, który ułatwia tworzenie tego typu modeli. Istnieją różne podejścia do implementacji systemów wieloagentowych, z czego wiele z nich opiera się o model wielowątkowy ze współdzieloną pamięcią. Pomimo tego, że takie podejście jest poprawne i działa, cierpi na szereg trudności zwiąnych z równoległym dostępem do modyfikowanych danych, który prowadzi do zjawiska wyścigu. Innym podejściem do programowania równoległego jest model aktorowy \autocite{agha86actors}. 

### Model aktorowy

W 1973 roku kilku pracowników firmy Ericsson, Carl Hewitt, Peter Bishop oraz Richard Steiger, przedstawiło projekt funkcyjnego języka programowania, zaprojektowanego dla wydajnych, wysoce niezawodnych systemów rozproszonych dużej skali, takich jak centrale telefoniczne. Język ten nazwano Erlang \autocite{armstrong2010erlang}. W obecnych czasach powyższe cechy są niezwykle trudne do zapewnienia w oprogramowaniu, a co dopiero prawie 50 lat temu. Aby to osiągnąć, autorzy Erlanga zaproponowali nowy model wspóbieżności, który miał ominąć problemy konwencjonalnego modelu wielowątkowego ze wspólną pamięcią operacyjną, model aktorowy. 

Podstawową jednostką wykonawczą modelu aktorowego jest *\gls{gls-aktor}*. Można go zdefiniować jako lekki proces, który enkapsuluje funkcjonalną część systemu i odpowiada za jego kontrol. Jak przedstawiono na rysunku \ref{fig:actors}, aktory mogą stworzyć kolejnego aktora lub komunikować się z innym aktorem poprzez przekazywanie wiadomości, a ich zachowanie jest sterowane odbieraniem i reakcją na te wiadomości. Każda taka wiadomość jest wysyłana asynchronicznie i trafia do skrzynki odbiorczej, gdzie czeka w kolejce na przetworzenie przez odbiorcę.

\begin{figure}[htbp]
\centering
\includegraphics[width=140mm]{graphics/actor-messages.png}
\caption{Akcje w modelu aktorowym \autocite{karmani2009actor}}
\label{fig:actors}
\end{figure}

W odróżnieniu od modelu wielowątkowego ze współdzieloną pamięcią, aktory są zupełnie niezależne od siebie i nie współdzielą niczego. Model ze współdzieloną pamięcią nie dostarcza mechanizmów przekazywania informacji pomiędzy wątkami. Aby stwierdzić, że jeden z nich zmodyfikował współdzielone zasoby, niezbędne jest stworzenie protokołu. Nie można również stwierdzić czy inny obiekt otrzymał dostęp lub wykonał niedozwoloną akcję na wspólnych danych. Jednym ze sposobów radzenia sobie z sytuacjami tego typu jest zastosowanie blokad i synchronizacji. Synchronizacja nie występuje w modelu aktorowym, cała komunikacja jest asynchroniczna i zakłada częściowy porządek wiadomości. Zabiegi te mają służyć zmniejszeniu ryzyka wystąpienia błędu, a w szczególności nie dopuścić do zakleszczeń (*ang. \gls{gls-deadlock}*).
Aktory do wzajemnej komunikacji wymagają jedynie abstrakcyjnego adresu. Cecha ta daje możliwość przezroczystej komunikacji każdego aktora w systemie z innym aktorem. Co więcej, dwa aktory mogą znajdować się na fizycznie odrębnych maszynach, połączonych w sieć komputerową, zapewniając stworzenie dynamicznie konfigurowalnego systemu rozproszonego bez ingerencji w oprogramowanie
\autocite{karmani2009actor, hewitt1977laws, agha86actors, todd:2012:simulation, barat:2017:simulation, Waite2013ScaNSU, Harrison:2015:actors}.

Korzystając z modelu aktorowego, można stworzyć szkielet systemu wieloagentowego, który nie będzie podatny na problemy doskwierające bibliotekom opartych o model wielowątkowy. W tym przypadku naturalnym jest reprezentacja agenta jako aktora. Komunikację pomiędzy agentami można zamodelować przy pomocy przekazywania wiadomości pomiędzy aktorami. Ponadto symulacja w takim modelu jest z natury współbieżna. 

## Generatory liczb losowych i pseudolosowych

Jednym z aspektów symulacji jest modelowanie postępu w czasie, drugim zaś istotnym elementem jest zmienność. Do tej pory, z obecnym stanem informacji w tej pracy, każde uruchomienie modelu jest takie same i  przewidywalne. Co w sytuacji, kiedy 60% kupujących można przyporządkować do typu A, a pozostałe 40% do typu B? Taki przypadek można przedstawić na 10 karteczkach, z których sześć należy oznaczyć literą A, a cztery literą B. Tak przygotowane karteczki można wrzucić do koszyka, z którego losowanie jednej za każdym razem, kiedy przychodzi klient, określa typ wchodzącego klienta. Metoda ta nie jest praktyczna w przypadku symulacji komputerowej, ponieważ komputer nie może wyciągać karteczek z koszyka. Analogiczne podejście, używając komputerów, możemy osiągnąć, wykorzystując liczby losowe.

Dla wielu symulacji naukowych, ekonomicznych lub społecznych liczby losowe są niezbędne. Często sam model, taki jak obserwacje fizyczne, cechuje się losowością parametrów. Nawet, wtedy gdy symulowany system nie jest z natury losowy, to zastosowanie losowości jest praktyczne w wielu sytuacjach. Kiedy wartości parametrów może być nieskończenie wiele, sprawdzanie wszystkich przypadków jest niepraktyczne lub niemożliwe, a losowa próbka pozwoli zbadać typowe zachowanie. Liczby losowe są również wykorzystywane w programach komputerowych, aby sprawdzać efektywność algorytmów. Ponadto, istnieje cała kategoria algorytmów losowych, zwanych też *Monte Carlo*, które opierają swoje działanie na losowości. Szczególnym przypadkiem programów komputerowych, są gry. W nich losowość jest stosowana, aby świat przedstawiony wydawał się bardziej rzeczywisty. Liczby losowe wykorzystuje się do podobnych celów w symulacjach, w których komputer odwzorowuje zjawiska naturalne. 
Ciężko określić co jest liczbą losową, bo czy liczba 2 jest losowa? Poprzez losowość rozumiemy *losową sekwencję*.

> Sekwencją losową *a* *n* liczb nazywamy sekwencję liczb, zawierających się w określonym zbiorze, w której nie da się przewidzieć $n_{k+1}$ z żadnej kombinacji poprzedzającej $n_i, i = 0,1,...,k$.

Można postrzegać losową sekwencję jako generator, który produkuje wartość, kiedy jest o to poproszony, której nie da się przewidzieć na podstawie żadnej z poprzednich wartości.
Procesy losowe są często przedstawiane jako próbkowanie z funkcji rozkładu prawdopodobieństwa. Wizualną reprezentację przykładowych rozkładów procesów losowych przedstawia rysunek \ref{fig:distributions} W związku z tym, pomimo faktu, że da się przewidzieć $n_k$, można stworzyć przybliżenie rozkładu, zbudowanego na podstawie histogramu z wartości próbek pobranych z generatora.

\begin{figure}[htbp]
\centering
\includegraphics[width=140mm]{graphics/distributions.png}
\caption{Przykładowe rozkłady przedstawiające procesy losowe \autocite{Kneusel2018RandomNA}}
\label{fig:distributions}
\end{figure}

Zakładamy, że sekwencje losowe istnieją i można znaleźć je w fizycznym świecie. Przykładami procesów losowych, które można użyć do wygenerowania losowej sekwencji, są:

#. sprawiedliwy rzut kością
#. sprawiedliwy rzut monetą
#. rozpad radioaktywnych pierwiastków
#. wzór zakłóceń telewizora CRT 

Niestety, powyższe metody są niepraktyczne do zastosowań naukowych. Z tego powodu powstały specjalistyczne maszyny do mechanicznego generowania losowych sekwencji, bazujące na generatorach szumu lub licznikach Geigera. Początkowo służyły one to produkcji tablic liczb losowych, obliczanych przed przeprowadzeniem eksperymentu. Ze względu na ograniczenia pamięci, długi czas wprowadzania sekwencji oraz jej ograniczoną długość, metoda ta nie znalazła szerokiego zastosowania w programach komputerowych.

Powszechnie używane komputery są z natury maszynami deterministycznymi. Niemożliwym jest więc bezpośrednie generowanie prawdziwie losowych liczb. Jako źródło entropii można wykorzystać na przykład czas pomiędzy kliknięciami w klawiaturę komputera, który jest prawdziwie losowy. Bardziej praktyczne w zastosowaniu mogą być urządzenia peryferyjne podpięte do komputera, w który zachodzą fizyczne procesy służące jako źródło informacji losowej.
Jednakże metody te okazały się niewystarczające, ponieważ korzystając z prawdziwej losowości, niemożliwym jest przeprowadzenie stochastycznych symulacji w sposób kontrolowany i powtarzalny.

> Jak wiele razy wspomniano, coś takiego jak liczba losowa nie istnieje - występują jedynie metody tworzenia liczb losowych, a ścisła arytmetyczna procedura taką metodą nie jest \autocite{vonN51}.

Jak napisał John von Neumann, wygenerowanie prawdziwie losowych liczb przy pomocy deterministycznego algorytmu jest niemożliwe. Jednakże do symulacji, osiągnięcie asymptotycznie bliskich do prawdziwych wyników, jest wystarczające.
W tym celu można wykorzystać generatory liczb *pseudolosowych*

> Pseudolosową sekwencją nazywamy deterministycznie wygenerowaną sekwencję liczb, która jest nieodróżnialna od prawdziwie losowej sekwencji liczb.

Generator liczb pseudolosowych jest matematycznym algorytmem, który dla zadanego stanu początkowego wytwarza sekwencję liczb pseudolosowych. Generatory te mają kilka zalet nad generatorami liczb prawdziwie losowych. Główną z nich są określone matematyczne właściwości, jak długość sekwencji, które zapewniają przewidywalność oraz fakt, że można taki generator zaimplementować bez użycia specjalistycznego sprzętu. 
Generator $P$ produkuje sekwencje liczb całkowitych, $n$, na zbiorze , $[0,m], 0 <= n < m$ dla pewnej maksymalnej, nieosiągalnej wartości m oraz spełniają definicje losowej sekwencji liczb z asymptotyczną dokładnością, dostosowaną do zastosowania.

Tak zdefiniowany generator liczb całkowitych można przekształcić do przeskalowanej postaci, która wytwarza liczby zmiennoprzecinkowe w dowolnym zakresie.

$$f = \frac{P}{m}, f \in [0, 1)$$

$$\omega = a + (b - a) \cdot f, \omega \in [a,b)$$

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

Liczby generowane przez taki generator powinny być jednorodnie rozłożone w zakresie (0,1]. Aby generator nadawał się do zastosowań eksperymentów i symulacji, dla zadanych parametrów musi wytworzyć tę samą sekwencję. Jest to niezbędne w przypadku analizy wyników oraz potencjalnych błędów. Generatory liczb pseudolosowych, są niczym innym niż deterministycznymi algorytmami, wytwarzającymi liczby o określonych własnościach rozkładu. Pseudolosowa sekwencja ma skończoną dokładność arytmetyczną, więc powtarza się ze skończonym okresem. Okres ten powinien być znacznie dłuższy niż liczba liczb losowych potrzebnych do symulacji. Wygenerowana liczba musi być niezależna od poprzedzającej jej sekwencji. Ponadto, niezależność tyczy się również stanu początkowego, czyli ziarna. Różnie jego wartości nie mogą wypływać na długość okresu lub jakość generowanych sekwencji. Symulacje są procesami czasochłonnymi i szybkość generatora liczb pseudolosowych nie jest w nich kluczowa. Jednakże szybkość generatora może mieć znaczenie w przypadku symulacji wielokrotnie powtarzanych. Jeśli wybrany symulator będzie 10-krotnie szybszy od innego, może to znacznie przyspieszyć proces badawczy. Zużycie pamięci zaś powinno być dostosowane do wykorzystywanego sprzętu komputerowego. Niewystarczająca ilość pamięci może powodować spowolnienia oraz błędy symulacji, często trudne to zlokalizowania.

Zadaniem generatora, nie jest symulowanie losowości, a zwrócić poprawne wyniki w symulacji. W związku z tym, do symulacji należy dobrać odpowiedni generator liczb pseudolosowych, co nie jest zadaniem łatwym. Na szczęście z pomocą przychodzą zdefiniowane matematyczne właściwości generatorów, jak długość cyklu lub rozkład i współczynnik korelacji, które zabezpieczają projektantów symulacji przed uzyskaniem nieprawidłowych wyników na skutek nieprawidłowo dobranego generatora.

Przykładem prostego, lecz powszechnie używanego generatora jest liniowy generator kongruencyjny (*ang. \gls{lcg}*).
Generują one sekwencje $x_1, x_2, ...$ liczb całkowitych, pomiędzy $0$ i $m - 1$ wedle poniższej, rekurencyjnej definicji:

$$x_{n+1} = (ax_n + c) \mod m$$

Jest to algebraiczna metoda wykorzystująca arytmetykę modularną, na bazie wartości zwanej ziarnem ($x_0$). W powyższym wzorze $a \in \mathbb{Z}, 0<a<m$ jest mnożnikiem, $c \in \mathbb{Z} , 0<= c < m$ jest inkrementem, a $m \in \mathbb{Z}$ jest modułem.

\newpage

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

Poprzez staranny dobór parametrów można stworzyć używalną sekwencję liczb całkowitych. Wizualizację wpływu parametrów generatora LCG na długość ciągu obrazuje rysunek \ref{fig:lcg-histogram}. Górną granicą długości ciągu jest moduł $m$, lecz w zależności od parametrów może być ona krótsza od $m$ \autocite{Ecuyer:rng, Hellekalek:rng, Ecuyer:simulation:rng, lnuth1997art}.

\begin{figure}[htbp]
\centering
\includegraphics[width=160mm]{graphics/lcg-histogram.png}
\caption{Histogram długości ciągów  dla prostego generatora LCG z $m=10$ i wszystkich  możliwych  wartości $a, c$ oraz ziarna\autocite{Kneusel2018RandomNA}}
\label{fig:lcg-histogram}
\end{figure}

\newpage

# Użyte narzędzia

## Java

Simula \autocite{dahl1968simula} jest językiem, który wprowadził podstawowe zagadnienia programowania obiektowego. Przy jego projektowaniu, twórcy położyli nacisk na wykorzystanie języka w symulacjach komputerowych, co wpłynęło na rozwój systemów symulacyjnych. Simula zapoczątkowała połączenie symulacji z programowaniem obiektowym, jako naturalnej reprezentacją symulacji. Związek ten istnieje po dziś dzień w wielu współczesnych narzędziach symulacyjnych zaimplementowanych w popularnych językach obiektowych, jak C++ lub Java \autocite{urbansim, advanced:simulation:library}.

Java \autocite{gosling1995java} jest językiem programowania zaprojektowanym w latach 90. Wywodzi się z rodziny języka C i wspiera programowanie obiektowe. Obecnie Java zawiera pojęcia z wielu różnych paradygmatów programowania, lecz centralnym punktem tego języka są klasy. Pieczę nad rozwojem języka oraz środowiska uruchomieniowego trzyma Java Community Proces, komisja obradująca nad propozycjami rozwoju Javy. 

Głównym założeniem języka Java jest bezpieczeństwo wykonywanych operacji w modelu obiektowym. To doprowadziło do stworzenia języka z automatycznym zarządzaniem pamięcią, działającym na wirtualnej maszynie, zwanej Java Virtual Machine. Przejmuje ona część obowiązków jak poprawność i bezpieczeństwo, z programisty na środowisko uruchomieniowe. 

Standardowa biblioteka Javy jest mocno związana z językiem, więc często nie dokonuje się rozróżnienia pomiędzy samym językiem a standardową biblioteką. Zawiera ona moduły szerokiego zastosowania, struktury danych, model współbieżności, lecz brak w niej wsparcia dla programowania aktorowego, który należy uzupełnić biblioteką zewnętrzną.

## Scala

Scala \autocite{odersky2008scala} jest językiem programowania bardzo bliskim Javie, kompilowany do kodu bajtowego wirtualnej maszyny Javy, aby zachować kompatybilność pełną z tymże językiem i korzystać z bogactwa platformy. Jest to język ogólnego przeznaczenia, łączącym w sobie dwa, uzupełniające się podejścia, programowania obiektowego oraz programowania funkcyjnego, w statycznie typowany język. Jego funkcyjna strona sprzyja budowaniu funkcjonalności z prostych elementów składowych. Podejście obiektowe zaś ułatwia porządkowanie złożonych systemów. Nazwa *Scala* wywodzi się od *scalable language*, aby zaznaczyć jego rozwój wraz z rosnącymi wymaganiami jego użytkowników. Został zaprojektowany do tworzenia zwięzłego kodu w prostych skryptach, jak i rozbudowanych systemach informatycznych.

\newpage

~~~~{.Scala .numberLines caption="Przykład kodu w języku Scala"}
private calculateBalance(currentBalance: Int,
                          amount: Int,
                          e: Event): Int =
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

Akka \autocite{akka:web, roestenburg2015akka} jest zewnętrznym zestawem narzędzi, który implementuje aktorowy model programowania i współbieżności. Zestaw ten napisany jest w języku Scala, lecz wspiera również język Java przez kompatybilny interfejs programistyczny.
Pomimo tego, że model aktorowy zaimplementowany w Erlangu różni się nieco od tego w narzędziach Akka, to miał on znaczący wpływ na ich rozwój i współdzielą ze sobą wiele cech.
Powstał, aby zredukować koszty wytwarzania zadań asynchronicznych i współbieżnych. W założeniu Akka ma zapewniać sprawdzony zestaw funkcjonalności do budowania skalowalnych oraz niezawodnych rozwiązań programistycznych.

~~~~{.Scala .numberLines caption="Przykładowa implementacja aktora używając biblioteki Akka"}
class CustomActor extends Actor with ActorLogging {
  override def receive: Receive = {
    case m: Message => println(s"Received message: $m")
  }
}
~~~~

Akka tworzy warstwę abstrakcji nad niskopoziomowymi aspektami programowania współbieżnego i równoległego jak wątki (*ang. thread*) i blokady (*ang. lock*). Wykorzystuje nieblokujące struktury danych i algorytmy oraz techniki *\gls{cas}*, aby ograniczyć liczbę blokad do minimum.

## Strumienie reaktywne

Obliczenia współbieżne oparte o model blokujący, czekając na zakończenie akcji, blokują swoje dalsze przetwarzanie. W ten sposób znaczna część zasobów sprzętowych pozostaje niewykorzystana. Wykorzystując modele nieblokujące, takie jak model aktorowy, te same zasoby można wykorzystać znacznie efektywniej. Jednakże nadmierne zużycie zasobów może prowadzić do niestabilności systemu. Jeżeli producent wykonuje znacznie więcej asychronicznych akcji, niż konsument jest w stanie obsłużyć, to konsument ten może zostać przytłoczony nadmiarem pracy. Jeśli taka sytuacja zajdzie w modelu aktorowym, to skrzynka odbiorcza aktora konsumenta może zostać przepełniona, co prowadzi do usunięcia danego aktora, a co za tym idzie utraty postępu przetwarzania danych znajdujących się w kolejce. 

Strumienie reaktywne (*ang. Reactive Streams*) powstały jako odpowiedź na potrzebę kontroli przepływu danych w systemach o przetwarzaniu asynchronicznym. Jest to inicjatywa, mająca na celu opracowanie standardu przetwarzania strumieniowego z nieblokującym mechanizmem kontroli przepływu. 
Implementacją tego modelu jest Akka Streams \autocite{akka:web}, czyli rozszerzenie wcześniej wspomnianej implementacji modelu aktorowego o gwarancje niezawodności dostarczane przez Reactive Streams
\autocite{whyreactive2016malawski}.

## React

React \autocite{react:web} został stworzony w firmie Facebook przez zespół web deweloperów w 2013 roku do tworzenia widoków stron internetowych. Biblioteka daje możliwość renderowania komponentów jako widocznych elementów w przeglądarce. Widoki tworzone z wykorzystaniem Reacta składają się z hierarchii złożonych ze sobą komponentów. 
Jedną z głównych cech wyróżniających Reacta od innych bibliotek oraz technik tworzenia graficznych interfejsów użytkownika w przeglądarce internetowej jest wirtualny *\gls{dom}*. Model ten pozwala na aktualizację wyświetlanych treści w oderwaniu od wprowadzanych zmian, co pozwala na automatyczną optymalizację zmian \autocite{wieruch2018road}.

## Websocket

Websocket jest komputerowym protokołem komunikacyjnym, zapewniającym dwukierunkowe połączenie pomiędzy klientem a zdalnym systemem poprzez pojedyncze połączenie *\gls{TCP}* \autocite{RFC7414}. Protokół ten znajduje się w siódmej warstwie modelu *\gls{osi}* \autocite{ISO7498-1}. Dostarcza możliwość przesyłania strumienia wiadomości, gdzie TCP przesyła jedynie bajty, pomiędzy przeglądarką internetową a serwerem
\autocite{RFC6455}.