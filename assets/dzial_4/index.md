# Mechanika

## Wstęp

Przedmiot Mechanika realizowany jest na 1 roku i 1 semestrze studiów wyższych
I stopnia na Akademii Górniczo-Hutniczej im. Stanisława Staszica w Krakowie
na kierunku Fizyka Techniczna.

## Wstęp #2

### Układy Odniesienia

- Kartezjański
    * współrzędne punktu opisane za pomocą wektora wodzącego $\vec{r}$
    * $\vec{r} = \vec{r_x} + \vec{r_y}$
    * współrzędne punktu są określane parą liczb $(x, y)$
    * $\vec{r_x} = r_x * \hat{n_x}$

```{important}
Wersor to wektor o długości 1.\
W Kartezjańskim układzie współrzędnych używany do ustalenia jednostki na osiach.\
ozn: $\hat{n_x}, \hat{n_y}$\
Co do samego wersora, to można powiedzieć że dla $\vec{a}$ $\frac{\vec{a}}{a} = \hat{a}$
```

- Biegunowy
    * Współrzędne określane parą liczb $(|\vec{r}|, \phi)$
    * $\phi$ to kąt pomiędzy $vec{r}$ a osią $OX$
    * wersory $\hat{n_r}, \hat{n_{\phi}}$ oraz $\hat{n_r} \perp \hat{n_{\phi}}$
    * $\vec{r} = r * \hat{n_r}$

```{important}
Wersory układu biegunowego są zmienne
```

```{note}
Przejścia między układami odniesienia:
- Kartezjański $\rightarrow$ biegunowy:

$$
\vec{r} = \sqrt{x^2 + y^2} \\
\phi = arctg(\frac{x}{y})
$$

- Kartezjański $\leftarrow$ biegunowy:

$$
x = r * sin(\phi) \\
y = r * cos(\phi)
$$

```

```{tip}
3-wymiarowa wersja układu biegunowego to układ sferyczny.
Współrzędne w takim układzie określa następująca trójka uporządkowana:
$(r, \theta, \phi)$
```

### Matma

#### Działania na wektorach

```{note}
Własności wektora:
- Punkt zaczepienia
- Wartość
- Kierunek
- Zwrot
```

- Dodawanie wektorów _mam nadzieje że jest jasne_
```{tip}
odejmowanie wektorów $\vec{a} - \vec{b}$ to po prostu $\vec{a} + (-\vec{b})$
```
- Mnożenie wektora przez skalar $x * \vec{a} = [a_x * x, a_y * x]$ (oczywiście wszystkie inne duchowe wymiary obsługiwane)
- Mnożenie wektora przez wektor
    * wektorowy iloczyn skalarny (wynikiem jest skalar)

$$
\vec{a} \cdot \vec{b} = a * b * cos \alpha = a_x * b_x + a_y * b_y \\
$$

```{important}
$$
\bf{cos \alpha = \frac{\vec{a} \cdot \vec{b}}{a * b}}
$$
```

```{tip}
$$
\bf{\vec{a} \perp \vec{b} \Leftrightarrow \vec{a} \cdot \vec{b} = 0}
$$
```

> * wektorowy iloczyn wektorowy (wynikiem jest wektor)

$$
\vec{a} \times \vec{b} = \vec{c}
$$

```{note}
Kierunek wektora $\vec{c}$ określa się na podstawie zasady śruby prawoskrętnej
oraz $\vec{a} \perp \vec{c} \land \vec{b} \perp \vec{c}$
```

Z tego powodu $\vec{a} \times \vec{b} \neq \vec{b} \times \vec{a}$

$$
niech ~ a, b, \alpha \\
|\vec{a} \times \vec{b}| = a * b * sin \alpha
$$

$$
niech ~ \vec{a}, \vec{b} \\
\vec{a} \times \vec{b} = (a_y * b_z - a_z * b_y, a_z * b_x - a_x * b_z, a_x* b_y - a_y * b_x)
$$

