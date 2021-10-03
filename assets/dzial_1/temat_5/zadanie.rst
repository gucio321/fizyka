.. warning::
   proszę odnieść się z dystansem do rozwiązania tego zadanie,
   gdyż może być błędne!
   `szablon rozwiązania <https://matematyka.pl/viewtopic.php?t=407893>`_

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

przyda nam się to później.
Przypomnijmy teraz sobie o siłąch, które muszą działać na te obiekty.
Pierwszą z nich jest Siła Grawitacji wyrażona wzorem :math:`F=G*\frac{M * m}{R^2}`.
Ta siła określa oddziaływania obu składników gwiazdy i jest dla obu identyczna.

.. note::
   za R możemy tu podstawić nasze `d`

Jednak jest jeszcze jedna siła - Siła Odśrodkowa działająca względem
środka masy tego ukłądu.

.. note:: w ruchu po okręgu siłę odśrodkową wyrażamy wzorem
   :math:`F=\frac{2 * \pi * r}{T}`

.. math::
   G * \frac{\cancel{m_1} * m_2}{d^2} = \frac{\cancel{m_1} * v^2}{r_1} \\
   G * \frac{m_2}{d^2} = \frac{v^2}{r_1} \\
   G * \frac{m_2}{d^2} = \frac
        {\left(\frac{
                2 * \pi * r_1
        }{T}\right)^2}
        {r_1} \\
   G * \frac{m_2}{d^2} = \frac{4 * \pi^2 * r_1^\cancel{2}}{T^2 * \cancel{r_1}} \\
   r_1 = G * \frac{m_2 * T^2}{d^2 * 4 * \pi^2} \\
   \frac{\cancel{m_2} * d}{M} = G * \frac{\cancel{m_2} * T^2}{d^2 * 4 * \pi^2} \\
   \frac{M}{d} = \frac{d^2 * 4 * \pi^2}{G*T^2} \\
   M = \frac{4 * \pi^2 * d^3}{G * T^2} \\
   \\
   M = \frac{4 * \pi^2 * \left(10^9 m \right)^3}
        {6.67 * 10^{11} \frac{m^3}{kg * s^2} * \left(10^5 s \right)^2} \\
   M = \frac{4 * \pi^2 * 10^{27} \cancel{m^3}}
        {6.67 * 10^{11} \frac{\cancel{m^3}}{kg * \cancel{s^2}} * 10^{10} \cancel{s^2}} \\
   M = \frac{4 * \pi^2}{6.67} * \frac{10^{27}}{10^{21}} kg \\
   M = \frac{4 * \pi^2}{6.67} * 10^6 kg \\
   \color{red}{M \approx 6 * 10^6 kg}
