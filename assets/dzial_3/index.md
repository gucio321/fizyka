# Powtórzenie Maturalne

## Hydrostatyka

![Archimedes](https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/portrait-of-archimedes-of-syracuse-unknown.jpg)

- Siła wyporu określona jest wzorem $F=\rho_{ośr} * g * V$
  tzw. **Prawo Arhimedesa**
- ciśnienie: $p=\frac{F}{s} \Rightarrow p=\rho_{ośr} * g * h$

Oznaczenia:
- h - wysokość cieczy nad przedmiotem
- $\rho_{ośr}$ - gęstość ośrodka
- V - objętość **zanurzonej** części obiektu
- g - stała grawitacji

### Typy zadań

- zadania, w których należy obliczyć w jakiej części ciało jest zanurzone.
  Należy skorzystać z `I zasady dynamiki Newtona` ($Q=F_w$)
- Istnieją również zadania, w których na przykład należy wyznaczyć
  prędkość wynurzania się ciała **po zrównoważeniu się sił**, jednak
  w takim przypadku najczęściej podany jest wzór na konkretną siłę
  która oprucz Q if $F_w$ działa na ciało.

## Pole Grawitacyjne

![Pole Grawitacyjne](https://i.gremicdn.pl/image/free/1a355f7782a6ecfbc249605e3b2638c4)

- Siła w polu grawitacyjnym wynosi: $F = G * \frac{m * M}{r^2}$
- I prędkość kosmiczna: $v = \sqrt{G * \frac{M}{r}}
```{tip}
Warto pamiętać sposób wyprowadzenia:

$$
F_d &= F_g \\
\frac{m * v^2}{r} &= G \frac{m * M}{r^2} \\
v^2 &= G \frac{M}{r} \\
v &= \sqrt{G * \frac{M}{r}}
$$

```
```{note}
Definicja: I Prędkość Kosmiczna to **minimalna** prędkość konieczna, aby ciało
stało się sztucznym satelitom ciała centralnego.
Innymi słowy, jeżeli zadanie określa prędkość kosmiczną, oznacza to, że
$v = \sqrt{G * \frac{M_z}{R_z}}$, gdzie $R_z$ to promień ziemii
```

Oznaczenia:
- G - stała grawitacyjna
- M - masa ciała centralnego
- m - masa obiektu/satelity
- r - odległość _środków masy_ m i M

### Typy zadań z Grawitacji

- powiedziane jest, że prędkość satelity $v_1$ wynosi `x` I prędkości kosmicznej $v_0$.
  Oblicz promień orbity w promieniach Ziemii $R_z$.
  * ze ww. wzoru z pierwiastkiem wyliczamy raz $R$ dla $v_1^2$ oraz wartość $v_0^2$
  * podstawiam $v_1^2 = x^2 * v_0^2$
  * po zestawieniu obu wzorów wychodzi nam ładny wynik.

## Wahadła

![wahadło](https://firmaciszak.pl/1019-large_default/wahadlo-uniwersalne-aluminium-5-cm.jpg)

- Wzór na okres **wahadła fizycznego:** $T=2\pi * \sqrt{\frac{I}{d * m * g}}$
- Okres **wahadła matematycznego**: $T=2\pi * \sqrt{\frac{l}{g}}$
```{tip}
Wahadło matematyczne to tylko szczególny przypadek wahadłą fizycznego.
Dowodzi tego następujące przekształcenie
Za `I` podstawiamy wzór dla punktu materialnego, więc:

$$
T &= 2\pi * \sqrt{\frac{I}{d * m * g}} \\
T &= 2\pi * \sqrt{\frac{m * d^2}{d * m * g}} \\
T &= 2\pi * \sqrt{\frac{d}{g}} 
$$

Teraz jeżeli zmodyfikujemy oznaczenie `d` jako `l` otrzymamy dokładnie
wzór na okres drgań wahadła matematycznego.

```

Opis:
- d - odległość od środka masy
- l - długość wahadłą
- I - moment bezwładności

## Termodynamika

### Energia

- I zas. Dynamiki mówi, że zmiana energii wewnętrznej układu
jest równa sumie ciepła przekazanego oraz wykonanej pracy.
$\Delta U = Q + W_z$
```{note}
Zmianę energii wewnętrznej odzwierciedla temperatura (czytaj poniżej).
```

- Zmiana energii wewnętrznej jest **wprost proporcjonalna** do temperatury
  i może zostać wyliczona z następującego wzoru:

$$
\Delta U = \frac{m}{2} n R \Delta T
$$

### Ciepło molowe

1. Ciepło molowe $c^{mol}$ to ciepło właściwe przeliczone na jeden mol
2. Dla gazów zależy od rodzaju przmiany.
3. Dla gazu doskonałego: $c_p = c_v + R$
4. Dla gazu doskonałego $c_v = \frac{m}{2} R$ gdzie m to ilość stopni swobody.
5. analogicznie, korzystając ze wzorów z pkt. 3 i 4:

$$
c_p &= c_v + R \\
c_p &= \frac{m}{2} * R + R \\
C_p &= \frac{m+2}{2} * R
$$

```{important}
Ilość stopni swobody dla gazu zależy od liczby atomów w cząsteczce i wynosi odpowiednio:

najprostsza definicja stopnia swobody to **ilość** zmiennych potrzebnych
do opisania **położenia** cząsteczki (położenie w przestrzeni X, Y Z oraz
kąty wychylenia/pozycji przestrzennej).

| ilość atomów w cząsteczce | stopnie swobody                       | $c_v$           | $c_p$           |
|---------------------------|---------------------------------------|-----------------|-----------------|
| 1                         | 3 (3 osie XYZ)                        | $\frac{3}{2}*R$ | $\frac{5}{2}*R$ |
| 2                         | 5 (3 osie + ruch obrotowy w 2 osiach) | $\frac{5}{2}*R$ | $\frac{7}{2}*R$ |
| >= 3                      | 6 (3 osie XYZ + ruch obrotowy)        | $3*R$           | $4*R$           |

```

## Optyka

### odbicie i załamanie promieni świetlnych

- załamanie: $\frac{sin(\alpha)}{sin(\beta)} = \frac{\eta_2}{\eta_1}$
- Całkowite wewnętrzne odbicie:

$$
\beta = 90^o \Rightarrow sin(\beta) = 1 \Rightarrow sin(\alpha) = \frac{\eta_2}{\eta_1}
$$

### Soczewka

- Równanie soczewki: $\frac{1}{f} = \frac{1}{x} + \frac{1}{y}$
- Zdolność skupiająca $L = \frac{1}{f}$ (mierzona w Dioktriach)
- powiększenie: $p = \frac{x}{y}$
- Wzór na ogniskową soczewki: $\frac{1}{f} = (\frac{\eta_{soczewki}}{\eta_{ośrodka}} - 1) * (\frac{1}{R_A} + \frac{1}{R_B})$

Opis:
- x - odległość przedmiotu od soczewki
- y - odległość obrazu od soczewki
- f - ogniskowa soczewki
```{note}
Jeżeli wartość zmiennej > 0 - oznacza to że wielkość jest rzeczywista
jeżeli < 0 - urojona
```

### Siatka dyfrakcyjna

- Wzór siatki dyfrakcyjnej $d * sin(\theta) = m * \lambda$

Opis:
- d - odległość szczelin od siebie
- $\theta$ - kąt pomiędzy prążkiem 0-rzędu a prążkiem m-rzędu.
- m - numer prążka
- $\lambda$ - długość fali

## Elektrostatyka, elektromagnetyzm

- Siła elektrostatyczna: $F = k \frac{q_1 * q_2}{r^2}$
- Siła elektrodynamiczna: $F = B * I * l * sin(\alpha)$
- Siła Lorentza (powstaje przy ładunkach poruszających się w polu magnetycznym)
$F = q * v * B * sin(\alpha)$
- Prawo indukcji Faradaya:

$$
\epsilon &= \frac{\Delta \Phi}{\Delta t} \\
\Phi &= B * s * cos(\alpha)
$$
