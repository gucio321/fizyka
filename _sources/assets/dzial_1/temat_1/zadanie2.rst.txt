**zadanie**
Dejmos - jeden z naturalnych satelitów Marsa krąży w średniej
odległości 23485 km od planety, a obiega ją w ciągu 1.26 dnia.
Oblicz masę Marsa.

**rozwiązanie**

Dane:

| |rd| = 23485 km = 23485 * 10 :sup:`3` m
| |td| = 1.26 dnia = 1.26 * 24 * 3600 s = 1.08864 * 10 :sup:`5` s

Szukane:

M = ?

Wzory:

.. math::
   \frac{R_1^3}{T_1^2} = \frac{R_2^3}{T_2^2} = \frac{G * M}{4 \pi^2}

Obliczenia:

w tym zadaniu nie ma żadnej wyższej filozofii.
Po prostu musimy przekstałcić i podstawić do wzoru:

.. math::
   M = \frac
        {R_d^3 * 4 * \pi^2}
        {T_d^2 * G}

.. math::
   M = \frac
        {\left(
                23485 * 10^3 m
        \right)^3 * 4 * 3.14^2}
        {\left(
                1.08864 * 10^5 s
        \right)^2 * 6.67 * 10^{-11} \frac{m^3}{kg * s^2}}

   M = \frac
        {23485^3 * 10^9 * 4 * 3.14^2 m^3}
        {1.08864^2 * 10^{10} * 6.67 * 10^{-11} \frac{m^3}{kg}}

   M = \frac
        {23485^3 * 4 * 3.14^2}
        {1.08864^2 * 6.67} * 10^{10} kg
   
   M \approx \color{red}{6.5 * 10^{23} kg}


.. |rd| replace:: r :sub:`d`
.. |td| replace:: T :sub:`d`
