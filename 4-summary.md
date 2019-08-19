\chapter{Podsumowanie}

Założeniem tej pracy było stworzenie projektu składającego się z symulatora wypłat z sieci bankomatów, narzędzia konfiguracyjnego oraz wizualizacji gotowego wyniku. Projekt, będący tematem tej pracy, zakłada stworzenie 
symulacja rzecz trudna. trzeba wziąć wiele rzeczy pod uwagę. model, generator

mimo że bankomaty w polsce tracą na znaczeniu,  szczególnie wypłaty gotówki, to wciąż są popularne. ponadto dzisijesze bankomaty dostarczają masę innych funkcji niż tylko wypłaty.

obecna implementacja jest bardzo umowną pracą bankomatu, ale silną podwaliną pod rozwój. na rynku są implementacje symulatora bankomatu, który można brać za wzór,ale zespołu bankomatów już nie, więc tutaj symulator jest na plus

output jest elastyczny
tekstowy format
format loga - czytanie z góry na dół i gitara
każda linijka to json - popularny format, można użyć w praktycznie każdym języku programowania - łatwo można wrzucić do bazy danych

interfejs pozwala skonfigurować i oglądać symulację bez znajomości programowania i bebechów - json itd

wizualizacja nie pozwaja na dowolne przewijanie, tylko na przyspieszanie i spowalnianie 

wieloagentowy jako aktor nie wiele pomógł przez ask pattern. mamy 1000 wątków i i tak utyka przez prawo amdhala.

zrobiłem działą, działa szybko, działa szybko na domowym kompie - wystarczająco szybko
model wieloagentowy ładnie wygląda i działa. dzięki akkce wygląda intuicyjnie, bo jeden aktor to jeden agent.
separacja odpowiedzialności w aktorach pozwala na łatwą rozbudowę modelu symulacji
mało realistycznie odwzorowuje pracę bankomatu
interfejs może mieć więcej inforacji

może działać na serwerze

może być wielodostępow

dynamiczny interfejs