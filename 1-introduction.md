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

Bankomat jest automatycznym urządzeniem, którego główną funkcją jest wypłata gotówki z konta bankowego przez jego właściciela. Obecne bankomaty ponadto umożliwiają między innymi sprawdzanie stanu konta, wpłacanie gotówki, przyjmowanie zleceń przelewu.

Jedna tego typu maszyna, w zależności od rozmiaru, mieści do 6 kaset z gotówką, z których każda ma pojemność do 2500 banknotów. Pomimo dużej pojemności w bankomatach znajduje się zwykle kilkaset tysięcy złotych, które uzupełnia się co kilka dni. Ustalenie poziomu zapełnienia bankomatu oraz częstotliwości uzupełniana jest nietrywialnym zagadnieniem logistycznym, które wchodzi w obowiązki operatora automatu, instytucji bankowej lub specjalistycznych operatorów infrastruktury bankomatowej. \autocite{ncr2019marketing, ncr2019tech}

Bankomaty stanowią niezwykle istotny element infrastruktury bankowej w Polsce. Według danych udostępnianych przez banki oraz operatorów bankomatów, liczba bankomatów w Polsce od 2016 systematycznie zmniejsza się. Pomimo tego Polacy wciąż wykonują ponad 650 milionów transakcji przy użyciu bankomatu, a sumaryczna wartość tych transakcji oraz średnia wartość pojedynczej transakcji rośnie z roku na rok. \autocite{nbp:stats, nbp:bankomaty, firkowicz2018bankomaty}

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

\newpage

# Symulacja

Imitacja oznacza naśladowanie lub kopiowanie czegoś innego. Przykładowo fałszerz naśladuje pracę wielkich artystów, systemy projektowania wspomaganego komputerowo (*ang. \gls{cad}*) dostarczają imitacji procesów produkcyjnych, mapa procesów biznesowych jest imitacją pracy organizacji, a model kolei jest fizyczną imitacją prawdziwego składu kolejowego. Wszystkie z powyższych przykładów można określić mianem symulacji. Jednakże spośród nich moża wyróżnić dwa zbiory. Pierwszym z nich są przykłady uwzględniające upływ czasu, a drugą stanowią te, na które czas nie wpływa. Stąd wywodzi się pojęcie symulacji statycznej, która reprezentuje proces w konkretnym momencie czasu, oraz symulacji dynamicznej, która odwzorowuje proces zmieniający się w czasie. Termin symulacja najczęściej odnosi się do symulacji dynamicznej. 
Bazując na wcześniejszym opisie można zdefiniować pojęcie symulacji komputerowej. Jest to komputerowe odwzorowanie procesu zmieniającego się w czasie. Procesem jest w tym przypadku zbiór elementów działających we wspólnym celu. Przykładowo pogoda jest zbiorem składającym się między innymi ze słońca, wody i lądu, którego celem jest utrzymanie życia. 
Spośród istniejących procesów możemy wyróżnić:

 * procesy naturalne - procesy powstałe wraz z wszechświatem, na przykład: atomy, pogoda, układ słoneczny
 * zaprojektowane procesy fizyczne - fizyczne procesy stworzone przez człowieka, na przykład: budynki, pojazdy
 * zaprojektowane abstrakcyjne procesy - abstrakcyjne procesy stworzone przez człowieka, na przykład: matematyka, literatura
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


# Użyte narzędzia

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

React \autocite{react:web} został stworzony w firmie Facebook przez zespół web deweloperów w 2013 roku do tworzenia widoków stron internetowych. Biblioteka umożliwia na renderowanie komponentów jako widocznych elementów w przeglądarce. Widoki tworzone z wykorzystaniem Reacta składają się z hierarchii złożonych ze sobą komponentów. 
Jedną z głównych cech wyróżniających Reacta od innych bibliotek oraz technik tworzenia graficznych interfejsów użytkownika w przeglądarce internetowej jest wirtualny *\gls{dom}*. Model ten pozwala na aktualizację wyświetlanych treści w oderwaniu od wprowadzanych zmian, co umożliwia automatyczną optymalizację zmian. \autocite{wieruch2018road}

