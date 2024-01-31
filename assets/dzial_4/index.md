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
## Podstawy Kinematyki

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
\lim_{\Delta r \to 0} \frac{\Delta \vec{r}}{\Delta t} \\
\vec{V} = \frac{d \vec{r}}{d t} = \frac{d}{d t} (x * \hat{n_x} + y * \hat{n_y}) = \\
= \frac{dx}{dt}*\hat{n_x} + \frac{dy}{dt}*\hat{n_y} = \\
= v_x * \hat{n_x} + v_y * \hat{n_y} = \\
\bf{= \vec{v_x} + \vec{v_y}}
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
- ruch jednostajny krzywoliniowy występuje, gdy $|\vec{v}| = const$
```

#### Przyspieszenie

- określa szybkość zmiany prędkości

```{admonition} Przyspieszenie średnie i chwilowe
Przyspieszenie średnie definiujemy jako:

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
C_2 = v_0 sin \alpha \\
v_y = -gt + v_0 sin \alpha \\
$$

$$
x(t) = \int v_x dt \\
x(t) = \int v_0 cos \alpha dt \\
x(t) = v_0 cos \alpha t + C_3 \\
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
y = \frac{-gx^2}{2v_0^2cos^2\alpha} + v_0 sin\alpha \frac{x}{v_0cos\alpha} \\
y = \frac{-gx^2}{2v_0^2cos^2\alpha} + x tg \alpha \\
$$

$$
d = \frac{2v_0 sin\alpha*\cos \alpha}{g} = \frac{v_0 * sin 2 \alpha}{g}
$$

#### Ruch łudki w poprzek rzeki (przykład 2)

```{admonition} Załorzenia
- prękdość rzeki na środku jest największa (przy brzegu prędkość wynosi 0)
Profil prędkości sinusoidalny. ($x = cos(\frac{\pi y}{L})$)

$$
\vec{r} = \left[0,0\right] \\
v_x = v_0 * sin \alpha~v_0 cos\alpha* t \\
v_y = v_0 cos \alpha
$$
```

$$
x(t) &= \int v_x dt \\
x(t) &= \int v_0 * sin(\alpha) dt \\
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
x' = r_x - v_u t
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
(prostopadły do płaszczyzny na której odbywa sie ruch)
```

Przyspieszenie kątowe $\epsilon = \frac{d \omega}{dt}$

$$
\vec{a} &= \frac{d\vec{v}}{dt} \\
\vec{a} &= \frac{d(\vec{\omega} \times \vec{r})}{dt} \\
\times~\text{traktujemy jak zwykłe mnożenie i liczymy pochodną}\\
\vec{a} &= \frac{d \vec{\omega}}{dt} \times \vec{r} + \frac{d\vec{r}}{dt} \times \vec{\omega} \\
\vec{a} &= \vec{\epsilon} \times \vec{r} + \vec{\omega} \times \vec{v} \\
$$

### Względność ruchu po okręgu

Niech $S'$ będzie układem inercjalnym względem $S$.
Niech $z = z'$ i niech $\vec{\omega}_{S'} \parallel z \parallel z'$

Dla $t = t' = 0 \quad x = x' \land y = y'$

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
\vec{v} &= \frac{d}{dt} (r \hat{n_r}) \\
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
\left\{\begin{matrix}
a_x = \hat{n_r}\left(\frac{d^2r}{dt^2} - r\frac{d^2\phi}{dt^2}\right) \\
a_y = +\hat{n_\phi}\left(\frac{dr}{dt}\frac{d\phi}{dt} + \frac{dr}{dt}\frac{d\phi}{dt}+ r \frac{d^2\phi}{dt^2}\right)\\
\end{matrix}\right.
$$

#### Przyspieszenie styczne i normalne

$$
a_s = \frac{d\left|\vec{v}\right|}{dt} \\
\vec{v} = \hat{n_s} v \\
\vec{a} = \frac{d\vec{v}}{dt} \\
\vec{a} = \frac{dv}{dt} \hat{n_s} + \frac{d\hat{n_s}}{dt} v \\
$$

z [tożsamości wersorów stycznego i transwersalnego](#bf-vec-v-leftrightarrow-vec-v)

$$
\vec{a} = \frac{dv}{dt} \hat{n_s} - \hat{n_n} v \\
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

#### Siły działające na ciała na powierzchni ziemii

$$
\vec{a} = \vec{a'} + 2 \vec{\omega} \times \vec{v'} + \vec{\omega} \times (\vec{\omega} \times \vec{r'}) \\
\vec{a'} = \vec{a} - 2 \vec{\omega} \times \vec{v'} - \vec{\omega} \times (\vec{\omega} \times \vec{r'}) \\
m \vec{a'} = m \vec{a} - 2m \vec{\omega} \times \vec{v'} - m \vec{\omega} \times (\vec{\omega} \times \vec{r'}) \\
\vec{F'} = \vec{F} - \vec{F_c} - \vec{F_{od}} \\
\vec{F_c} = -2m \vec{\omega} \times \vec{v} \\
\vec{F_{od}} = -m \vec{\omega} \times (\vec{\omega} \times \vec{r'})
$$

```{admonition} Siła Coriolisa $\vec{F_c}$
- znika dla ciał nieruchomych
- jest prostopadła do prędkości
- powoduje zakrzywienie toru

