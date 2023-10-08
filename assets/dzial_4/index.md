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

## Odniesienia

- Pzedmiot prowadzony przez [profesora dr. hab. inż. Wojciecha Łużney](https://skos.agh.edu.pl/osoba/wojciech-luzny-4050.html)
- [Sylabus Przedmiotu](https://sylabusy.agh.edu.pl/pl/document/7e60a851-0abc-44b6-9cdd-d04f9f50e420.pdf)