```{note}
Powyższy wzór otrzymamy rozważając następującą macierz:

$$
\begin{vmatrix}
\hat{i} & \hat{j} & \hat{k} \\
a_x & a_y & a_z \\
b_x & b_y & b_z
\end{vmatrix}
\\
\\
\begin{matrix}
\hat{i} & \hat{j} & \hat{k} \\
a_x & a_y & a_z \\
b_x & b_y & b_z \\
\color{gray}{\hat{i}} & \color{gray}\hat{j} & \color{gray}\hat{k} \\
\color{gray}a_x & \color{gray}a_y & \color{gray}a_z \\
\end{matrix} ~ W = \\
= \hat{i} * a_y * b_z + a_x * b_y * \hat{k} + b_x * \hat{j} * a_z - \hat{k} * a_y * b_x - a_z * b_y * \hat{i} - b_z * \hat{j} * a_x \\
= \hat{i} * (a_y * b_z - a_z * b_y) + \hat{j} *( a_z * b_x - a_x * b_z) + \hat{k} * (a_x * b_y - a_y * b_x)  \\
$$
```

```{tip}
$$
\vec{a} \parallel \vec{b} \Leftrightarrow \vec{a} \times \vec{b}
$$
```

#### Rachunek różniczkowy
- pochodna określa jak szybko zmienia się funkcja w punkcie $x_0$ względem $x_1$
- $\frac{\Delta y}{\Delta x} = \frac{f(x_0 + \Delta x)-f(x_0)}{\Delta x}$ to tzw. iloraz różnicowy
- $f'(x)$ to **granica ilorazu różnicowego przy $\Delta x \rightarrow 0$**
- Wrażenie $\lim_{\Delta x \to 0} \frac{\Delta y}{\Delta x} = \frac{d y}{d x}$ nazywamy różniczką

```{tip}
$$
niech f(x) = x^2 wtedy \\
\frac{dy}{dx} = \\
= \lim_{\Delta x \to 0} \frac{f(x + \Delta x) - f(x)}{\Delta x} = \\
= \lim_{\Delta x \to 0} \frac{(x + \Delta x)^2 - x^2}{\Delta x} = \\
= \lim_{\Delta x \to 0} \frac{x^2 + 2 x \Delta x + \Delta x^2 - x^2}{\Delta x} = \\
= \lim_{\Delta x \to 0} \frac{2 x \Delta x + \Delta x^2}{\Delta x} = \\
= \lim_{\Delta x \to 0} 2 x + \Delta x = \\
= 2x
$$
```

```{tip}
$(e^x)' = e^x$
```

#### Rachunek całkowy
<!--  jeszcze nie rozumiem całek do końca więc trzeba to przejrzeć TODO -->
Istnieją 2 typy całek
- Całka nieoznaczona:
    * pozwala na odnalezienie funkcji pierwotnej (z której powstała pochodna)
- całka oznaczona
    * może być interpretowana jako pole pod wykresem krzywej

$$
niech F(x) = \int g(x) dx \\
dS = f(x)dx \\
S = \int_A^B f(x) dx \\
\int_A^B f(x) dx = F(B) - F(A)
$$

<!-- 10.10.2023 -->
## Mechanika

### Ruch punktu materialnego na płaszczyźnie

```{note}
korzystamy z modelu punktu materialnego (pomijamy wszystkie statystyki z wyjątkiem masy)
```

Równanie ruchu: $\vec{r}(t) = x(t) * \hat{n_x} + y(t) * \hat{n_y}$

#### Prędkość

```{admonition} Prędkość Średnia
$v_{śr} = \frac{\Delta \vec{r}}{\Delta r}$
```

```{admonition} Prędkość chwilowa
$$
lim_{\Delta r \to 0} \frac{\Delta \vec{r}}{\Delta t} \\
\vec{V} = \frac{d \vec{r}}{d t} = \frac{d}{d t} (x * \hat{n_x} + y * \hat{n_y}) = \\
= \frac{dx}{dt}*\hat{n_x} + \frac{dy}{dt}*\hat{n_y} = \\
= v_x * \hat{n_x} + v_y * \hat{n_y} = \\
bf{= \vec{v_x} + \vec{v_y}}
$$
```

