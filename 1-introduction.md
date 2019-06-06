\chapter{Wstęp}

Modele symulacyjne są częścią życia codziennego, więc pojęcie symulacji nie jest obcy nikomu. Prognozy pogody codziennie prezentują ludziom wyniki symulacji pogodowych, na których można obserwować ruchy frontów pogodowych na kilka dni do przodu. Gry komputerowe, które stały się częścią kultury masowej, symulują różnorodne zachowania, umożliwiając każdemu sprawdzenie swoich możliwości jako kierowcy rajdowi, podróżnicy czy architekci. Symulacje umożliwiają w szybki sposób zweryfikować hipotezy i przeprowadzać obserwacje procesów, które w świecie rzeczywistym mogą trwać latami. 

Dynamiczny rozwój sprzętu komputerowego umożliwia tworzenie coraz bardziej złożonych algorytmów oraz dokładniejsze modelowanie rzeczywistości.

Symulacje nie muszą opierać się na oprogramowaniu komputerowym. Modele kolei i zdalnie sterowane pojazdy, jak łodzie i samochody, są przykładami symulacji fizycznych spotykanych na co dzień.

Innym codziennym procesem jest bankowość. Większość Polaków posiada rachunek bankowy i korzysta z usług finansowych banków \autocite{nbp:raportpolakow}.

W Polsce tylko w 2018 dokonano prawie 710 milionów transakcji w bankomatach (*ang. \gls{atm}*) na łączną wartość 429 miliardów złotych. \autocite{nbp:bankomaty}.

Na rynku można znaleźć wiele przykładów oprogramowania służącego do symulacji automatów bankomatowych \autocite{oclf:atm:simulation} \autocite{tranzway:atm:simulator}. Udostępniają zbiór interfejsów użytkownika końcowego wielu producentów sprzętu i oprogramowania do bankomatów. Z jego pomocą użytkownik może dokonać szeregu różnych operacji w systemie bankomatowym, jak wypłata gotówki, przelew czy opłata rachunków. Symulatory te umożliwiają również symulację szeregu dostępnych na rynku protokołów komunikacyjnych oraz operacji serwisowych dokonywanych przez operatorów bankomatu.

Są to zaawansowane aplikacje, realistycznie odwzorowujące pracę pojedynczej maszyny. Niestety nie udało się odnaleźć oprogramowania zdolnego do symulowania interakcji ludzi z siecią wielu bankomatów na terenie miasta na podstawie przygotowanej konfiguracji i danych wejściowych.

# Cel pracy

 - symulacja pracy bankomatu
 - symulacja wypłat ze zbioru bankomatów w terenie
 - wizualizacja powyższych na mapie terenowej

# Zastosowanie

 - dydaktyka - badanie rozkładów, badanie najkrótszych ścieżek zaopatrzenia bankomatów
 - rozkłady - dniowe, godzinowe obciążenia
 - baza danych do gry
 - symulacja samochodów z pieniędzmi, wożących pieniądze - optymalizacja

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

\chapter{Projekt}

# Symulacja

Imitacja oznacza naśladowanie lub kopiowanie czegoś innego. Przykładowo fałszerz naśladuje pracę wielkich artystów, systemy projektowania wspomaganego komputerowo (*ang. \gls{cad}*) dostarczają imitacji procesów produkcyjnych, mapa procesów biznesowych jest imitacją pracy organizacji, a model kolei jest fizyczną imitacją prawdziwego składu kolejowego. Wszystkie z powyższych przykładów można określić mianem symulacji. Jednakże spośród nich moża wyróżnić dwa zbiory. Pierwszym z nich są przykłady uwzględniające upływ czasu, a drugie nie. Stąd wywodzi się pojęcie symulacji statycznej, która reprezentuje proces w konkretnym momencie czasu, oraz symulacji dynamicznej, która odwzorowuje proces zmieniający się w czasie. Termin symulacja najczęściej odnosi się do symulacji dynamicznej. 
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


The real system does not exist. A most obvious difficulty with real world experimentation is that the real system may not yet exist. Apart from building a series of alternative real world systems, which is unlikely to be practical in any but the most trivial of situations, direct experimentation is impossible in such circumstances. The only alternative is to develop a model.