## Websocket

Websocket jest komputerowym protokołem komunikacyjnym, umożliwiającym dwukierunkowe połączenie pomiędzy klientem a zdalnym systemem poprzez pojedyncze połączenie *\gls{TCP}* \autocite{RFC7414}. Protokół ten znajduje się w siódmej warstwie modelu *\gls{osi}* \autocite{ISO7498-1}. Umożliwia przesyłanie strumienia wiadomości, gdzie TCP przesyła jedynie bajty, pomiędzy przeglądarką internetową a serwerem.
\autocite{RFC6455}

\chapter{Projekt}

Symulator wypłat z bankomatów, będący tematem tej pracy, umożliwia symulację wypłat z sieci bankomatów rozmieszczonych na terenie miasta. Pierwszą częścią projektu jest symulator, który generuje zachowanie bankomatów, wypłaty oraz sytuacje nietypowe, na podstawie wcześniej przygotowanej konfiguracji. Samo przygotowanie parametrów wejściowych w postaci pliku konfiguracyjnego, to zadanie złożone, dlatego drugą częścią projektu jest graficzny interfejs użytkownika. Jego zadaniem jest ułatwienie użytkownikom przygotowania parametrów oraz uruchomienie symulacji, jak również obejrzenie wyników symulacji w postaci wizualizacji. Gotowy wynik symulacji jest dostępny do wyeksportowania i pobrania z interfejsu.

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

Mapa przedstawia rozmieszczenie bankomatów w przestrzeni. Znajdują się na niej ikony reprezentujące bankomaty. Po kliknięciu w ikonę bankomatu pojawia się okno edycji parametrów bankomatu. 
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
POST /simualtion/simulation-name HTTP/1.1
Content-Type: application/json
{dane zapytania - konfiguracja}
~~~~

Parametry zapytania są przekazywane w jego ciele w formacie *\gls{json}*.

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
 - **atmDefaultLoad** - liczba całkowita będąca wagą obciążenia danego bankomatu w danej godzinie; jeśli nie jest ustawiona, brana jest wartość parametru load* z sekcji default*
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

### Aktor generatora

Aktor generatora jest kluczowym elementem symulacji. Zawiera generator liczb pseudolosowych, na podstawie którego przygotowuje zdarzenia wejściowe symulacji. Użyty generator jest standardowym generatorem liczb pseudolosowych dostarczanym wraz ze standardową biblioteką języka Java. Należy on do rodziny liniowych generatorów kongruencyjnych o 48 bitowym ziarnie \autocite{random:javadoc:web}. 

Zdarzenia generowane są w modelu czasu dyskretnego. Na każdą godzinę czasu symulacji aktor generatora przygotowuje godzinny rozkład prawdopodobieństwa obciążenia każdego z bankomatów na podstawie dostarczonej przez użytkownika konfiguracji. W każdej godzinie generowane są zdarzenia upływu czasu oraz wypłat pieniędzy. Zdarzenie upływu czasu jest wysyłane do aktora efektów ubocznych o upływie czasu.
Ilość wypłat na godzinę oraz ich wysokość jest definiowana na podstawie konfiguracji. Zdarzenia wypłat są wysyłane do aktorów bankomatów, wybranych na podstawie przygotowanych rozkładów prawdopodobieństwa.

Aktor generatora może wytwarzać dane, a następnie przesyłać je do obsługi w krótszym czasie niż sam czas obsługi. Przeciążone procesy przetwarzające zdarzenia mogą doprowadzić do zakłóceń symulacji. Jeżeli ich skrzynki na wiadomości zostaną przepełnione, otrzymane zdarzenia zostaną odrzucone. Nawet jeśli przepełnienie nie nastąpi, to w przypadku znacznej ilości obciążonych aktorów bankomatów zostanie wysycona pamięć operacyjna maszyny, na której przeprowadzana jest symulacja. Aby do tego nie dopuścić aktor generatora używa reaktywnych strumieni, które dostosowują prędkość produkcji danych do możliwości odbiorców. W symulatorze aby połączyć świat reaktywnych strumieni z modelem aktorowym wykorzystywany jest wzorzec *zapytaj (ang. ask pattern)*. Wzorzec ten do asynchronicznego wysyłania wiadomości pomiędzy aktorami dodaje, również asynchroniczne, oczekiwanie odpowiedzi zwrotnej od odbiorcy. Takie połączenie umożliwia dostosowanie tempo produkcji wiadomości do odbiorców tychże.

