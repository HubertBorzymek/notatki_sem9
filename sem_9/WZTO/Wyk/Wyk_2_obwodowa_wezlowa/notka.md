g - gałęzie układu (NIE KRAWĘDZIE, ale jest tyle samo)

### Łącznie będzie 2g równań:
- NPK i PPK dla każdej gałęzi daje g równań (równowagi).
- pozostałe g równań to równania elementów (równania gałęziowe).
- Powstaje macierz 2gx2g.


## Przekształcenie obwodowe
Zamiast PPK $Ai = 0$, jest $i = D^{T}i_{OK}$
- wszystkie prądy można odtworzyć z prądów, których jest tyle co niezależnych cykli w obwodzie (oczek) - czyli liczba cyklomatyczna $c$. 
- Można to wziąć z przeciw-drzewa, to są prądy w gałęziach przeciw-drzewa (z dokładnością do znaku)
- Prądy obwodowe = Prądy gałęzi przeciw drzewa, $I_{T'} = I_{OK}$
- To działa tylko dla grafów PLANARNYCH, czyli można mówić o oczkach 
	- prądy obwodowe ->prądy oczkowe
- Gałęzie drzewa to jakieś różnice prądów oczkowych (w gałęziach przeciw-drzewa)

## Przekształcenie węzłowe
Zamiast NPK $D u = 0$, jest $u = A^{T}v$
- v - wektor potencjałów węzłowych (względem odniesienia - masy)
- Napięcia gałęzi do masy są równe potencjałom węzłowym.
- Pływające (floating) gałęzie są różnicami między potencjałami węzłowymi.

## Zasada Tellegena (ZT)
- $u^{T}i = i^{T}u = 0$ - zasada zachowania energii
- Wynika z przekształcenia obwodowego lub węzłowego (można tak lub tak)
- Dla różnych układów z tą samą topologią (izomorficzne)
	- $u_{1}^{T}i_{2} = i_{2}^{T}u_{1} = u_{2}^{T}i_{1} = i_{1}^{T}u_{2} = 0$

## Równania gałęziowe
- sieć bez sprzężeń
	- Z Thevenina macierzowo: $U = ZI - E$, gdzie Z to diagonalna macierz impedancji gałęziowych.
	- Z Nortona macierzowo: $I = YU + J$, gdzie Y to diagonalna macierz admitancji gałęziowych.
- sieć ze sprzężeniami
	- macierz $Z$ (lub $Y$) nie jest diagonalna (nie musi być symetryczna), dobrze się to sprawdza dla obwodów ze sprzężeniami magnetycznymi.
- Zgodnie z tym co wcześniej jest 2g równań (2 * gałęzie)

## Metoda prądów obwodowych
- Prądy oczkowe są równe: $I{0} = Z_{0}^{-1}E_{0}$, gdzie $E_{0}$ to macierz z sumą "sił elektromotorycznych" w każdym oczku, czyli suma napięć ze źródeł napięcia. Potem idzie z przekształcenia obwodowego.
-  Szczególny przypadek dla sieci planarnej bez sprzężeń - można zapisać macierz $Z_{0}$ metodą na oko, a nie wyliczając ze zredukowanej macierzy cykli $D$. 
## Metoda coś węzłowych