Control of the experimental conditions. When comparing alternatives it is useful to control the conditions under which the experiments are performed so direct comparisons can be made. This is difficult when experimenting with the real system. For instance, it is not possible to control the arrival of patients at a hospital. It is also likely that experimentation with the real system will lead to the Hawthorne effect, where staff performance improves simply because some attention is being paid to them. In some cases the real system only occurs once, for example, a military campaign, and so there is no option to repeat an experiment. With a simulation model the conditions under which an experiment is performed can be repeated many times. The same pattern of patient arrivals can be generated time and time again, or the events that occur during a military campaign can be reproduced exactly as often as is required.

Simulations are not the only models that can be used for understanding and improving the real world. Other modelling approaches range from simple paper calculations, through spreadsheet models, to more complex mathematical programming and heuristic methods (e.g. linear programming, dynamic programming, simulated annealing and genetic algo- rithms). Queuing theory provides a specific class of model that looks at similar situations to those often represented by simulations, arrivals, queues and service processes (Winston 1994). There are some reasons why simulation would be used in preference to these other methods.

Modelling variability. It has already been stated that simulations are able to model variability and its effects. Meanwhile, many of the methods mentioned above are not able to do so. (It should be noted that some modelling approaches can be adapted to account for variability, but this often increases their complexity.) If the systems being modelled are subject to significant levels of variability, then simulation is often the only means for accurately predicting performance. Some systems cannot be modelled analytically. This is illustrated by Robinson and Higton (1995) who contrast the results from a ‘‘static’’ analysis of alternative factory designs with a simulation. In the static analysis the variability, largely resulting from equipment failures, was accounted for by averaging their effects into the process cycle times. In the simulation, the variability was modelled in detail. Whilst the static analysis predicted each design would reach the throughput required, the simulation showed that none of the designs were satisfactory. It is vital that variability is properly accounted for when attempting to predict performance.

Restrictive assumptions. Simulation requires few, if any, assumptions, although the desire to simplify models and a shortage of data mean that some appropriate assumptions are normally made. Many other modelling approaches require certain assumptions. Queuing theory, for instance, often assumes particular distributions for arrival and service times. For many processes these distributions are not appropriate. In simulation, any distribution can be selected.

Transparency. A manager faced with a set of mathematical equations or a large spreadsheet may struggle to understand, or believe, the results from the model. Simulation is appealing because it is more intuitive and an animated display of the system can be created, giving a non-expert greater understanding of, and confidence in, the model.

There are a number of problems with using simulation and these must not be ignored when deciding whether or not it is appropriate.

Expensive. Simulation software is not necessarily cheap and the cost of model develop- ment and use may be considerable, particularly if consultants have to be employed.

Time consuming. It has already been stated that simulation is a time consuming approach. This only adds to the cost of its use and means that the benefits are not immediate.

Data hungry. Most simulation models require a significant amount of data. This is not always immediately available and, where it is, much analysis may be required to put it in a form suitable for the simulation.

Requires expertise. Simulation modelling is more than the development of a computer program or the use of a software package. It requires skills in, among other things, conceptual modelling, validation and statistics, as well as skills in working with people and project management. These are the skills that are discussed in this book. This expertise is not always readily available.

Overconfidence. There is a danger that anything produced on a computer is seen to be right. With simulation this is further exacerbated with the use of an animated display, giving an appearance of reality. When interpreting the results from a simulation, consideration must be given to the validity of the underlying model and the assumptions and simplifications that have been made.