## Aktor bankomatu

Każdemu skonfigurowanemu bankomatowi odpowiada aktor bankomatu. Jego główną odpowiedzialnością jest reagowanie na zdarzenia wypłat pieniędzy otrzymanych od aktora generatora. Reakcja jest zależna od aktualnego stanu bankomatu.
Poza wypłatami, istotnym zdarzeniem w cyklu życia bankomatu jest uzupełnienie sejfu. Stan został on zamodelowany w postaci maszyny stanów obsługujących dwa główne stany, *działający* oraz *brak pieniędzy*. Elementami stanu bankomatu jest jego nazwa (identyfikator) oraz zawartość sejfu.
Intuicyjnie zdarzenie wypłaty gotówki zmniejsza zawartość sejfu bankomatu, a uzupełnienie zwiększa. Jeśli wartość wypłaty przekracza bieżącą zawartość sejfu, aktor generuje zdarzenie informujące o niewystarczającej ilości gotówki w bankomacie. W sytuacji gdy wypłata opróżni sejf, bankomat przechodzi w stan *brak pieniędzy* oraz generuje zdarzenie o braku pieniędzy. Powrót do stanu *działający* jest możliwe jedynie w wyniku otrzymania zdarzenia uzupełnienia sejfu.
Poza zmianą stanu wewnętrznego w reakcji na nadchodzące zdarzenia aktor bankomatu przesyła własne zmiany stanu do aktora wyjścia.

## Aktor wyjścia

Aktor wyjścia odpowiada za trasowanie wiadomości z innych aktorów. Trafiają one *dziennika danych* oraz *aktora efektów ubocznych*. Aktor wyjścia, podobnie jak aktor generatora, łączy reaktywne strumienie z aktorowym modelem przetwarzania. Sam będąc aktorem przetwarzając otrzymane wiadomości wkłada je do reaktywnego bufora, którego konsumentem jest dziennik danych. Jeśli czas obsługi dziennika danych jest większy niż tempo napływających wiadomości, bufor, to aktora wyjścia przechowuje je w kolejce. Aby nie dopuścić do przepełnienia kolejki wprowadzono w niej mechanizm *przeciwciśnienia*. Jego działanie polega na informowaniu producentów o ilości dostępnych zasobów konsumenta. W tym przypadku zasobem jest dostępne miejsc w kolejce. Aktory niestety, komunikując się jedynie asynchronicznie, z natury nie wspierają przeciwciśnienia. W celu obsługi tego mechanizmu wykorzystano wzorzec *zapytaj*, który opisano w sekcji \ref{aktor-generatora}.

## Dziennik danych

// opis wpisu dziennika - opis dziennika
po co backpressure w aktorze wyjścia? bo dysk wolny

najwolniejszy jest dysk, nieważne jak szybko będziemy generować, trzeba czekać na dysk, bo jebnie
w pierwszej wersji były sortowane, no ale teraz są po buforowane co godzinę, więc wszystkie zdarzenia zachodzą jednocześnie w godzinie -> nie trzeba sortować dla kolejności.


### Zdarzenia

wypłata

time passed

out of money

not enough money

completed

started

## Aktor efektów ubocznych

Aktor efektów ubocznych przechowuje zdarzenia, na które trzeba zareagować na podstawie upływu czasu, w przyszłości. Głównie robi refille na podstawie time pased. Wie kiedy trzeba refilować bankomaty. 
Utrzymuje kolejkę prioryterową zdarzeń którą opróżnia d odpowiednim momencie do odpowiedniego poziomu - czasu. 


## Struktura projektu

// liczba linii kodu, układ folderów i plików, itp

## Benchmark

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