Tor spadającego ciała odchyli się na wschód.
```

```{tip}
Ciało w rzucie poziomym npl. $\vec{v'}$ na zachód, Siła Coriolisa
odchyli ciało na północ
```

```{note}
Wachadło fuco - doświadczenie pozwalające udowodnić że ziemia się obraca - istnieje siła
Coriolisa
```

### Zastosowania praw dynamiki

```{important}
Przy rozwiązywaniu zadań należy pamiętać o kilku istotnych elementach, m.in:
- Duży rysunek
- Oznaczenie wszystkich istotnych sił
- Wypisanie równań dynamiki (należy uwzględnić tyle równań, ile jest ciał w układzie)
- Bilans równań i niewiadomych
- Jeśli konieczne - poszukać dodatkowych równań (np. związki sił)
```

#### maszyna Atwooda

```{note}
Na bezwładnym bloczku na nieważkiej nici zawieszono dwie masy: $m_1$ i $m_2$
```

Jakie będzie przyspieszenie układu?

$$
\left\{ \begin{matrix}
m_1 * a_1 = m_1 * g - N \\
m_2 * a_2 = N - m_2 * g \\
a_1 = a_2
\end{matrix}\right. \\
+\left\{ \begin{matrix}
m_1 * a = m_1 * g - N \\
m_2 * a = N - m_2 * g \\
\end{matrix}\right. \\
a* (m_1 + m_2) = m_1 * g - m_2 * g \\
a = g * \frac{m_1 - m_2}{m_1+m_2}
$$

#### Siły tarcia

```{admonition} Siła tarcia
Tarcie występuje gdy jedno ciało porusza się względem drugiego oraz
występuje siła dociskająca je do siebie.

- tarcie **kinetyczne** ma miejsce gdy jedno ciało przesuwa się o powierzchni drugiego
```

$$
T = \mu * N
$$

```{important}
Współczynnik tarcia kinetycznego $\mu$ - wartość tablicowa.
```

#### Tarcie Statyczne

```{admonition} Tarcie statyczne
równoważy siłę zsuwającą
- nie jest określone konkretnym wzorem
- $T_s \in \left<0, T_{s_{max}}\right>$
- $T_{s_max} = \mu_s N$
- Najczęściej $\mu_s > \mu$
```

#### Ciało na równi pochyłej

$$
a = g * (sin~\alpha - k * cos~\alpha) \Leftrightarrow k * cos~\alpha > sin~\alpha \\
$$

```{tip}
kąt graniczny przejścia tarcia kinetycznego na statyczne gdy $tg \alpha = k$
```

#### Ruch pod wpływem siły sprężystej

```{admonition} Prawo Hooke'a
$F = -kx$
```

Równanie dynamiki dla oscylatora harmonicznego

$$
F = -kx \\
am = -kx \\
\frac{d^2 x}{dt^2} m = -k x \\
m \frac{d^2x}{dt^2} + kx = 0 \\
\bf{\frac{d^2x}{dt^2} + \frac{k}{m}x = 0} \\
niech \frac{k}{m} = \omega^2 \\
\frac{d^2x}{dt^2} + \omega^2x = 0 \\
$$

```{important}
Równania różniczkowe - równania, w których szukana zmienna znajduje się pod pochodną
```

```{tip}
równanie $\frac{d^2x}{dt^2} + \omega^2x = 0$ jest:
- zwyczajne (jednej zmiennej)
- liniowe
- o stałych współczynikach ($\omega = const$)
- jednorodne (po prawej stronie jest `0`)

$$
x(t) = C_1 * e^{\lambda_1 t} + C_2 * e^{\lambda_2 t} \\
$$

$C_1$ i $C_2$ otrzymujemy z warunków początkowych
$\lambda$ z technicznego podstawienia

$$
x = e^{\lambda t} \\
\frac{d x}{dt} = \lambda e^{\lambda t} \\
\frac{d^2 x}{dt^2} = \lambda^2 e^{\lambda t} \\
\\
\lambda^2 e^{\lambda t} + \omega^2 e^{\lambda t} = 0 \\
\lambda^2 = -\omega^2
$$

$$
\lambda^2 = - \omega^2 \\
\lambda_1 = i \omega \\
\lambda_2 = -i \omega \\
x(t) = C_1 * e^{i \omega * t} + C_2 * e^{-i \omega * t} \\
niech~C_1 = C_2 = C \\
x(t) = C * e^{i \omega * t} + C * e^{-i \omega * t} \\
x(t) = C * (cos (\omega t) + i~sin(\omega t)) + C * (cos (\omega t) - i~sin(\omega t)) \\
x(t) = 2C * cos (\omega t) \\
niech~2C = A \\
x(0) = A \\
$$
```

$$
m \frac{dv}{dt} = \frac{dp}{dt} - v_g \frac{dm}{dt} \\
$$

```{important}
Wzór Ciołkowskiego

$$
v_k = v_p ln \frac{m_p}{m_k}
$$
```

## Dynamika ruchu krzywoliniowego punktu materialnego

```{note}
- siła styczna - $m * \frac{dv}{dt}$
- siła normalna - $m * \frac{v^2}{\rho}$
```

### Moment Siły

Moment Siły

$$
\vec{\tau} = \vec{F} \times \vec{r}
$$

Moment Pędu:

$$
\vec{L} = \vec{r} \times \vec{p}
\\
\frac{dL}{dt} = \frac{dr}{dt} \times \vec{p} + \vec{r} \times \frac{d\vec{p}}{dt} \\
\frac{dL}{dt} = \vec{v} \times \vec{p} + \vec{r} \times \vec{F} \\
\frac{dL}{dt} = \vec{v} \times \vec{v} * m + \vec{r} \times \vec{F} \\
\frac{dL}{dt} = \vec{r} \times \vec{F} \\
\\
\vec{L} = m * \vec{r} \times \left(\vec{\omega} \times \vec{r} \right) \\
$$

```{tip}
Dla ruchu punktu materialnego na płaszczyźnie: $L = \omega m r^2$
```

### Siła Centralna

- $\vec{F} \parallel \vec{r}$

```{note}
Jeżeli ciało wykonuje ruch pod wpływem siły centralnej, to jego moment
pędu względem centrum siły jest stały
```

## Praca i Energia

### Praca

$$
W = \vec{F} * \vec{s} \\
W_{AB} = \int_A^B F * r \\
\bf{W = \int_A^B \vec{F}(\vec{r}) * dr}
$$

```{admonition} Przykład
#### Praca siły oscylatora harmonicznego

$$
\int_0^{x_0} kx dx = k \int_0^{x_0} x dx = \\
= k \left[\frac{1}{2} x^2 \right]_0^{x_0} = \\
\\ = k \left(\frac{x_0^2}{2} - \frac{0^2}{2}\right) = \\
= \frac{1}{2} k x_0^2
$$
```

### Moc

$$
P = \frac{dW}{dt} = \frac{\vec{F} * d\vec{r}}{dt} = \vec{F} * \vec{v}
$$

### Energia

#### Energia Kinetyczna

$$
W = \int_A^B F ds = \int_A^B m \frac{dv}{dt} ds = m \int \frac{ds}{dt} dv = \\
= m \int_A^B v dv = m \left[\frac{v^2}{2}\right]_A^B = \\
= m (\frac{v_B^2}{2} - \frac{v_A^2}{2})
$$

#### Energia Potencjalna

$$
niech F = const\\
\int_A^B F dr = F \int_A^B dr = F \left[r\right] \\

$$

### Siła Zachowawcza

```{admonition} Siła Zachowawcza
to taka, dla której praca **nie** zależy od toru.
```

```{tip}
Aby sprawdzić czy siłą jes zachowawcza należy obliczyć rotację siły
```

niech F będzie siłą zachowawczą
$F \leftrightarrow E_p$

$$
dW = F * dr = F_s * ds = -dE_p \\
\vec{F} = grad E_p \\
F(\vec{r}) = - \frac{dE_p}{dr}
$$

```{important}
$E_k + E_p = const$
```

```{note}
**Energia oscylatora harmonicznego**

$$
E_k = \frac{mv^2}{2} = \frac{\frac{dx}{dt}^2 m}{2} \\
E_k = \frac{m}{2} A^2 \omega^2 cos^2 \omega t \\
\\
E_p = \frac{kx^2}{2} = \frac{k}{2} A^2 cos^2 \omega t \\
E_p + E_k = \frac{m \omega^2 A^2}{2}
$$
```

### Siła oporu w ośrodku lepkim

$$
F_{op} \sim v \\
F_{op} = -K \eta \vec{v}
$$

gdzie:
- $\eta$ - współczynnik lepkości
- K - współczynnik oporu

```{tip}
Dla **kuli** $k = 6 \pi R$
```

```{admonition} Wzór Stoksa
$F_{op} = -6 \pi \eta R \vec{v}$
```

#### Spadek w powietrzu

$$
v(t) = ? \\
F_w = m * g - bv \\
v_\infty= \frac{mg}{b} \\

m * \frac{dv}{dt} + bv = mg \\
\frac{dv}{dt} + \frac{bv}{m} = g \\
\frac{d^2v}{dt^2} + \frac{b}{m} * \frac{dv}{dt} = 0 \\
\lambda^2 + \frac{b}{m} * \lambda = 0 \\
v = C_1 * e^0t + C_2 e ^{-\frac{b}{m}t} \\
v' = C_2 * (\frac{-b}{m}) e ^{-\frac{b}{m}t} \\
C_1 = \frac{mg}{b} \\
v(t=0) = 0 \\
C_2 = -\frac{mg}{b} \\
v(t) = \frac{mg}{b} \left(1-e^{-\frac{m}{b}t}\right)
$$
<!-- co tu się dzieje??? -->

### Dynamika ciało o zmiennej masie

#### 3 przykłady

- Na jadącej po poziomym torze platformie osadza się śnieg

$$
M = m_0 + \mu * t \\
\mu = \frac{d m}{dt} \\
F = \frac{dp}{dt} \\
dp = (m + dm) * (v + dv) -mv \\
dp = dm * v + m * dv + dm * dv \\
dm * dv \to 0 \\
dp = dm * v + m * dv \\
dp = d(mv) \\
F = 0 \Rightarrow d(mv) = 0 \Rightarrow mv = const \\
mv = m_0 v_0 \\
v = \frac{m_0 v_0}{m} \\
v = \frac{m_0 v_0}{\mu * t} \\
$$

- Siła jest stała

$$
niech~v_0 = 0\\
v(t) = ? \\
m = m_0 + \mu * t \\
\mu = \frac{d \mu}{dt} \\
F = \frac{dp}{dt} \\
dp = (m + dm) * (v + dv) -mv \\
dp = dm * v + m * dv + dm * dv \\
dp = dm * v + m * dv \\
dp = d(mv) \\
F = \frac{dp}{dt} \\
F = \frac{d(mv)}{dt} \\
d(mv) = F * dt \\
\int d(mv) = \int F * dt \\
mv = F * t + C  \\
m * 0 = F * 0 + C \Rightarrow C = 0 \\
v = \frac{F * t}{m} \\
v = \frac{F * t}{m_0 + \mu t} \\
$$

- Utrata masy

$$
niech~F = const \\
v(t) = ? \\
m = m_0 - \mu * t \\

F = \frac{dp}{dt} \\
\text{Masa którą tracimy również ma prędkość v, z tąd należy uwzględnić jej pęd}\\
dp = ((m - dm) * (v + dv) + dm * v) - mv \\
dp = m * dv \\

F = \frac{dp}{dt} \\
F = \frac{m * d(v)}{dt} \\
m * dv = F * dt \\
\int (m_0 - dm)dv = \int F * dt \\

v = - \frac{1}{\mu} ln(m_0 - \mu t) * F + C \\

v = \frac{F}{\mu} ln \frac{m_0}{m_0 + \mu t} \\
$$

#### Dynamika rakiety

- $v_g$ - prędkość gazów względem rakiety
  $v_g = v' - v$

$$
niech~F = const \\
v(t) = ? \\
m = m_0 - \mu * t \\

// dp = ((m + dm) * (v + dv) + (-dm) * v') - mv \\
dp = m * dv - v_g dm \\

F = \frac{dp}{dt} \\
F = \frac{d(mv)}{dt} \\
m d(v) = F * dt \\
\int (m_0 - dm)dv = \int F * dt \\

v = - \frac{1}{\mu} ln(m_0 - \mu t) * F + C \\

v = \frac{F}{\mu} ln \frac{m_0}{m_0 + \mu t} \\
$$

#### Energia w płaskim ruchu krzywoliniowym

$$
E = \frac{mv^2}{2} + E_p \\
E = \frac{m}{2}((\frac{dr}{dt})^2 + (\frac{d \phi}{dt})^2 * r^2) +E_p \\
\vec{L} = m r^2 * \vec{\omega} \\
E = \frac{m}{2}\left(\left(\frac{dr}{dt}\right)^2 + \omega^2 * r^2\right) +E_p \\ 
E = \frac{m}{2}\left(\left(\frac{dr}{dt}\right)^2 + (\frac{L}{mr})^2\right) +E_p \\ 
E = \frac{m}{2}\left(\frac{dr}{dt}\right)^2 + \frac{L^2}{2mr^2} +E_p \\ 
$$

niech siła będzie centralna

$$
\frac{L^2}{2m} = const = C \\
E = \frac{m}{2}(\frac{dr}{dt})^2 + \frac{C}{r} +E_p \\ 
$$

## Ruch drgający

### Kinematyka prostego ruchu harmonicznego

$$
x(t) = A sin(\omega * t + \phi_0) \\
\omega = \frac{2 \pi}{T} \\
\hat{x} = \hat{A} e^{i * \omega t} \\
\hat{A} = e^{i \phi}
$$

### Wachadło matematyczne

```{note}
**Wachadłęm matematycznym** nazywamy punktową mase $m$ zawieszoną na nieważkiej, nierozciągliwej
i nieskończenie cienkiej nici o dlugości $L$
```

$$
F = am \\
g sin \alpha = L \frac{d^2 x}{dt^2} \\
\frac{g sin \alpha}{L} = \frac{d^2 x}{dt^2} \\
\text{niech} sin \alpha \approx \alpha \\
g \alpha = L \frac{d^2 x}{dt^2} \\
\alpha(t) = A sin(\omega t + \phi_0) \\
\omega^2 = \frac{g}{L} \\
\omega = \frac{2\pi}{T} \\
T = 2 \pi \sqrt{\frac{L}{g}}
Jeżeli~sin \alpha \neq \alpha \\
T' = T'_ 0 \sqrt{1+\frac{\alpha_0}{16} + ...}
$$

### Superpozycja drgań prostych

- dla $\phi = 0 \quad \alpha = (A_1 + A_2) cos(\omega t)$
- dla $\phi = \pi \quad \alpha = |A_1 - A_2| cos(\omega t)$

$$
\hat{x} = \hat{A} e^{i(\omega t+\phi)} \\
\hat{x_1} + \hat{x_2} = e^{i \omega t}(\hat{A_1} + \hat{A_2} e^{i \phi}) \\
$$

#### $\omega_1 \neq \omega_2$

Niech $\phi = 0$

- Niech $A_1 = A_2$

$$
x_1 + x_2 = A cos \omega_1 t + A cos \omega_2 t
x = 2A_1 cos \frac{\omega_1 t - \omega_2 t}{2} * cos \frac{\omega_1 t + \omega_2 t}{2}
$$

- $x_1 \perp x_2$

$$
x_1 = A cos(\omega t) \\
x_1 = B cos(\omega t) \\
$$

$$
E_p = C + \frac{1}{2}k (x-x_0)^2
$$

### Drgania Harmoniczne tłumione

$$
\vec{F} = b \vec{v} \\
\\
m \frac{d^2x}{dt^2} + b \frac{dx}{dt} + kx = 0 \\
\frac{d^2x}{dt^2} + \frac{b}{m} \frac{dx}{dt} + \frac{k}{m} x = 0 \\
\frac{d^2x}{dt^2} + \frac{b}{m} \frac{dx}{dt} + \omega_0^2 x = 0 \\
\\
\frac{d^2x}{dt^2} + 2 \beta \frac{dx}{dt} + \omega_0^2 x = 0 \\
\\
x = e^{\lambda t} \\
\lambda^2 + 2 \beta \lambda + \omega_0^2 = 0 \\
\Delta = 4 \beta^2 - 4 \omega_0^2 \\
\Delta = -4 (\omega_0^2 - \beta^2) \\
$$

Występują 3 przypadki:
- przypadek słabego tłumienia: $\beta < \omega_0 \Rightarrow \Delta < 0$

$$
\sqrt{\Delta} = 2i \sqrt{\omega_0^2 - \beta^2} \\
niech~\omega' =  \sqrt{\omega_0^2 - \beta^2} \\
\sqrt{\Delta} = 2i \omega' \\
\\
\lambda_1 = \frac{-2\beta - 2i \omega'}{2} \\
\lambda_1 = -\beta -  \omega' \\
\lambda_2 = -\beta +  \omega' \\
x = C_1 e^{(-\beta - \omega') * t} + C_2 e^{(-\beta + \omega') * t} 
niech~C_1 = C_2 \\
x = Ce^{-\beta t}( e^{i \omega' * t} + e^{-i \omega' * t}) \\
\text{z eulera} \\
x = Ce^{-\beta t} 2 cos \omega' t \\
niech~2C=A \\
x = A * e^{-\beta t} 2 cos \omega' t \\
$$

<iframe src="https://www.desmos.com/calculator/fppkbqfmvz" width="100%" style="min-height:200px"></iframe>

- silne tłumienie

Obydwa pierwiastki z delty są rzeczywiste
Nie pojawiaja się funkcje trygonometryczne $\Rightarrow$ nie pojawiają
się drgania. Występuje pęzanie

- tłumienie krytyczne $\omega_0 = \beta$

### Drgania wymuszone i rezonans

$$
F_w(t) = F_0 * sin(\omega t) \\
am = -kx - bv + F_w \\
\frac{d^2x}{dt^2} + 2\beta \frac{dx}{dt} + \omega_0^2 x = \frac{F_0}{m} sin(\omega t) \\
x(t) = A sin(\omega t + \delta) \\
\frac{d^2 \hat{x}}{dt^2} + 2\beta \frac{d\hat{x}}{dt} + \omega \hat{x} = \frac{F_0}{m} e^{i \omega t} \\
\hat{x} = \hat{A} e^{i\omega t} \\
\\
... \\
\\
\hat{A} (\omega_0^2 - \omega^2 + 2 \beta \omega i) = \frac{F_0}{m} \\
\bf{\hat{A} = \frac{\frac{F_0}{m}}{\omega_0^2 - \omega^2 + 2 i \beta \omega}}
$$

$$
A = |\hat{A}| = \frac{\frac{F_0}{m}}{\sqrt{(\omega_0^2 - \omega^2)^2 - 4 \beta^2 \omega^2}} \\
tg \delta = - \frac{2 \beta \omega}{\omega_0^2 - \omega^2}
$$

<iframe src="https://www.desmos.com/calculator/7ta79ggit4" width="100%" style="min-height:200px"></iframe>

### Analiza Furiera Ruchu Harmonicznego

```{note}
funkcja jest okresowa jeżeli $x(t+T) = x(t)$, wtedy $T$ nazywamy okresem.
```

$$
niech~x(t) = C_1 cos(\omega t) + C_2 sin(\omega t)
$$

```{admonition} Twierdzenie Furiera
Każda funkcja okresowa o okresie `T` może być przedstawiona jako 
suma funkcji sinusoidalnych w następującej postaci:

$$
x(t) = a_0 + a_1 cos (\omega t) + a_2 cos (2 \omega t) + ... + a_n cos (n \omega t) + \\
+ b_1 sin (\omega t) + b_2 sin (2 \omega t) + ... + b_n sin( n \omega t)
$$
```

```{tip}
To ile wyrazów ww. ciągu należy użyć zależy od tego jak bardzo wykres danej funkcji
różni się od sinusoidy
```

### Reprezentacja ruchu drgającego w przestrzeni fazowej

```{admonition} Przestrzzeń Fazowa
Przestrzeń zależności położeń i pędów (lub położeń i prędkości).
Wymiar przestrzeni fazowej wynosi dla 3-wymiarowego ruchu `6n` dla n cząstek
```

Niech:

ruch 1-wymiarowy,

$$
x = A cos \omega t \\
v = A \omega sin \omega t \\
\frac{x^2}{A^2} + \frac{v^2}{A^2 \omega^2} = 1
$$

<iframe src="https://www.desmos.com/calculator/uz2vput5xj" width="100%" style="min-height:200px"></iframe>

_Wykres $V(x)$_

```{tip}
załóżmy wachadło matematyczne skłądająće się z nieważkiego sztywnego pręta
oraz masywnej kulki.

$$
E_p = mgh \\
E_p = mg \left(L - L cos \alpha \right) \\
$$

Szukamy wykresu ruchu w przestrzenii fazowej

dla dużych amplitud pręta elipsa opisująca drgania
(patrz wykres powyżej) staje się coraz bardziej krzywą
przypominającą "romb"

:::{note}
Punkt osobliwy - punkt w którym zachowanie ukłądu jest nieokreślone -
na przykłąd gdy nasz pręt jest skierowany pionowo do góry a jego prędkość jest zerowa 
nie wiadomo w którą stronę rozpocznie się ruch
:::

```

```{admonition} atraktor
kształt do którego dążą wszystkie trajektorie przy $t \to \infty$
```

#### Tłumienie i wymuszenie

- trajektorią ruchu harmonicznego oscylatora tłumionego jest spirala.
-  dla ruchu wymuszonego atraktorem jest elipsa

<details><summary>Dygresja</summary>

Atraktorem trajektorii w dynamice jest elipsa, a w ewolucji krab

<img src="https://monocerus.pl/7992-large_default/papo-56047-krab.jpg">

</details>

```{note}
Problem 3 mas - rozważmy ruch jednego ciała w polu grawitacyjnym dwuch nieruchomych gwiazd...
```

### Chaos

$$
F_s = -kx \\
F_w-bv
$$

- nieliniowość
- czułość na warunki początkowe

```{admonition} bifurkacja
Dla pojedynczej nieliniowości występuje podwojenie okresu, czyli ciało
powraca do tego samego punktu po przebyciu dwuch okresów.
```

```{important}
Ukłąd opisany całkowicie deterministycznymi równaniami staje się **nieprzewidywalny**
jeżeli istotne jest **niedokładne** określenie **warunków początkowych**.


Zachowanie układu chaotycznego w czasie jest nieregularne i nieprzewidywalne.
```

## Grawitacja

### Prawa Kepplera

```{admonition} I Prawo Kepplera
Planety poruszają się po elipsach.
```

```{admonition} II Prawo Kepplera
Wektor wodząćy planety zartacza równe pola powierzchni w równych przedziałach czasu
```

```{admonition} III Prawo Kepplera
Kwadraty okresów obiegóœ planet są proporcjonalne do sześcianów i ch średnich odległości od Słońca.

$$
\bf{\frac{T_1^2}{T_2^2} = \frac{a_1^3}{a_2^3}} \Rightarrow \frac{T^2}{a^3} = const
$$
```

### Dynamika planet według Newtona

Rozważmy pojedynczy wycinek trajektorii planety.
Po przypliżeniu fragmentu łuku do prostej:

$$
s = \frac{1}{2} R h \\
\alpha = \frac{h}{r} \\
\alpha = \omega * \Delta t \\
L = mr^2 \omega \Delta t \\
\vec{L} = const\\
$$

```{important}
Siła odpowiadająca za ruch planety jest centralna
```

$$
F(R) \sim \frac{1}{R^2} \\
F(R) = G \frac{m M}{r^2} \\
$$

```{admonition} Masa Ziemii
$$
M_z = \frac{g R_z^2}{G}
$$
```

### Oddziaływanie grawitacjyne

Oddziaływanie grawitacyjne między dwoma ciałąmi jest opisane przez centralną
siłę przyciągającą proporcjonalną do iloczynu ich mas i odwrotnie proporcjonalną do kwadratu odległości
między nimi.

```{tip}
- natężenie pola grawitacyjnego oznaczamy jako $\vec{\gamma}$

$$
\vec{\gamma} = \frac{\vec{F}}{m} \quad \left[\gamma\right] = \frac{m}{s^2}
$$
```

```{admonition} Zasada superpozycji pól
Nateżenie pola grawitacyjnego wytworzonoego przez układ mas
jest równe sumie wektorowej pól wytworzonych przez poszczególne składniki.
```

```{admonition} Potencjał
$$
\Phi = \frac{E_p}{m}
$$
```

$$
F(R) = -G \frac{Mm}{r^2} \\
E_P = \int G \frac{Mm}{R^2} = G M m \frac{-1}{R} + C
$$

#### Energia Potencjalna

### Ruch w centralnym polu grawitacyjnym

Rozważamy dwie masy: Masę centralną (np. Słońce) oraz ciało w małej masie.

Obiekt wpada w pole grawitacyjne M z prędkością $v_0$.

#### Opis krzywych stożkowych w biegunowym układzie współrzędnych

załużmy dodatkową prostą pionową w układzie w odległlości `d` od bieguna (kierownica).

rozważmy dwa parametry:
- r - długość wektora
- odległość punktu od kierownicy: $r - d * cos \phi$

zbiór wszystkich punktów równo odległych od bieguna i kierownicy tworzy parabolę.

$$
\frac{r}{d-r cos \phi} = 1
$$

Niech:

$$
\frac{r}{d-r cos \phi} = \epsilon = const \\
r = \frac{\epsilon d}{1+ \epsilon cos \phi} \\
niech~p = \epsilon d \\
\bf{r = \frac{p}{1+\epsilon cos \phi}}
$$

```{note}
$\epsilon$ nazywamy mimośrodem.

:::{tip}
wartość mimośrodu dla paraboli wynosi 1
:::
```

```{note}
- dla $\epsilon = 0$ równanie opisuje okrąg (nie ważne że w p jest epsilon)
- dla $\epsilon \in (0,1)$ - elipsa
- dla $epsilon = 1$ - parabola
-- dla $\epsilon > 1$ - hiperbola
```

#### twierdzenie o krzywych stożkowych
$$
E_k = \frac{mv^2}{2} =  \\
E_p = G \frac{mM}R \\
\\
E_C = \frac{m}{2} * \left(\frac{dr}{dt}\right)^2 + \frac{L^2}{2mr^2}-G\frac{Mm}{R} \\
\frac{m}{2} * \left(\frac{dr}{dt}\right)^2 =-E_c -  \frac{L^2}{2mr^2}+G\frac{Mm}{R} \\
\left(\frac{dr}{dt}\right)= \sqrt{\frac{2}{m}(E_c +G\frac{Mm}{R}) - \frac{L^2}{m^2r^2}} \\
dt = \frac{dr}{\sqrt{\frac{2}{m}(E_c +G\frac{Mm}{R}) - \frac{L^2}{m^2r^2}}} \\
\\
\omega = \frac{d \phi}{dt} = \frac{L}{mr^2}
dt = \frac{d \phi mr^2}{L}
\\
\frac{d \phi mr^2}{L} = \frac{dr}{\sqrt{\frac{2}{m}(E_c +G\frac{Mm}{R}) - \frac{L^2}{m^2r^2}}} \\
d \phi = \frac{\frac{L}{mr^2} dr}{\sqrt{\frac{2}{m}\left(E+\frac{GMm}{r}\right)-\frac{L^2}{m^2r^2}}} \\
\phi = arccos\left(\frac{\frac{L}{r} - G \frac{m^2 M}{L} }{\sqrt{2mE + G^2 \frac{m^4 M^2}{L^2}}}\right) + C \\
cos \phi = \frac{\frac{L}{r} - G \frac{m^2 M}{L} }{\sqrt{2mE + G^2 \frac{m^4 M^2}{L^2}}} \\
cos \phi = \frac{\frac{L^2}{G m^2 M } - 1}{\sqrt{\frac{2EL^2}{G^2 m^3 M^2} + 1}} \\
ok~niech~cos \phi = \frac{\frac{p}{r}-1}{\epsilon} \\
cos \phi = r = \frac{p}{1+\epsilon cos \phi} \\
E=\frac{G^2 M^2 m^3}{2L^2} (\epsilon^2 -1) \\
$$

```{note}
- dla energii najmniejszej ruch po okręgu
- dla ujemnej po elipsie
- dla równej 0 po paraboli
- dla większej od 0 po hiperboli
```

```{tip}
$$
b = \frac{L}{\sqrt{2m|E|}} \\
$$
```

### Oddziaływanie grawitacyjne mas kulistych

#### Przykłady wstępne

rozważmy pole grawitacyjne pręta.

z zasady wuperpozycji

rozważmy punkt na osi pręta

$$
d \gamma = - \frac{G dM}{x^2} \\
\gamma = \int - \frac{G dM}{x^2}dx \\
\\
dM = \frac{M}{L}
\\
\gamma =-G \frac{M}{L} \int x^{-2} dx \\
\\
\gamma = G M * \frac{1}{(a)(a+L)}
$$

Z tego wynika ze w przypadku pręta nie można założyć że cała masa
jest skupiona w środku pręta

#### Pole powierzchni sfery

podzielmy sferę na małe paski o kształcie pierścienia
o powierzchni ds.

$$
ds = 2\pi R d \phi * R sin d\phi = R^2 d\phi sin d \phi \\
P = \int_0^{\pi} 2 \pi R d \phi * R sin d\phi = R^2 d\phi sin d \phi d \phi \\
P = R^2 2 \pi (1+1) = 4 pi R^2
$$

#### Objętość kuli

dzielimy kulę na warstwy sferyczne.

$$
dV = 4 \pi r^2 * dr \\
V = \int_0^R 4 \pi r^2 * dr \\
V = \frac{4}{3} \pi R^3
$$

#### Pole grawitacyjne wytworzone przez sferę

$$
\frac{dE_P}{dr} = -F
\frac{d\Phi}{dr} = \gamma
$$

kula o masie M i promieniu R

$$
d \Phi = -G \frac{dm}{a} \\
\Phi = -G \frac{m}{a}\\
$$

a to odległość od punktów na pierścieniu

- Wzór na potencjał od całęj sfery: $\Phi = -G * \frac{M}{r}$
- Potencjał pola wewnątrz sfery wynosi $\Phi = -G \frac{M}{R} = const$
- potencjał od kuli $\Phi = -G \frac{M}{r}$

_R - promień sfery, r - odległość od środka sfery$

### Podstawy eksploracji przestrzeni kosmicznej

$$
v = \sqrt{\frac{GM}{R_z+h}} \\
T = \frac{2 \pi R_z}{v_I} \\
T = \sqrt{\frac{4 \pi^2 R_z}{G M_z}}
$$

```{note}
Okres przelotu z I Prędkością kosmiczną wokół ziemii jest równy okresowi
przelotu przez tunel wywiercony przez środek ziemi.
```

#### Eksploracja układu słonecznego

$$
\frac{mv_{II}^2}{2} - \frac{GM_z}{R_z} \\
v_{II} = \sqrt{\frac{2GM_z}{R_z}} = v_I \sqrt{2}
$$

## Dynamika Układu Punktów

### Środek masy

W układzie punktów znajduje się punkt reprezentujący układ mas okreśłony wektorem $\vec{r_{Cm}}

$$
r_{Cm} = \frac{m_1 \vec{r_1} + m_2 \vec{r_2} + ... + m_n \vec{r_n}}{m_1 + m_2 + ... + m_n} = \frac{1}{M} * \Sigma_{i = 0}^n m_i \vec{r_i}
$$

$$
v_{Cm} = \frac{1}{M} * \Sigma_{i=0}^n p_i
$$

$$
a_{Cm} = \frac{1}{M} \Sigma_{i=0}^n F_i
$$

```{tip}
Środek masy ukłądu cząstek porusza się w taki sposób, jakby cała masa była skupiona w środku masy
i jakby na niego działały wszystkie siły zewnętrzne.
```

```{tip}
Względny ruch cząstek poddany działaniu tylko sił wewnętrznych jest równoważny ruchowi cząstki o masie zredukowanej poddanej
działaniu siły równej wzajemnemu oddziaływaniu.
```

### Moment Pędu układu cząstek

```{note}
$L = m * \vec{r} \times \vec{v}$
```

$$
L = \Sigma_{i=0}^n L_i
$$

```{note}
szybkość zmian momentu siły dowolnego ukłądu cząsteg Jest róna sumie momentów sił zewnętrznych (względem tego samego punktu działających na ten układ.)
```

Gdy nie ma sił zewnętrznych lub ukłądu z zerowym zewnętrznymmomentem sił moment układu jest stały co do kierunku i wartości.

$$
\frac{dL}{dt} = 0
$$

#### Wewnętrzny i orbitalny moment pędu

$L_w$ to wewnętrzny moment pędu - suma całkowitego momentu pędu względem środka masy. \
Orbitalny moment pędu to pęd względem ukłądu laboratoryjnego

$L = L_w + L_o$

### Moment Pędu Bryły Sztywnej

```{admonition} bryła sztywna
ukłąd punktóœ gdzie $\vec{r} = const$

:::{note}
Typy ruchu:
- postępowy = translacyjny = posuwisty $v = v_1 = v_2 = ... = v_n$
- obrotowy = wirowy = rotacyjny $v_{cm} = 0 ~ \omega = const$
:::
```

### Moment bezwładności

```{admonition} Moment Bezwładności
- jest to wielkość tensorowa
- istnieją co najmniej 3 prostopadłe do siebie kierunki (osie główne), gdzie $\vec{L} \parallel \vec{\omega}$. Wtedy $I$ jest skalarem
```

Ruch obrotowy poszczególnych brył:
- płaska płyta obraca się wokół osi przechodzącej przez środek masy i prostopadłej do płyty.

$$
\vec{L} = ? \\
\vec{L_i} = r_i \times p_i \\
\vec{L_i} = r_i \times m_i v_i \\
\vec{L_i} = r_i \times m_i r_i \times \omega \\
\vec{L} = \vec{r} \times m \times \vec{r} \times \vec{\omega} \\
\vec{L} = \omega \Sigma m \vec{r^2}  \\
\vec{L} = I \omega
$$

- Hantle obracająće się w stosunku do osi przechodzącej przez środek pręta gdy oś nie jest prostpoadła

$$
\vec{L_1} = r_1 \times m_1 \vec{v_1} \\
\vec{L_2} = r_2 \times m_2 \vec{v_2} \\
\vec{L} \nparallel \vec{\omega} \Rightarrow \vec{L} \neq I \omega
$$

```{admonition} Tensor
Moment bezwłądności $i$ nazywamy tensorem.

$\hat{I} \lor \mathbb{I}$ można zapisać w postaci macierzy
$\begin{Bmatrix}
I_{xx} && I_{xy} && I_{xz} \\
I_{yx} && I_{yy} && I_{yz} \\
I_{zx} && I_{zy} && I_{zz} \\
\end{Bmatrix}$

Ogólny wzór na moment pędu bryły sztywnej to $\vec{L} = \hat{I} \omega$
```

- dla bryły 3-wymiarowej
r to odległość od osi obrotu

$$
I = \int dI = \int r^2 dm
$$

- dla pręta

$$
\frac{dr}{dm} = \frac{M}{L} \\
I = \int r^2 \frac{M}{L} dr \\
I = \frac{M}{L} \int_{\frac{-R}{2}}^{\frac{R}{2}} r^2 dr \\
I = \frac{M}{L} \left[ \frac{1}{3} r^3 \right ]_{\frac{-R}{2}}^{\frac{R}{2}}\\
I = \frac{1}{12} mR^2 \\
$$

- walec

$$
I = \int dm x^2 \\
dm = \frac{M}{\pi R^2 L} 2 \pi x L dx \\
I = \int 2 \frac{M}{R} x^3 dx \\
I = 2 \frac{M}{R} \int x^3 dx \\
I = 2 \frac{M}{R} \left[ x^3 \right]_0^{R} \\
I = \frac{1}{2} MR^2 \\

$$

```{note}
Każda bryła niezależnie od rozkłądu masy posiada 3 osie główne przecinająće się w środku masy.
Osie główne zawsze są wobec siebie prostopadłe. Dla brył o symetrycznym rozkładzie masy
osie główne powiązane są ze środkiem symetrii.

Jeżeli bryła obraca się wzdłuż osi symetrii możemy traktować moment bezwłądności
jako skalar.
```
### Dynamika ruchu obrotowego bryły względem osi głównej

```{admonition} II zasada dynamiki dla ruchu obrotowego
$$
\frac{dL}{dt} = I \frac{\omega}{dt} \\
M = I \epsilon
$$
```

#### Staczanie walca z róœni pochyłej

Gdy nie ma poślizgu:

$$
Ma = M g sin \alpha - T_s
 I* \epsilon = \tau = T_s * R \\
 a = \epsilon R \\
 $$

 ```{note}
 założywszy dwa dowolne ruchy obrotowy i postępowy
 $v_w = v + \omega r$

dla warunku braku poślizgu punkt styczności musi mieć v = 0
 ```

Rozważmy przypadek, w którym występuje poślizg:

$$
Ma = M g sin \alpha - T_k
I* \epsilon = \tau = T_k * R \\
T_k = k * mg cos \alpha
$$

#### Twierdzenie Steinera

Niech bryła obraca się względem osi, która nie przechodzi przez środek masy.
:::{tip} przykłądowo pręt obracająćy się względem swojego końca
:::

$$
I_d = I_0 + m d^2
$$

##### Wachadło Fizyczne

$$
I \frac{d^2 \phi}{dt^2} + M g d sin \phi = 0 \\
niech~sin\phi \approx \phi \\
T = 2 \pi \sqrt{\frac{I}{Mgd}}
$$

##### Wachadło Torsyjne

```{seealso}
Oscylator torsyjny
```

$$
T = 2 \pi \sqrt{\frac{I}{k}}
$$

####  Energia kinetyczna bryły sztywnej

Wokół osi w układzie inercjalnym.
Każda cząstka bryły ma energię kinetyczną $\Rightarrow$ $E_k = \Sigma E_{K_i}$

$$
E_k = \frac{1}{2} \Sigma m_i \omega^2 r_i^2 \\
E_k = \frac{1}{2} \omega^2 \Sigma m_i r_i^2 \\
E_k = \frac{1}{2} \omega^2 I = \frac{I \omega^2}{2} \\
$$

#### Tarcie toczne

tarcie toczne wynika z faktu, że siła reakcji na toczące się ciało pochodzi od odkształcenia
podłoża. Gdy bryła się toczy, musi ona cały czas wtaczać się na "pochyłość wgniecenia".

Moment siły tarcia oznaczamy jako $\tau$

$$
\tau = k * N \\
$$

#### Elipsoida bezwładności

Rozważmy ruch prostopadłościanu o wyraźnie różnych wymiarach.

Wyróżnijmy 3 główne momenty bezwładności względem osi głównych.

```{admonition} Twierdzenie o elipsoidzie bezwładności
Spośród 3 momentów głównych, jedenz nich jest największy spośród wszystkich
momentów bezwładności w środku masy danej bryły
```

Elipsoidę bezwładności otrzymujemy zaznaczając na osiach związanych ze środkiem masy i osiami głóœnymi
odległość $r_i = \frac{1}{I_i}$

otrzymujemy $\frac{x^2}{R_x^2} + \frac{y^2}{R_Y^2} + \frac{z^2}{R_z^2} = 1 = x^2 I_x + y^2 I_y + z^2 I_z$

#### Konsekwencje zasady zachowania momentu pędu

rozważmy ruch bąka.

Moment pędu leży na pionowej osi głównej.

$$
\vec{L} = \frac{d\tau}{dt} \\
\vec{\tau} = M~g~b~sin~\phi \\
\vec{L} \perp \vec{\tau}
$$

Moment siły $\tau$ wymusza zmainę momentu pędu (nie zmieniając prędkości kołowej).

```{note}
Częstość precesji

$$
\omega = \frac{d \theta}{dt} \\
\frac{dL}{L sin \phi} * \frac{1}{dt} =\\
= \frac{M~g~b sin\phi}{I \omega sin \phi} = \frac{M~g~b}{I~]\omega}
$$