Eksperymenty, fizyczne, ekonomiczne lub socjologiczne, w świecie rzeczywistym bywają skomplikowane lub niemożliwe do przeprowadzenia. Symulacja jest procesem umożliwiającym takie eksperymenty poprzez proces reprezentacji świata rzeczywistego jako uproszczonego, abstrakcyjnego modelu. Aby wprowadzić element różnorodności do symulacji, w wielu przypadkach wykorzystywana jest losowość. Umożliwia to naukowcom wykorzystanie statystycznych obserwacji do uzupełnienia szczegółów uproszczonego modelu, których nie da się przedstawić w modelu matematycznym lub czynniki ten nie mają bezpośredniego wpływu na badanie. Połączenie losowości ze sterowaniem warunkami modelu umożliwia generowanie wyników poprzez zapis cyklu uruchomień modelu i statystyczną ich analizę. Obiektem dyskusji w tej pracy są symulacje komputerowe, chociaż historia symulacji sięga daleko przed powstaniem komputerów. Przed komputerami, dużą rolę w symulacjach odgrywało modelowanie matematyczne. W tej dziedzinie cały system jest przedstawiony w postaci zbioru równań, obliczanych dla zadanych parametrów. W kontraście symulacje opierają się na uruchomieniach modelu, dla których dwa wyniki z tymi samymi warunkami początkowymi mogą być inne. 

Symulacje komputerowe dzielą się na dwie kategorie. Pierwszą z nich stanowią modele, w których aktorzy, ludzie lub inne elementy świata rzeczywistego, wchodzą w interakcję z systemem w czasie symulacji. Systemy te są często nazywane systemami "w pętli" lub symulacją z "ludźmi w pętli". Sztandarowymi przykładem tego typu symulacji są gry komputerowe, interaktywne systemy treningu wojskowego oraz systemy testowania maszyn przemysłowych. Drugą z kategorii są symulacje, w których cały system jest zaprojektowany jako oprogramowanie komputerowe. Wśród nich znajdują się symulacje ze zdarzeniami dyskretnymi, symulacje z czasem dyskretnym oraz symulacje statystyczne/Monte Carlo. Kluczową cechą wyróżniającą metody "w pętli" od pozostałych jest wymaganie odpowiedzi w czasie rzeczywistym.  Systemy "w pętli" muszą odpowiadać w zadanym czasie, aby zewnętrzny obserwator, człowiek lub maszyna, otrzymał odpowiedź na wykonaną akcje. W przeciwieństwie do systemów "W pętli" pozostałe systemy generują wyniki symulacji w dowolnych odstępach czasowych.

W symulacjach ze zdarzeniami dyskretnymi modelowany system jest przedstawiony jako stan i zbiór zdarzeń, które wpływają na niego. Zdarzenia są częściowo uporządkowane wedle czasu, w którym się wydarzyły w modelu. Zdarzenia są przechowywane w uporządkowanej strukturze, jak kolejka, oraz przetwarzane przez algorytm symulacji. Algorytmy oparte o dyskretne zdarzenia implementują pętlę zdarzeń, która przetwarza zdarzenia, dopóki nie zajdzie warunek końcowy. Warunkami stopu może być wyczerpanie kolejki zdarzeń, liczba przetworzonych zdarzeń, upływ czasu w modelu lub warunki opierające się o stan symulacji. Czas jest modelowany jako znacznik ostatnio przetworzonego zdarzenia. W każdym cyklu iteracji pętli zdarzeń najwcześniejsze zdarzenie jest ściągane z kolejki, aby je przetworzyć. W przypadku gdy jest więcej niż jedno zdarzenie z tym samym znacznikiem czasowym, potrzebne jest atomowe przetwarzanie współbieżnych zdarzeń lub mechanizm decyzyjny, który uporządkuje względem siebie zdarzenia. Aby przetworzyć zdarzenie, stan modelu jest modyfikowany na podstawie zawartości zdarzenia. Taka zmiana może mieć również skutki uboczne, które generują kolejne zdarzenia. W symulacji ze zdarzeniami dyskretnymi przedstawiony jest jedynie czas, w którym zdarzenia są generowane, okres pomiędzy może zostać pominięty, aby zredukować moc obliczeniową potrzebną do pokrycia rzadko wypełnionych przedziałów czasowych.

