# Powtórzenie Maturalne

## Hydrostatyka

![Archimedes](https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/portrait-of-archimedes-of-syracuse-unknown.jpg)

- Siła wyporu określona jest wzorem $F=\rho_{ośr} * g * V$
  tzw. **Prawo Arhimedesa**
- ciśnienie: $p=\frac{F}{s} \Rightarrow p=\rho_{ośr} * g * h$

Oznaczenia:
- h - wysokość cieczy nad przedmiotem
- $\rho_{ośr}$ - gęstość ośrodka
- V - objętość **zanużonej** części obiektu
- g - stała grawitacji

### Typy zadań

- zadania, w których należy obliczyć w jakiej części ciało jest zanużone.
  Należy skorzystać z `I zasady dynamiki Newtona` ($Q=F_w$)
- Istnieją również zadania, w których na przykład należy wyznaczyć
  prędkość wynurzania się ciała **po zrównoważeniu się sił**, jednak
  w takim przypadku najczęściej podany jest wzór na konkretną siłę
  która oprucz Q if $F_w$ działą na ciało.

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

- powiedziane jest, że prędkość satelity $v_1$ wynosi `x` I prędkośći kosmicznej $v_0$.
  Oblicz promień orbity w promieniach Ziamii $R_z$.
  * ze ww. wzoru z pierwiastkiem wyliczamy raz $R$ dla $v_1^2$ oraz wartość $v_0^2$
  * podstawiam $v_1^2 = x^2 * v_0^2$
  * po zestawieniu obu wzorów wychodzi nam ładny wynik.

## Wachadła

![wachadło](https://firmaciszak.pl/1019-large_default/wahadlo-uniwersalne-aluminium-5-cm.jpg)

- Wzór na okres **wachadła fizycznego:** $T=2\pi * \sqrt{\frac{I}{d * m * g}}$
- Okres **wachadła matematycznego**: $T=2\pi * \sqrt{\frac{l}{g}}$
```{tip}
Wachadło matematyczne to tylko szczególny przypadek wachadłą fizycznego.
Dowodzi tego następujące przekształcenie
Za `I` podstawiamy wzór dla punktu materialnego, więc:

$$
T &= 2\pi * \sqrt{\frac{I}{d * m * g}} \\
T &= 2\pi * \sqrt{\frac{m * d^2}{d * m * g}} \\
T &= 2\pi * \sqrt{\frac{d}{g}} 
$$

Teraz jeżeli zmodyfikujemy oznaczenie `d` jako `l` otrzymamy dokładnie
wzór na okres drgań wachadła matematycznego.

```

Opis:
- d - odległość od środka masy
- l - długość wachadłą
- I - moment bezwładności

## Termodynamika

### Ciepło molowe

1. Ciepło molowe $c^{mol}$ to ciepło właściwe przeliczone na jeden mol
2. Dla gazów zależy od rodzaju przmiany.
3. Dla gazu doskonałego: $c_p = c_v + R$
4. Dla gazu doskonałęgo $c_v = \frac{m}{2} R$ gdzie m to ilość stopni swobody.
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