```

### Statyka Bryły Sztywnej

Rozważmy sytuację drabiny opartej o ścianę. Tarcie drabiny o ścianę pomijamy.

$$
T=R_x\\
Mg = R_y \\
Mg \frac{L}{2} sin \left(\frac{\pi}{2}-\alpha\right) = R_y L sin\alpha \\
\alpha_gr < ctg 2k
$$

```{warning}
# Egzamin z mechaniki
- egzamin jest ustny
- egzamin z "teorii"
- 4 pytania
- na stronie profesora są materiały z numerami działów
- dla każdej grupy jeden dzień, 30 minut na osobę
- 0 termin - 26.01
- pokój 308 (główny budynek 3 piętro)
```

## Elementy Mechaniki Płynów

```{note}
w fizyce za płyn uznaje się zarówno ciecze jak i gazy

- ciecz przyjmuje kształt naczynia
- gaz róœnież, ale dodatkowo zajmuje całą dostępną przestrzeń
```

```{admonition} Gęstość
oznaczana jako $\rho$ lub $d$

$\rho = \frac{d}{V} = \left[\frac{kg}{m^3}\right]$
```

```{admonition} Ciśnienie
- jest wartością skalarną
- oznacza się jako $p$
- $p = \frac{|\vec{F}|}{s}$
- jeżeli przyjmiemy element skierowany powierzchni $\vec{dS}$ (normalny do fragmentu powierzchni)
wtedy $\vec{dF} = p * \vec{dS}$
- jednostką ciśnienia w układzie SI jest $p = \left[\frac{N}{m^2}\right] = \left[Pa\right]$
```

### Ciśnienie hydrostatyczne

Niech:
- wysokość słupa  h
- pole podstawy S
- ciężar = $F = mg$
- masa = $m = \rho * V = \rho S h$
- ciśnienie $p = \rho * s * h * g$

```{important}
w powyższym doświadczeniu również atmosfera wywiera ciśnienie na ciecz o wartości $p_0$