Symulacja z czasem dyskretnym jest modyfikacją symulacji ze zdarzeniami dyskretnymi. Zamiast skokowego postępu czasu wynikającego z czasu zdarzeń, w tym typie symulacji czas posuwa się o stałą wartość. Wszystkie zdarzenia, które pojawiają się w danym okresie, są traktowane tak, jakby wydarzyły się w tym samym momencie. Podejście to ma szereg zalet nad symulacją ze zdarzeniami dyskretnymi. W przypadku dyskretnych zdarzeń, gdy zdarzenia są gęsto rozmieszczone w czasie, symulacja nie może pomijać okresów, co zwiększa zapotrzebowanie na moc obliczeniową. Ten problem nie występuje w symulacji z czasem dyskretnym ze względu na równe odstępy czasu pojawiania się zbioru zdarzeń. Kolejną zaletą wynikającą z tej własności jest brak konieczności utrzymywania globalnej, uporządkowanej struktury danych zdarzeń. Zamiast niej można wykorzystać struktury danych o lepszych właściwościach dostępu do danych, takich jak tablice mieszające. Co więcej, dzięki temu, że w symulacjach z czasem dyskretnym zdarzenia w danym okresie występują jednocześnie, przetwarzanie tego okresu można zrównoleglić. W takim przypadku przetwarzanie można rozdzielić pomiędzy wiele procesów roboczych na zasadzie rozprosz-zbierz (
*ang. scatter-gather*).
\autocite{Hartmann:simulation:2005} \autocite{hartmann:2015:bigsim} \autocite{banks1998handbook} \autocite{lnuth1997art} \autocite{leemis2006discrete} \autocite{robinson2014simulation}

An important simulation problem is that of multi-agent
systems (MAS). A MAS “can be defined as a loosely
coupled network of problem solvers that interact to solve
problems that are beyond the individual capabilities or
knowledge of each problem solver. These problem solvers,
often called agents, are autonomous and can be heteroge-
neous in nature” \autocite{sycara1998multiagent}. Because the definition of an agent is
so broad, MAS can model many different situations, such as
economic, social, and political activity. Of course, creating
realistic simulations is not easy and requires collaboration
with economics and/or other social sciences. However, MAS
provide the technological framework to make such modeling
possible.
Implementations of MAS frameworks vary widely, but
the core parallelization model behind many of them is
that of threads and shared memory. Although this approach
can work, it suffers from the hazards of concurrent data

modification and other race conditions. These issues make
testing and debugging of the frameworks very difficult,
and solutions to these problems typically incur performance
penalties and programmer headaches.
Another approach to parallel programming is the actor
model \autocite{agha86actors}. An actor can be defined as a lightweight process
that communicates with other actors through message pass-
ing. These messages are buffered in the actors’ mailboxes
for the actor to respond to. Actors do not share any memory
with other actors, and they all process concurrently. Message
passing is asynchronous. This model avoids the numerous
shared memory pitfalls associated with the conventional
threaded model of concurrency. The best known actor imple-
mentation is in the language Erlang, a functional language
designed for efficient fault-tolerant distributed systems \autocite{armstrong2010erlang}.
A MAS framework based on this actor model would
avoid many of the concurrency issues afflicting the threaded
frameworks. In such a framework, it would be natural for
each agent to be an actor. Communication between agents
would then be done by the actor’s message passing methods
and the simulation would be implicitly parallel. While it
would help eliminate many reliability issues and make
frameworks much easier to write, this approach is only
practical if the performance is comparable to that of the
threaded frameworks

Having described the modelling of the progress of time, the attention now turns to the second aspect that is central to simulation, modelling variability. In this respect the modelling of unpredictable variability presents the key challenge and so much of the discussion that follows focuses on this. There is, however, a brief discussion on the modelling of predictable variability at the end of the section.
Do tej pory każde uruchomienie jest takie same i jest przewidywalne.
What if 60% of customers are of type X and only 40% of type Y? This could be represented by taking 10 pieces of paper and writing X on six of them and Y on four. The pieces of paper could then be placed into a hat and every time a customer arrives in the model a piece of paper could be drawn out to determine the customer type. It is important that the paper is replaced each time to maintain the ratio of customers at 60:40. Although the second approach would enable different customer ratios to be modelled, it is only suitable for hand simulations; a computer cannot draw pieces of paper from a hat! In computer simulation a similar principle is adopted based upon the use of random numbers.

