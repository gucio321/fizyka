**zadanie**
===========

Cząsteczka o ładunku elektrycznym :math:`q = -4 * 10^{-8}C` i masie
:math:`m = 6 * 10^{-4} kg` porusza się w próżni wokół ładunku 
:math:`Q = 5 * 10^-8 C` po okręgu o promieniu :math:`R = 3 cm`. Oblicz
okres tego ruchu jeżeli masa centralnego ładunku **jest dużo większa**
od masy krążącego ładunku.

**dane i szukane**
==================

- :math:`q = -4 * 10^{-8} C`
- :math:`m = 6 * 10^{-4} kg`
- :math:`Q = 5 * 10^{-8} C`
- :math:`R = 3 cm = 3 * 10^{-2} m`
- :math:`k_0 = 8.9 * 10^9`
- :math:`T = ?`

**rozwiązanie**
===============

wiemy, że łądunek `q` krąży wokół ładunku `Q`. Oznacza to, że
działa na niego siłą odśrodkowa (:math:`F_d`) oraz, że ta siła
ma taką samą wartość jak działąjąca pomiędzy ładunkami różnoimiennymi
siła oddziaływań elektrostatycznych.

Siły te mają ten sam kierunek (równoległy do promienia okręgu), ale
przeciwny zwrot. Dlatego możemy zapisać następującą zależność:

.. math::
   F_d + F_e = 0 \\
   F_d = - F_e

Siłę dośrodkową możemy opisać wzorem :math:`F_d = \frac{m * v^2}{r}`.
Prędkość w ruchu po okręgu to :math:`v = \frac{2 * \pi * r}{T}`
Teraz należy tylko wyliczyć okres obrotu:

.. math::
   \frac{m v^2}{\cancel{R}} = - k \frac{q * Q}{R^\cancel{2}} \\
   m * \left(\frac{2 * \pi * R}{T}\right)^2 = - k \frac{q * Q}{R} \\
   m * \left(2 \pi \right)^2 R^3 = - k * q * Q * T^2 \\
   T = \sqrt{- \frac{m * \left(2 \pi \right)^2 R^3}{k * q * Q}} \\
   T = 2 \pi R * \sqrt{- \frac{m * R}{k * q * Q}}

Teraz możemy podstawić liczby

.. math::
   T = 2 * \pi * 3 * 10^{-2} m * \sqrt{-\frac{6 * 10^{-4} kg * 3 * 10^{-2} m}{8.9*10^9 \frac{N * m^2}{C^2}*(-4)*10^{-8}*5*10^{-8}}} \\
   T = 6 * \pi * \sqrt{\frac{18}{8.9*20}*10} s \\ 
   \color{yellow}{T \approx 18.95 s}