```{tip}
$v$ jest zawsze styczne do toru, po którym porusza się ciało.
```

```{note}
- dla $\vec{v} = const$ ruch **jednostajny prostoliniowy** $\vec{r} = \vec{v} * t$

$$
\vec{v} = \frac{d\vec{r}}{dt} \\
d\vec{r} = \vec{v}dt \\
\int d\vec{r} = \int\vec{v}dt \\
\\
\int d\vec{r} = \vec{r}\\
\\
\vec{r} = \int\vec{v}dt \\
\\
dla ~ v = const \\
\int \vec{v}dt = \vec{v} \int dt \\
\\
\vec{r} = \vec{v}\int dt \\
\vec{r} = \vec{v}t + C \\
$$


- ruch jest **prostoliniowy**, gdy kierunek prędkości jest stały
- ruch jednostajny krzywoliniowy występuje, gdy $|\vec{r}| = const$
```

#### Przyspieszenie

- określa szybkość zmiany prędkości

```{admonition} Przyspieszenie średnie i chwilowe
Przyśpieszenie średnie definiujemy jako:

$$
a_{śr} = \frac{\Delta \vec{v}}{\Delta t}
$$

```

<!--<iframe src="https://www.desmos.com/calculator/oql4j6fhks" width="100%" style="min-height:200px"></iframe>-->

<!--12.10.2023-->
#### Rzut ukośny (przykład 1)
Założenia początkowe
$$
\vec{r_0} = [0,0] \\
\vec{v_0} = [\vec{v_0} cos \alpha, \vec{v_0} sin \alpha] 
$$

```{warning}
Jedyną siłą działającą na ciało w rzucie ukośny jest grawitacja.
$a_x = 0 \\ a_y = -g$
```

$$
\int a_x dt = v_x \\
\int 0 dt = v_x \\
v_x = C_1 = v_0 cos \alpha \\
\\
\int a_y dt = v_y \\
\int -g dt = v_y \\
-g t + C_2 = v_y \\
dla~chwili~t_0:\\
-g * 0 + C_2 = \vec{v} sin \alpha \\
v_x = v_0 cos \alpha \\
v_y = -gt + v_0 sin \alpha \\
$$

$$
x(t) = \int v_x dt \\
x(t) = \int v_0 cos \alpha dt \\
x(0) = v_0 cos \alpha t + C_3 \\
dla~t_0 ~ x=0 \Rightarrow C_3 = 0 \\
x(0) = v_0 cos \alpha t \\
\\
y(t) = \int v_y dt \\
y(t) = \int (-gt + v_0 sin \alpha) dt \\
y(t) = \int -gt dt + \int v_0 sin \alpha dt \\
y(t) = \frac{-gt^2}{2} + v_0 sin \alpha t + C_4 \\
dla~t_0~y_0 = 0 \Rightarrow C_4 = 0 \\
y(t) = \frac{-gt^2}{2} + v_0 sin \alpha t \\
$$

##### Zasięg

$$
t = \frac{x}{v_0 cos \alpha}\\
podstawienie~do~równania~y\\
y = x (\frac{-g}{2} * x{v_0 cos \alpha} + )
$$

$$
d = \frac{2v_0^2 sin\alpha*\cos \alpha}{g}
$$

#### Ruch łudki w poprzek rzeki (przykład 2)

```{admonition} Załorzenia
- prękdość rzeki na środku jest największa (przy przegu prędkość wynosi 0)
Profil prędkości sinusoidalny. (x = cos(\frac{\pi y}{L}))

$$
\vec{r} = [0,0]
v_x = v_0 * sin \alpha~v_0 cos\alpha* t \\
v_y = v_0 cos \alpha
$$
```