## Generatory liczb losowych i pseudolosowych

Dla wielu symulacji naukowych, ekonomicznych lub społecznych liczby losowe są niezbędne. Często sam model, taki obserwacje fizyczne, cechuje się losowością parametrów. Lecz nawet wtedy gdy symulowany system nie jest z natury losowy, to zastosowanie losowości jest praktyczne w przypadkach. Gdy wartości parametrów może być nieskończenie wiele, sprawdzanie wszystkich przypadków jest niepraktyczne lub niemożliwe, a losowa próbka pozwoli zbadać typowe zachowanie. Liczby losowe są również wykorzystywane w programach komputerowych, aby sprawdzać efektywność algorytmów. Ponadto, istnieje cała kategoria algorytmów losowych, zwanych też *Monte Carlo*, które opierają swoje działanie na losowości. Szczególnym przypadkiem programów komputerowych, są gry. W nich losowość jest stosowana, aby świat przedstawiony wydawał się bardziej rzeczywisty. Liczby losowe wykorzystuje się do podobnych celów w symulacjach, w których komputer odwzorowuje zjawiska naturalne. 
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
Jednakże metody te okazały się niewystarczające, ponieważ korzystając z prawdziwej losowości, niemożliwa jest przeprowadzenie stochastycznych symulacji w sposób kontrolowany i powtarzalny.

> Jak wiele razy wspomniano, coś takiego jak liczba losowa nie istnieje - występują jedynie metody tworzenia liczb losowych, a ścisła arytmetyczna procedura taką metodą nie jest. \autocite{vonN51}

Jak napisał John von Neumann, wygenerowanie prawdziwie losowych liczb przy pomocy deterministycznego algorytmu jest niemożliwe. Jednakże do symulacji, osiągnięcie asymptotycznie bliskich do prawdziwych wyników, jest wystarczające.
W tym celu można wykorzystać generatory liczb *pseudolosowych*

> Pseudolosową sekwencją nazywamy deterministycznie wygenerowaną sekwencję liczb, która jest nieodróżnialna od prawdziwie losowej sekwencji liczb.

Generator liczb pseudolosowych jest matematycznym algorytmem, który dla zadanego stanu początkowego wytwarza sekwencję liczb pseudolosowych. Generatory te mają kilka zalet nad generatorami liczb prawdziwie losowych. Główną z nich są określone, matematyczne właściwości, jak długość sekwencji, które zapewniają przewidywalność oraz fakt, że można taki generator zaimplementować bez użycia specjalistycznego sprzętu. 
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

$$
x_(n+1) = (ax_n + c) \mod m
$$

\autocite{Ecuyer:rng} \autocite{Hellekalek:rng} \autocite{Ecuyer:simulation:rng} \autocite{Kneusel2018RandomNA} \autocite{Kneusel2018RandomNA} \autocite{lnuth1997art} 


# Użyte narzędzia

Przedstawienie użytych narzędzi i motywacja

## Java

Simula \autocite{dahl1968simula} jest językiem, który wprowadził podstawowe zagadnienia programowania obiektowego. Przy jego projektowaniu, twórcy położyli nacisk na wykorzystanie języka w symulacjach komputerowych, co wpłynęło na rozwój systemów symulacyjnych. Simula zapoczątkowała połączenie symulacji z programowaniem obiektowym, jako naturalnej reprezentacją symulacji. Związek ten istnieje po dziś dzień w wielu współczesnych narzędziach symulacyjnych zaimplementowanych w popularnych językach obiektowych, jak C++ lub Java. \autocite{urbansim} \autocite{advanced:simulation:library}

Java \autocite{gosling1995java} jest językiem programowania zaprojektowanym w latach 90. Wywodzi się z rodziny języka C i wspiera programowanie obiektowe. Obecnie Java zawiera pojęcia z wielu różnych paradygmatów programowania, lecz centralnym punktem tego języka są klasy. Pieczę nad rozwojem języka oraz środowiska uruchomieniowego trzyma Java Community Proces, komisja obradująca nad propozycjami rozwoju Javy. 

