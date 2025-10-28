$\phi = \int f\ d\phi$ !!!!

Zakres chwytania i trzymania - Jak nazwa wskazuje, VCO goni referencję i czy nadąża. Jeżeli nie, to może się okazać, że VCO się złapie na jakiejś innej częstotliwości.


## PDF - phase fraquency detektor
Dwa przerzutniki D sygnały do wejść zegarowych, bramka and do resetu, wyjścia do kluczy ładujących i rozładowujących kondensator.
- Jeżeli jeden sygnał jest przed drugim, to pojemność się ładuje.
- Jeżeli drugi jest przed pierwszym, to pojemność się rozładowuje.
- Jeżeli są równe napięcie na pojemności się nie zmienia (oba klucze się nie otweirają)
Jeżeli wystąpi różnica częstotliwości sygnałów wejściowych, to klucz w torze z większą częstotliwością będzie włączony zdecydowanie dłużej niż ten drugi, więc częstotliwość będzie zmieniać się bardzo szybko w zadaną stronę.

Filtr RC przesuwa fazę:
- $45^{\circ}$ - dla $f_{g}$
- $90^{\circ}$ - dla $\infty$


Ograniczenia pll:
- VCO $f_{min},\ f_{max}$
- REF $f_{min},\ f_{max}$