p = p_0 + \rho * g * h$
```

### Hydrostatyka

```{admonition} Prawo Pascala
Ciśnienie zewnętrzne wywierane na zamknięty **płyn** jest przekezywane
niezmienione na każdą część płynu i na ścianki naczynia.

$$
\frac{F_1}{S_1} = \frac{F_2}{S_2} \\
F_1 = F_2 \frac{S_1}{S_2}
$$
```

```{admonition} Paradoks hydrostatyczny
2 naczynia o identycznych kształtach zawierające identyczne płyny
jedno w kształćie stożka, a drugie w kształcie odwróconego stożka.

Na dno obu naczyń działa takie samo ciśnienie
```

```{admonition} Prawo archimedesa
Na ciało zanużone w naczyniu działa siła wyporu.

Niech:
- $\rho_0$ to gęstość cieczy
- $\rho_1$ to gęstość ciała
- na górną powierzchnię działą siła $F_1$ a na dolną $F_2$
- h to odległość od górnej powierzchni ciała do powierzchni cieczy

$$
F_w = F_2 - F_1
F_w = S(P_2 - P_1)
F_w = \rho * g * V
$$

Na każde ciało zanużone w płynie działą sila wyporu skierowana do góry
i równa ciężarowi wypartej cieczy
```

#### Barometr Torrichellego

$$
\rho * g * h = p_0
$$

```{note}
normalne ciśnienie wynosi około 760 mmHg
```

### Ogólny opis przepływu płynów

```{seealso}
równania Naviera-Stoksa
```
Podział przepływów:
- laminarny (ustalony / stacjonarny). Jego charakterystyki nie zależą od czasu. lub
turbulentny (nieustalony) - zmienia się w czasie
- wirowe i bezwirowe
- płynów ściśliwych i nieściśliwych
- lepki lub nielepki

#### Pojęcie strugi

załużmy przepływ laminarny.
**Struga** to pęk linii przepływu cząstek.

Prawo ciągłości strugi

$S * v = const$ gdzie $S$ jest polem przekroju przepływu.

## Prawo Bernoilli'ego
rozpatrujemy strugę z $S_1$ i $S_2$
Przepływ nielepki, 

$$
W = F_1 * v_1 \Delta t - F_2 v_2 \Delta t \\
W = \Delta v (p_1 - p_2) \\
\\
\\
P + \rho g h + \frac{\rho v^2}{2} = const \\
\it{p * V + m * g * h + \frac{m v^2}{2} = const}
$$

**Z tego wynika, że im większa prędkość tym mniejsze ciśnienie.**

```{admonition} Siła nośna działająca na skrzydło
skrzydło jest płąskie od spodu i wybrzuszone od góry.
Powietrze kumuluje się nad skrzydłem tworząc siłę nośną.
```

### Opis przepływu laminarnego cieczy przez rurę

cząstecznki na samym środku rury płyną najszybciej, natomiast
przy ściankach w praktyce się nie poruszają.

$v(r) = ?$

$$
\Delta p \pi r^2 = \eta 2 \pi r l \frac{dv}{dr} \\

$$

```{admonition} Prawo Hagena Poisseli
Objętość cieczy jaka przepłynie przez rurę o promieniu R przy danej różnicy ciśnień i długośći.

