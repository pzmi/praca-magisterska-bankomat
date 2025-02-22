\chapter{Wstęp}

Modele symulacyjne są częścią życia codziennego, więc pojęcie symulacji nie powinno być obce nikomu. Prognozy pogody codziennie prezentują ludziom wyniki symulacji pogodowych, na których można obserwować ruchy frontów pogodowych na kilka dni do przodu. Gry komputerowe, które stały się częścią kultury masowej, symulują różnorodne zachowania, umożliwiając sprawdzenie swoich możliwości jako kierowcy rajdowi, podróżnicy czy architekci. Symulacje umożliwiają w szybki sposób weryfikować hipotezy i przeprowadzać obserwacje procesów, które w świecie rzeczywistym mogą trwać latami. 

Dynamiczny rozwój sprzętu komputerowego umożliwia tworzenie coraz bardziej złożonych algorytmów oraz dokładniejsze modelowanie rzeczywistości.
Symulacje nie muszą opierać się na oprogramowaniu komputerowym. Modele kolei i zdalnie sterowane pojazdy, jak łodzie i samochody, są przykładami symulacji fizycznych spotykanych na co dzień.
Innym codziennym procesem jest bankowość. Większość Polaków posiada rachunek bankowy i korzysta z usług finansowych banków \autocite{nbp:raportpolakow}.
W Polsce w samym 2018 roku dokonano prawie 657 milionów wypłat w bankomatach (*ang. \gls{atm}*) na łączną wartość 333 miliardów złotych. \autocite{nbp:bankomaty}.

Na rynku można znaleźć wiele przykładów oprogramowania służącego do symulacji automatów bankomatowych \autocite{oclf:atm:simulation, tranzway:atm:simulator}. Udostępniają one zbiór interfejsów użytkownika końcowego wielu producentów sprzętu i oprogramowania do bankomatów. Z jego pomocą użytkownik może dokonać szeregu różnych operacji w systemie bankomatowym, jak wypłata gotówki, przelew czy opłata rachunków. Symulatory te umożliwiają również symulację szeregu dostępnych na rynku protokołów komunikacyjnych oraz operacji serwisowych dokonywanych przez operatorów bankomatu.
Są to zaawansowane aplikacje, realistycznie odwzorowujące pracę pojedynczej maszyny. Nie udało się odnaleźć oprogramowania zdolnego do symulowania interakcji ludzi z siecią wielu bankomatów na terenie miasta na podstawie przygotowanej konfiguracji i danych wejściowych.

# Cel pracy

Celem pracy jest stworzenie symulatora wypłat z sieci bankomatów na terenie miasta oraz narzędzi niezbędnych do konfiguracji i obserwacji wyników symulacji. 
Kluczowymi cechami zaprojektowanego symulatora są: symulowanie długich okresów, jak rok, w rozsądnym czasie przy użyciu sprzętu porównywalnego z komputerem domowym oraz wysoka i łatwa konfigurowalność modelu.

W skład stworzonych narzędzi wchodzi interfejs graficzny do wizualizacji wyników symulacji na mapie, w czasie. Interfejs graficzny umożliwia również konfigurację parametrów wejściowych modelu symulacyjnego.

# Zastosowanie

Wyniki tej pracy można zastosować w dziedzinach naukowych, dydaktycznych lub rozrywkowych. Wykorzystując podstawową funkcję symulacyjną, naturalnym zastosowaniem są badania naukowe, których przykładem może być badanie wpływu wydarzeń społecznych, jak imprezy masowe, na infrastrukturę bankomatową. W dydaktyce przygotowany symulator można wykorzystać na zajęciach z tematyki badania rozkładów prawdopodobieństwa oraz opracowywania najkrótszych ścieżek dla pojazdów zaopatrzenia bankomatów. Logistyka odgrywa znaczną rolę w obsłudze infrastruktury bankowej. Przy dziesiątkach tysięcy bankomatów w całej Polsce, optymalizacja uzupełniania sejfów bankomatowych jest złożonym, wielowymiarowym problemem. Gry komputerowe są popularną rozrywką budującą coraz większy rynek na świecie \autocite{pwc2019outlook}. Zserializowane wyniki symulacji można wykorzystać jako bazę danych do gry komputerowej.

# Plan pracy

W tej pracy znajdują się cztery rozdziały oraz bibliografia zasobów, na których ta rozprawa bazuje. Pierwszy rozdział jest bieżącym rozdziałem wprowadzającym. Drugi rozdział przedstawia fundament wiedzy, na podstawie której prowadzone są rozważania w pracy. Rozdział trzeci prezentuje projekt programistyczny będący tematem tej pracy. Składa się on z dwóch podrozdziałów, z których pierwszy szczegółowo opisuje wynik pracy programistycznej od projektu konceptualnego przez interfejs użytkownika po wysokopoziomowy opis kodu programu. Druga zaś część stanowi rozważania na temat wydajności stworzonego symulatora w odniesieniu do założeń pracy. W ostatnim, czwartym rozdziale, podsumowano wnioski wyciągnięte w procesie tworzenia i testowania projektu, jak również zaproponowano możliwości dalszego rozwoju projektu.