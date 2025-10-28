host - cpu, jest jeden?
device - gpu, może być wiele, nie ma znaczenia, bo liczą się rdzenie.
Najczęściej połączenie magistralą PCIe.

## Co tam jest?
- Pamięć
	- współdzielona
	- cache L1
	- rejestry
- procesory skalarne - liczą rzeczy (ALU) - tą są rdzenie, jak mówi się o rdzeniach, obliczenia stało i zmiennoprzecinkowe (pojedyncza precyzja)
- SFU - jednostki funkcji specjalnych - zaawansowane operacje matematyczne
- PDU - double precision uint - podwójna precyzja zmiennoprzecinkowa
- rzeczy do AI
- transfer danych

## Host
- wysyła i odbiera dane do device
- synchronizacja i zarządzanie pamięcią

## Device
- Liczy, nie?


## Hierarchia wątków
- sieć ma bloki - gridDim
- blok ma wątki - blockDim, najlepiej komunikować się pomiędzy wątkami w obrębie tego samego bloku! Dzięki pamięci współdzielonej.
- indeksowanie
	- bloki w siatce - jak tablica w c, ale 
	- wątki analogicznie
- W architekturze SIMD działa się tak na prawdę na warp'ach, które zawsze mają zadany rozmiar 32 wątków.
	- W obrębie jednego warpu ZAWSZE MUSZĄ być wykonywane te same instrukcje!!!
	- Występuje dywergencja, tam gdzie są ify, w jednym warpie, to wątki muszą na siebie czekać, wychodzi sekwencyjność!

## Cuda - język
1) Wybór urządzenia
2) Alokacja pamięci
3) Kopiowanie danych
4) Uruchomienie jądra
5) Synchronizacja
6) Zwolnienie pamięci

