.. warning::
   proszę odnieść się z dystansem do rozwiązania tego zadanie,
   gdyż może być błędne!

**zadanie**
-----------

przy obserwacji pewnej gwiazdy podwójnej zaćmieniowej
okres zmian jasności wynosił :math:`T=10^5 s` średnia odległość
pomiędzy składnikami gwiazdy wynosi :math:`d=10^6 km`. Stała grawitacji
to :math:`G=6.67 * 10^{11} \frac{km^3}{kg * s^2}`. Oblicz masę tej gwiazdy.

**dane**
--------

| :math:`T = 10^5 s`
| :math:`d = 10^6 km = 10^9 m`
| :math:`G=6.67 * 10^11 \frac{km^3}{kg * s^2}`

**szukane**
-----------

:math:`M = m_1 + m_2 = ?`

**rozwiązanie**
---------------

Patrząc na dane, musimy dojść do sytuacji, w której nasz wzór (nielicząc liczby pi i stałych - liczb)
będzie zawierać tylko okres, odległość dwóch ciał i **stałą grawitacji**.

najpierw wyznaczmy odległości od środka masy poszczegulnych ciał:

.. math::
   r_1 = \frac{d * m_2}{M}
   r_2 = \frac{d * m_1}{M}

.. tip:: :math:`r_1 + r_2 = d`

skoro obserwujemy zaćmienia, oznacza to, że oba skłądniki gwiazdy poruszają się.
możemy więc zapisać następujące równanie

.. math::
   v_1 = \frac{2 * \pi * r_1}{T}
   v_2 = \frac{2 * \pi * r_2}{T}

.. important:: częstotliwości obrotu obu tych skłądników są równe, ale prędkości nie!!

Składniki tej gwiazdy muszą poruszać się z I Prędkością Kosmiczną 
(zobacz :ref:`I-predkosc-kosmiczna` )
więc możemy również zapisać następujące równania

.. math::
   v_1 = \sqrt{\frac{G * m_2 * m_1}{r_1}}
   v_2 = \sqrt{\frac{G * m_1 * m_2}{r_2}}

.. note::
   WIP. to na razie wszystko
