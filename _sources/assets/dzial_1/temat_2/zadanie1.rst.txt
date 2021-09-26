**zadanie**

Jaką pracę należy wykonać aby przenieść z nieszkończoności
4 jednakowe masy *m* do wierzchołków kwadratu o boku *a*?
Jaką pracę wykonamy przesuwając nastęþnie jedną z nich do
środka tego kwadratu?

**Dane**

| m - masa
| a - bok kwadratu

**Szukane**

| |wc| = ? (praca wymagana do przeniesienia mas)
| |ws| = ? (praca wymagana do przeniesienia jednej z mas do środka kwadratu)

**Rozwiązanie**

Wyobraźmy sobie kwadrat (ABCD) o boku ``a``, do którego wierzchołków bęziemy
kolejno przenosić masy. Środek kwadratu oznaczmy literą S.

Rozpatrzmy teraz przypadek, w którym masę przenosimy do narożnika ``A``:

Najpierw jednak przypomnijmy wzór na pracę:

.. math::
   W = - G * m * M * \left(
        \frac{1}{r_b}-\frac{1}{r_a}
   \right)

za ``m`` podstawimy masę z zadania, ale
``M`` - masa tworząca pole grawitacyjne wynosi na razie 0, ponieważ
w naszym kwadracie nie mamy na razie żadnej masy.
Więc:

.. math::
   W_A = 0

rozpatrzmy przypadek masy, którą przyniesiemy do punktu B:

Warto zaznaczyć, że wyrażenie ``przynosimy z nieskończoności`` oznacza,
że za początkowa odległość musimy przyjąć nieskończoność.
w tym przypadku za masę tworzącą pole grawitacyjne podstawimy masę
znajdującą się w wierzchołku ``A``:

.. math::
   W_B = - G * m * m * \left(
        \frac{1}{a} - \frac{1}{\infty}
   \right)

ułąmek 1/nieskończoność jest jednak tak mały, że możemy przybliżyć
go do 0.

.. math::
   W_B = -G * m^2 * \frac{1}{a}

rozpatrzmy teraz przypadek narożnika ``C``. Tutaj
znajdują się już dwie masy tworzące różne pola grawitacyjne.
Dlatego musimy obliczyć pracę dla każdego znich:

.. math::
   W_{C_B} = -G * m^2 * \frac{1}{a} \\
   W_{C_A} = -G * m^2 * \frac{1}{a * \sart{2}} \\
   W_C = W_{C_B}+W_{C_A} \\
   W_C = - G * m^2 * \left(
   \frac{1}{a} + \frac{1}{a * \sqrt{2}}
   \right)



.. |wc| replace:: W :sub:`c`
.. |ws| replace:: W :sub:`s`