$$
V = \frac{\pi * \Delta p * t}{8 \eta L} * R^4 \\
$$
```

Siła oporu:

$$
K = C * S * \frac{\rho v^2}{2}
$$

### Podobieńśtwo hydrodynamiczne i liczba Raynoldsa

Wokół ciał geometrycznie podobnych uzyskuje się podobny przepływ cieczy
(linie prąðu są podobne) jeżeli **stosunek oporu ciśnienia do oporu
tarcia jest stały**

$$
Re = \frac{K}{F} = C * \frac{d^2 \rho v^2}{\eta v d} = C \frac{d \rho v}{\eta} = const \\
\left[Re\right] = 1
$$

```{tip}
jeżeli dla przepływu cylindrycznego $Re < 2000$ przepływ jest laminarny, dla $Re>4000$ przepływ turbulentny
```


## Własności sprężyste ciał

### Prawo Hooke'a dla 1-wymiarowego rozciągania

$$
\Delta L = k * \frac{F * l}{S}
\Delta l ~ F 
$$
 
 po pozbyciu się F, ciało wraca do pierwotnego kształtu (pamięć kształtu).

 Niech $p$ - naprężenie (wewnętrzne) ($\frac{F}{S} = P$)

$\frac{\Delta l}{l} = k * p$ To tak zwane odkształcenie (wzglęðne).
Oznaczane $\alpha \quad \left[\alpha\right] = 1$

$$
\alpha = k * p
p = \frac{1}{k} * \alpha
$$

$\frac{1}{k} = E$ to moduł Yanga.

### Odkształcenia sprężyste

- zcinanie:
do przymocowanego do podłoża ciała przykładamy stycznie poziomo siłę F.
$p = G * \alpha$, gdzie $G$ to kąt przechylenia się ciałą.

- skręcanie:
$\phi = \frac{2l}{\pi r^4} * \frac{\tau}{G}

- Ściskanie hydrostatyczne
Ciało jest równomiernie ściskanie ze wszystkich stron. $p=-K \alpha$, $\alpha = \frac{\Delta V}{V}$

- Ściskanie i rozciąganie
$\frac{\Delta b}{b} = M \frac{\Delta l}{l}.
M to współczynnik Puasona.

Wszystkie te współczynniki są specyficzne dla każdego materiału.

### Odkształcanie belek

- ugięcie belki. (Moduł Yanga). $z(l) = \frac{F l^3}{SEI}$ dla leżącej prostokąßnej belkii $I = \int_S y^2 dS = \frac{bd^3}{12}$

- wyboczenie belki - Belka zastosowan ajako filar.
Kształt wyboczonej belki to $y = k * sin( \frac{\pi x}{l})$. $F = \frac{\pi^2 E I }{L^2}$

### Odkształcenie plastyczne i granica wytrzymałości (wytrzymałość na zerwanie)

W pewnym momencie odkształćania sprężystego przechodzimy do fazy odkształceń plastycznych.
Łączą się one z trwałym zmianem kształtu ciała po usunięciu naprężeń.

Po jeszcze większym zwiększeniu siły nastąpi zerwanie.

## Odniesienia

- Przedmiot prowadzony przez [profesora dr. hab. inż. Wojciecha Łużny](https://skos.agh.edu.pl/osoba/wojciech-luzny-4050.html)
- [Sylabus Przedmiotu](https://sylabusy.agh.edu.pl/pl/document/7e60a851-0abc-44b6-9cdd-d04f9f50e420.pdf)
- [Program wykładów](http://website.fis.agh.edu.pl/kfms/wp-content/uploads/mechanika_zagadnienia1.pdf)
