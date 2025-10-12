## Macierze...

## Graf:
- V - wierzchołki (vertex), numerowane od 0, są węzłami w obwodzie.
- E - krawędzie (edge), strzałkowane zgodnie z kierunkiem prądu w danej gałęzi.
	- V i E to zbiory rozłączne i niezależne
- I - funkcje incydencji, dla każdej krawędzie są 2 wierzchołki, początek i koniec ma znaczenie, od do zgodnie ze strzałkowaniem

## Reprezentacja Grafu
- Pełna macież incydencji:
	- wierzchołki - wiersze
	- kolumny - krawędzie -> tylko 2 miejsca nie 0!!
	- 1 -> początek krawędzi!!!
	- -1 -> koniec krawędzi
	- 0 -> brak zależności
	- Nie można robic pętli własnych, bo 1 i -1 na tym samym miejscu
- Pełna macierz sąsiedztwa:
	- wierzchołki - wiersze i kolumny
	- krawędzie - przecięcia
	- nie da się reprezentowac kilku krawędzi między tymi samymi wierzchołkami 
- Lista incydencji:
	- dla każdego wierzchołka podaje się wszystkie wierzchołki, z którymi jest połączenie.


### Podgraf typu DROGA:
- kierunki bez znaczenia
- nie można powtarzać wierzchołków, być 2 razy w tym samym

### Podgraf typu CYKL (droga zamknięta):
- droga, która ma początek i koniec w tym samym wierzchołku
- to są jedyne powtarzające się wierzchołki!
- musi być po kolei, ale kolejność nie ma znaczenia, kierunek też
- cykl planarny TYLKO:
	- bez krawędzi w środku - oczko
	- dookoła

### Pełna macierz cykli:
- kolumny - krawędzie
- wiersze - cykle
- 1 -> zgodnie z kierunkiem obchodzenia
- -1 -> przeciwnie
- 0 -> krawęź nie bierze udziału w tym cyklu
- Nie można jednoznacznie określić grafu -> ważniejsza macierz incydencji

Graf spójny - można z dowolnego wierzchołka dostać się do dowolnego innego.
Graf silnie spójny - analogicznie, ale potrzeba cykl.

## Prądowe P. K.:
- wykorzystuje się macierz pełnej incydencji Ap
- Ap * wektor prądów = równania prądowe dla każdego węzła
- rząd Ap = l. wierzchołków - 1
- macierz incydencji (niepełna) A -> pomija się węzeł masy:
	- daje liniowo niezależny układ równań liniowych.

## Napięciowe P. K.:
- Pełna macierz cykli - analogicznie, jak wyżej



## Drzewo:
- podgraf?
- zawiera wszystkie wierszchołki, ale żadnego cyklu
-  


