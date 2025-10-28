## Wzmacniacz jedno tranzystorowy
- Faza dla $f_{g}$ jest obrócona o dodatkowe 45 stopni - analogicznie z filtrem RC.
- Na wyjściu można dodawać szeregowo filtry RC, które będą obracać fazę o kolejne 45 stopni, aż będzie w sumie 360, co po zamknięciu pętli sprzężenia zwrotnego da generator.

## Co się używa do przesuwania fazy?
- Filtr RC - 45 stopni
- filtr LC - przesunięcie o 90 stopni (C równolegle, L szeregowo, C równolegle)
	- to układ rezonansowy więc ma swoją dobroć, im większa tym dokładniejsza częstotliwość.
- kwarc - też 90 stopni i charakteryzuje się większą dobrocią (?) niż rezonator LC.
	- Często układ z inwerterem, 2 res, 2 cap i kwarc.

## Dzielenie częstotliwości
- Licznik 
	-  pojedynczy przerzutnik, gdzie wyjście ~Q jest połączone z wejściem D, więc sygnał na wyjściu zmienia stan co zbocze aktywne, 2 okresy -> 1 okres -> dzielnik /2.
	- Jeżeli weźmie się licznik, np. do 4, to wtedy co 4 zbocza sygnału będzie zmiana na wyjściu /8?

## Mnożenie częstotliwość
- Mieszacz
	- $cos(w_{1}t) \cdot cos(w_{2}t) = \frac{1}{2}(cos((w_{1} + w_{2})t) + cos((w_{1} - w_{2})t)))$
	- Pozwala na sumowanie częstotliwość sygnałów - własności trygonometryczne.

## Cyfrowa synteza bezpośrednia
- licznik - przebieg piłokształtny
- jakiś blok funkcyjny?
- DAC - sygnał docelowy z nałożonym sygnałem zegarowym (z licznika?) - słabe widmo
- filtr interpolacyjny - dolnoprzepustowy, który wygładza usuwając składową z sygnału cyfrowego.

## Synteza pośrednia - PLL
- detektor fazy - filtr - VCO (zamknięcie pętli)
	- VCO - generator przestrajany napięciem, im niższe napięcie tym niższa częstotliwość.
	- Detektor fazy - a wyjściu jest napięcie proporcjonalne do różnicy faz sygnałów wejściowych.
		- XOR najprostszy przykład - zadziała trochę jak sygnał PWM, który się wygładza filtrem dolnoprzepustowym, jednobitowy dac?
	- 

