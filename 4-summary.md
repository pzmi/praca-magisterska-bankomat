\chapter{Podsumowanie}

Założeniem tej pracy było stworzenie projektu składającego się z symulatora wypłat z sieci bankomatów, narzędzia konfiguracyjnego oraz wizualizacji gotowego wyniku.
Symulator miał zapewnić szybkie symulowanie długich okresów na komputerze domowym. Biorąc pod uwagę wyniki testów wydajnościowych przedstawionych w sekcji \ref{wydajnoux15bux107-symulatora} można wywnioskować, że ten cel został osiągnięty. Łatwość konfiguracji modelu uzyskano dzięki graficznemu interfejsowi użytkownika edytora, niewymagającą znajomości programowania, ani złożonego formatu wejściowego pliku konfiguracyjnego. Wizualizacja na pozwala obejrzeć wyniki symulacji realnej mapie.

Tekstowy format \gls{json} w formie dziennika pliku wyjściowy symulacji jest prosty i elastyczny. Pomimo że taki plik zajmuje więcej przestrzeni dyskowej niż formaty binarne, to można go łatwo przetwarzać, używając większości używanych języków programowania, a także przekonwertować do formatów obsługiwanych przez bazy danych.

Jednakże stworzenie realistycznego symulatora to nie lada wyzwanie, w szczególności odpowiednie dobranie stopnia uproszczenia modelu w stosunku do świata rzeczywistego. Bankomaty w Polsce, pomimo że powoli tracą na znaczeniu, to wciąż są jednym z głównych metod operowania gotówką. Ponadto ich funkcjonalność sięga znacznie dalej niż same wypłaty.
Bankomaty w symulatorze zostały odwzorowane w mocno uproszczonym modelu. Z drugiej strony biorąc pod uwagę ich liczbę oraz zakres czasu symulacji, otrzymane wyniki wciąż mogę być użyteczne do celów badawczych lub edukacyjnych.

Pomimo tego, że osiągnięto zakładaną wydajność, wciąż pozostaje miejsce na usprawnienia. Znaczącym przykładem mogą być synchroniczne fragmenty symulacji, które w znaczny sposób ograniczają wykorzystanie zasobów sprzętowych komputera.

Wizualizacja na rzeczywistej mapie może być atrakcyjnie wyglądającym elementem projektu, jednak jej proste elementy kontrolne mogą być niewystarczające do przeprowadzania szczegółowych analiz. Istotnym kierunkiem rozwoju wizualizacji jest rozbudowanie mechanizmów kontroli czasu, w szczególności wybrania dowolnego punktu na osi czasu symulacji.

Separacja odpowiedzialności i enkapsulacja logik w niezależnych aktorach pozwala na łatwą rozbudowę modelu symulacji. Co więcej, aktorowa reprezentacja bankomatów oraz pozostałych aktorów intuicyjnie odzwierciedla model wieloagentowy.

Zastosowana architektura rozwiązania, klient-serwer, pomimo znacznie wyższego stopnia skomplikowania od aplikacji lokalnych, daje użytkownikom do dyspozycji system wielodostępowy, osiągalny przez sieć. Aktorowy model współbieżności zakłada przezroczystą komunikację pomiędzy pojedynczymi aktorami, co oznacza, że może się ona odbywać lokalnie, przez pamięć operacyjną, jak również przez sieć. Co za tym idzie, możliwe jest przekształcenie obecnego serwera symulacji w system rozproszony, działający na wielu maszynach, nie tylko lokalnie na komputerze domowym.

Pomimo kilku mankamentów projekt otwiera szerokie perspektywy rozwoju.