Głównym założeniem języka Java jest bezpieczeństwo wykonywanych operacji w modelu obiektowym. To doprowadziło do stworzenia języka z automatycznym zarządzaniem pamięcią, działającym na wirtualnej maszynie, zwanej Java Virtual Machine. Przejmuje ona część obowiązków jak poprawność i bezpieczeństwo, z programisty na środowisko uruchomieniowe. 

Standardowa biblioteka Javy jest mocno związana z językiem, więc często nie dokonuje się rozróżnienia pomiędzy samym językiem a standardową biblioteką. Zawiera ona moduły szerokiego zastosowania, struktury danych, model współbieżności, lecz brak w niej wsparcia dla programowania aktorowego, który należy uzupełnić biblioteką zewnętrzną.



## Scala

Scala, as a language very closely related to Java, bor-
rows much of its syntax; however, it omits semicolons
and eliminates the need for extensive boilerplate code. The
most noticeable difference is a type inference system for
limiting type specification when such specification would be
redundant. These tweaks make Scala much easier to read and
feel more like a scripting language even though it actually
runs on the robust JVM platform. In addition to these simple variations, Scala has many
more subtle differences and features, including very natural
support for pattern matching. This is very useful because
the primary action of an actor is to react to a message with
an action that varies based on message content. Excellent
pattern matching syntax makes this a painless process.
Scala can represent this reaction function as a number of
case statements. These are matching functions evaluated in
sequence on the input. These can match on type or value and
can pull inner values by automatically applying extractors.
Extractors are present in all standard library collections and
can be automatically generated for a class by declaring it
with the case keyword. In the following example, the input
message is checked to see if it is an Int, the String “foo”, or
a Bar that contains 5. A default is provided, but since only
one match can occur, it does not require special syntax.

Scala \autocite{odersky2008scala} jest językiem programowania ogólnego przeznaczenia, łączącym w sobie dwa, uzupełniające się podejścia, programowania obiektowego oraz programowania funkcyjnego, w statycznie typowany język. Jego funkcyjna strona umożliwia budowanie funkcjonalności z prostych elementów składowych. Podejście obiektowe zaś umożliwia porządkowanie złożonych systemów. Nazwa 
*
*Scala
*
* wywodzi się od 
*scalable language
*, aby zaznaczyć jego rozwój wraz z rosnącymi wymaganiami jego użytkowników. Został zaprojektowany do tworzenia zwięzłego kodu w prostych skryptach, jak i rozbudowanych systemach informatycznych. Scala jest kompilowana do kodu bajtowego wirtualnej maszyny Javy, aby zachować kompatybilność pełną z tymże językiem.

//TODO: snippety kodu Scali

## Akka

Akka \autocite{akka:web} \autocite{roestenburg2015akka} jest zewnętrznym zestawem narzędzi, który implementuje aktorowy model programowania i współbieżności. Zestaw ten napisany jest w języku Scala, lecz wspiera również język Java przez kompatybilny interfejs programistyczny. Powstał, aby zredukować koszty wytwarzania zadań asynchronicznych i współbieżnych. W założeniu Akka ma zapewniać sprawdzony zestaw funkcjonalności do budowania skalowalnych oraz niezawodnych rozwiązań programistycznych.

Akka tworzy warstwę abstrakcji nad niskopoziomowymi aspektami programowania współbieżnego i równoległego jak wątki (
*ang. thread*) i blokady (*ang. lock*). Wykorzystuje nieblokujące struktury danych i algorytmy oraz techniki *CAS (compare-and-swap)*, aby ograniczyć liczbę blokad do minimum.

//TODO: snippet kodu z aktorem

### Model aktorowy \autocite{todd:2012:simulation} \autocite{barat:2017:simulation} \autocite{Waite2013ScaNSU} \autocite{Harrison:2015:actors}

TODO: przepisać i uzupełnić