$$
x(t) &= \int v_x dt \\
x(t) &= v_0 \frac{L}{\pi~v_1}*cos(\frac{\pi~v_1}{L})*t + C\\
C &= v_0 \frac{L}{\pi v_1} \\
x(t) &= - v_0 \frac{L}{\pi~v_1}*cos(\frac{\pi~v_1}{L})*t + v_0\frac{L}{\pi~v_1}\\
x(t) &= v_0 \frac{L}{\pi~v_1} * (-cos(\frac{\pi~v_1}{L})*t +1 )\\
\\
y(t) &= v_1 t\\
\\
x &= \frac{v_0 L}{\pi V_1}*(1-cos\frac{\pi L}{y}) \\
d &= \frac{2v_0L}{\pi v_1}
$$

### Ruch względny i transformacja galileusza

Rozważmy dwa układy odniesienia ($S$ i $S'$).
$\vec{V_U} = const$ - prędkość $S'$ względem $S$.

```{important}
Załużmy, że $X \parallel X'$
```

```{note}
$$
S \Leftrightarrow S' \\
t' = t = t_0
$$
```

Załużmy punkt $A$, wtedy jego położenie można określić zrówno jako $\vec{r}$ względem $S$
oraz $\vec{r'}$ względem $S'$

**Transformacja** to związek między $\vec{r}$ a $\vec{r'}$.

Niech $\vec{R}$ to wektor określający położenie $S'$ względem $S$

```{note}
$$
dla~t_0 \\
\vec{R} = 0 \\
\vec{R} = v_u * t
$$

niech $R_x = R \land R_y = 0 \land R_z = 0$
```

$$
\vec{r'} = \vec{r} - \vec{R} \\
x' = r_X - v_u t
$$

$$
v_x' = v_x - v_u
$$

```{tip}
Przyspieszenie w obu układach jest stałe $\Leftrightarrow$ wykonują one względem
siebie ruch jednostajny prostoliniowy
```

### Dynamika ruchu po okręgu
$$
\omega = \frac{d\phi}{dt}
$$

$$
\vec{v} = \vec{\omega} \times \vec{r}
$$

```{tip}
$\vec{\omega}$ jest prostopadły do wektora prędkości i promienia wodzącego
(prostopadły do płaszczyzny na któ©ej odbywa sie ruch)
```

Przyspieszenie kątowe $\epsilon = \frac{d \omega}{dt}$

$$
\vec{a} &= \frac{d\vec{v}}{dt} \\
\vec{a} &= \frac{d(\omega \times \vec{r})}{dt} \\
\times~\text{traktujemy jak zwykłe mnożenie i liczymy pochodną}\\
\vec{a} &= \frac{d \vec{\omega}}{dt} \times \vec{r} + \frac{d\vec{r}}{dt} \times \vec{\omega} \\
\vec{a} &= \vec{\epsilon} \times \vec{r} + \vec{\omega} \times \vec{v} \\
$$

### Względność ruchu po okręgu

Niech $S'$ będzie układem inercjalnym względem $S$.
Niech $z = z'$ i niech $\vec{\omega}_{S'} \parallel z \parallel z'$

Dla $t = t' = 0~x = x' \land y = y'$

#### $\bf{\vec{v} \leftrightarrow \vec{v'}}$

$$
dla~\vec{v'} = 0 &\qquad \vec{v} = \vec{\omega}\times \vec{r} \\
dla~\vec{v'} \neq 0 &\qquad \vec{v} = \vec{\omega}\times \vec{r} + \vec{v'} \\
$$

dla układu biegunowego

$$
\hat{n_r} &= cos \phi \hat{n_x} + sin \phi \hat{n_y} \\
\hat{n_\phi} &= -sin \phi \hat{n_x} + cos \phi \hat{n_y} \\
\\
\vec{v} &= \frac{d}{dt} (r \hat{n}) \\
\vec{v} &= \frac{dr}{dt} \hat{n_r} + \frac{d\hat{n_r}}{dt} r \\
\vec{v} &= \frac{dr}{dt} \hat{n_r} + r \frac{d}{dt}\left(cos \phi \hat{n_x} + sin \phi \hat{n_y} \right) \\
\vec{v} &= \frac{dr}{dt} \hat{n_r} + r \left(\frac{d\phi}{dt} (-sin \phi) \hat{n_x} + \frac{d\phi}{dt} cos \phi \hat{n_y} \right) \\
\vec{v} &= \frac{dr}{dt} \hat{n_r} + r \frac{d\phi}{dt} \bf{\left(-sin \phi \hat{n_x} + cos \phi \hat{n_y} \right)} \\
\vec{v} &= \frac{dr}{dt} \hat{n_r} + r \frac{d\phi}{dt} n_\phi \\
$$

#### $\bf{\vec{a} \leftrightarrow \vec{a'}}$

$$
\vec{a} = \vec{a'} + 2\vec{\omega} \times \vec{v} + \vec{\omega} \times (\vec{\omega} \times \vec{r})\\
$$

dla układu biegunowego

$$
\vec{a} &= a_r \hat{n_r} + a_\phi \hat{n_\phi} \\
a_r = \frac{dv_r}{dt} &\quad a_\phi = \frac{dv_\phi}{dt}\\
\vec{a} &= \frac{dv_r}{dt} \hat{n_r} + \frac{dv_\phi}{dt} \hat{n_\phi} \\
\vec{a} &= \frac{d}{dt}\left(\frac{dr}{dt} \hat{n_r} + r\frac{d\phi}{dt} \hat{n_\phi}\right) \\

niech~x = \frac{d}{dt}\left(\frac{dr}{dt} \hat{n_r}\right) &\land
y = \frac{d}{dt}\left(r \frac{d\phi}{dt}\hat{n_\phi}\right) \\

x = \frac{d^2r}{dt^2} \hat{n_r} + \frac{dr}{dt}\frac{d\phi}{dt}\hat{n_\phi} &\land
y = \frac{dr}{dt}\frac{d\phi}{dt}\hat{n_\phi} + r \frac{d}{dt}\left(\frac{d\phi}{dt}\hat{n_\phi} \right)\\

&~y = \frac{dr}{dt}\frac{d\phi}{dt}\hat{n_\phi} + r \left(\frac{d^2\phi}{dt^2}\hat{n_\phi} + \frac{d\phi}{dt}\frac{d \hat{n_\phi}}{dt} \right)\\
\frac{dn_\phi}{dt} &= \frac{d}{dt}\left(-sin\phi\hat{n_x} + cos\phi\hat{n_y}\right) \\
\frac{dn_\phi}{dt} &= \frac{d\phi}{dt}\left(-cos\phi\hat{n_x} - sin\phi\hat{n_y}\right) \\
\frac{dn_\phi}{dt} &= -\frac{d\phi}{dt}\bf{\left(cos\phi\hat{n_x} + sin\phi\hat{n_y}\right)} \\
\frac{dn_\phi}{dt} &= -\frac{d\phi}{dt}\hat{n_r} \\
&~y = \frac{dr}{dt}\frac{d\phi}{dt}\hat{n_\phi} + r \left(\frac{d^2\phi}{dt^2}\hat{n_\phi} - \frac{d^2\phi}{dt^2} \hat{n_r} \right)\\
$$

$$
\vec{a} = 
\frac{d^2r}{dt^2} \hat{n_r} + \frac{dr}{dt}\frac{d\phi}{dt}\hat{n_\phi} + 
\frac{dr}{dt}\frac{d\phi}{dt}\hat{n_\phi} + r \left(\frac{d^2\phi}{dt^2}\hat{n_\phi} - \frac{d^2\phi}{dt^2} \hat{n_r} \right) \\

\vec{a} = 
\color{red}{\frac{d^2r}{dt^2} \hat{n_r}} + \color{green}{\frac{dr}{dt}\frac{d\phi}{dt}\hat{n_\phi}} + 
\color{green}{\frac{dr}{dt}\frac{d\phi}{dt}\hat{n_\phi}} \color{green}{+ r \frac{d^2\phi}{dt^2}\hat{n_\phi}} \color{red}{- r \frac{d^2\phi}{dt^2} \hat{n_r}} \\

\vec{a} = 
\color{red}{\hat{n_r}\left(\frac{d^2r}{dt^2} \hat{n_r} - r\frac{d^2\phi}{dt^2}\right)} 
\color{green}{+\hat{n_\phi}\left(\frac{dr}{dt}\frac{d\phi}{dt} + \frac{dr}{dt}\frac{d\phi}{dt}+ r \frac{d^2\phi}{dt^2}\right)}\\
\\
\left\{\begin{array}
a_x = \hat{n_r}\left(\frac{d^2r}{dt^2} \hat{n_r} - r\frac{d^2\phi}{dt^2}\right) \\
a_y = +\hat{n_\phi}\left(\frac{dr}{dt}\frac{d\phi}{dt} + \frac{dr}{dt}\frac{d\phi}{dt}+ r \frac{d^2\phi}{dt^2}\right)\\
\end{array}\right.
$$

## Dynamika

### Prawo bezwładności aka I Zasada Dynamiki Newtona

```{admonition} Definicja
Swobodny\* **punkt materialny\*\*** zawsze wykonuje ruch jednostajny prostoliniowy 


:::{note}
**\* Swobodny** - nie oddziaływuje z innymi ciałami $(\vec{a} = 0)$ \
**\*\* Punkt materialny** - model bezywmiarowego ciała, w którym jedyną istotną statystyką jest masa
:::

```

```{tip}
**Układy inercjalne** to takie, które wykonują względem siebie jedynie ruch jednostajny
prostoliniowy.
```

### Pęd

```{admonition} Pęd
$\vec{p} = m \vec{v}$
```

```{tip}
$p = \left[kg*\frac{m}{s}\right]$
```

```{note}
Działa zasada zachowania pędu

Całkowity pęd ukłądy, na którego nie oddziaływują siły zewnętrzne
jest stały
```

#### Manewr grawitacyjny

**Manewr grawitaqcyjny** (aka Gravity Assistance - GA) - wykorzystanie
zjawisk grawitacyjnych do zwiększenia prędkości obiektu.

### Zasady dynamiki Newtona

```{admonition} II Zasada Dynamiki Newtona
$$
\vec{F} = \frac{d\vec{p}}{dt}
$$
```

```{admonition} III Zasada Dynamiki Newtona
$$
\Delta p_1 &= -\Delta p_2 \\
\frac{d\vec{p_1}}{dt} &= -\frac{d\vec{p_2}}{dt} \\
\vec{F_1} &= -\vec{F_2}
$$
```

$$
\vec{F} &= \frac{d\vec{p}}{dt} \\
\vec{F} &= \frac{d}{dt}(m \vec{v}) \\
\bf{dla~m=const} \\
\vec{F} &= m \frac{d\vec{v}}{dt} \\
\vec{F} &= m \vec{a} \\
$$

### Układy nieinercjalne i siły bezwładności

| Układy Inercjalne (UI) | Układy Nieinercjalne (UN) |
|---|---|
| $\vec{u} = const$ |  $\vec{u} \neq const$ |
| $a = a'$ | $\vec{a'} = \vec{a} - \vec{a_u}$ |
| $\vec{F'} = \vec{F}$ | $\vec{F} = \vec{a}m - m\vec{a_u}$ |

```{important}
W układzie nieinercjalnym obserwator zawsze stwierdzi istnienie siły bezwładnoći
$\vec{F_b}$
```

#### Przykłady

- wachadło stożkowe (zwykłę wachadło wprowadzone w ruch kołowy)
w układzie inercjalnym powiązanym z kulką wahadła można zaobserwować
siłę odśrodkową (czyli siłę bezwładności)

- Winda

## Odniesienia

- Przedmiot prowadzony przez [profesora dr. hab. inż. Wojciecha Łużny](https://skos.agh.edu.pl/osoba/wojciech-luzny-4050.html)
- [Sylabus Przedmiotu](https://sylabusy.agh.edu.pl/pl/document/7e60a851-0abc-44b6-9cdd-d04f9f50e420.pdf)