Model aktorowy jest modelem programowania, w którym przetwarzanie jest wykonywane z natury współbieżnie. 
Został on zaproponowany w 1973 roku przez Carla Hewitta, Patera Bishopa oraz Richarda Steigera. Język Erlang oraz jego pośrednia warstwa oprogramowania OTP, zostały stworzone przez firmę Ericsson około roku 1986, bazują na aktorowym modelu przetwarzania i są w wysoce niezawodnych systemach o bardzo dużej skali. Pomimo tego, że model aktorowy zaimplementowany w Erlangu różni się nieco od tego w narzędziach Akka, to miał znaczący wpływ na ich rozwój i współdzielą ze sobą wiele cech.

Podstawową jednostką wykonawczą modelu aktorowego jest *aktor*.

Aktor jest jednostką wykonawczą, która odwzorowuje każdą przychodzącą wiadomość na krotkę składającą się z:

 - skończonego zbioru komunikatów przesłanych do innego aktora;
 - nowego zachowania, które wpłynie na odpowiedź następnego przetwarzanego komunikatu;
 - skończonego zbioru nowo utworzonych aktorów.

\begin{figure}[htbp]
\centering
\includegraphics[width=140mm]{graphics/actor-messages.png}
\caption{Akcje w modelu aktorowym \autocite{karmani2009actor}}
\end{figure}

Aktory, w odróżnieniu od modelu współdzielonych zmiennych, nie dzielą między sobą wspólnych obszarów pamięci. Informacje w obliczeniach aktorów mogą być przekazywane, tylko i wyłącznie, poprzez wiadomości. Model ze współdzieloną pamięcią nie dostarcza żadnych mechanizmów abstrakcji i ukrywania informacji. Aby stwierdzić czy inny obiekt otrzymał dostęp lub zmodyfikował wykorzystywane zmienne wymagane, jest zdefiniowanie odpowiedniego protokołu. Co więcej, nie można stwierdzić czy na danych nie zostały wykonane niewłaściwe lub wręcz niepożądane operacje. Jednym ze sposobów radzenia sobie z sytuacjami tego typu jest wykorzystywanie blokad i synchronizacji. Model aktorowy zakłada, że komunikacja pomiędzy aktorami nie jest synchroniczna, a akcje stanowią częściowy porządek. Nadchodzące wiadomości trafiają do skrzynki odbiorczej, gdzie czekają na przetworzenie. Wszystko to ma służyć zapobieganiu blokowania i przetrzymywania zasobów, co może doprowadzić do zakleszczeń (ang. *deadlock*). Podstawową informacją zawartą w wiadomości jest istnienie innego *aktora*. Jest to spowodowane tym, że *aktor* A może skomunikować się z *aktorem* B jedynie znając jego *nazwę*. Tę wiedzę może posiąść, jeśli otrzymał ją w chwili powstania lub poznał  
w wyniku przetwarzania nadchodzących wiadomości. Co więcej, komunikacja jest transparentna. Pomimo "świadomości" istnienia innego aktora, nie jest znane jego położenie. Umożliwia to utworzenie systemu aktorów fizycznie rozproszonych pomiędzy wiele maszyn połączonych w sieć oraz dynamiczną rekonfigurację topologii \autocite{karmani2009actor, hewitt1977laws, agha86actors}.


## Akka Streams

## Reaktywne strumienie

## React js

## Websocket

# Symulator wypłat z bankomatów

Cel: symulacja ma reprezentować realistyczne, naturalne rozkłady wypłat bankomatowych.

### Elementy symulacji 

// TODO: opisać model - narysować, jak gadają ze sobą elementy. przedstawić jak działa "biznesowo", nie technicznie
// TODO: architektura techniczna model C4
// TODO: opis konfiguracji wejściowej
// TOOD: opis logu wyników
// TODO: opis aplikacji - screeny i wyjaśnienia
// TODO: dlaczego aktory - agent based modeling
// TODO: dlaczego reactive - backpressure, którego nie mają aktory

## Karta

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

 ## Przebieg symulacji

 benchmark - jak szybko generuje



\chapter{Podsumowanie}

# Wnioski

# Problemy

# Rozszerzenia i możliwości rozwoju

 - funkcja wpłatomatu
 - sprawdzanie stanu konta
 - transakcja anulowana - klient rozpoczął transakcje, ale nie wypłacił pieniędzy
  - testowanie modelu
