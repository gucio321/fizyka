**zadanie**
-----------

Pluton obiega Słońce z apohelium r :sub:`a` = 48.8 au i
apohelium r :sub:`p` = 29.6 au. Oblicz okres obrotu Plutona
wokół Słońca.

**rozwiązanie**
---------------

Dane:

*Te wartości mamy podane w treści zadania*

| |rp| = 29.6 au
| |ra| = 48.8 au

*parametry dla Ziemi*

| |az| = 1 au *(średnia odległość Ziemi od słońca)*
| |tz| = 1 rok *(okres obrotu Ziemi wokół słońca)*

Szukane:

|tp| = ?

Wzory:

*Wzór na III Zasadę Kepplera*

.. math::
   \frac{R_1^3}{T_1^2} = \frac{R_2^3}{T_2^2} = \frac{G * M}{4 \pi^2}

Obliczenia:

zauważ, że nie znamy średniej odległości Plutona od Słońca (a :sub:`p`).
Długość ta jest właściwie długością wielkiej półosi jego orbity.
Długość wielkiej osi tej elipsy możemy łatwo wyliczyć dodając
do siebie wartości peryhelium i apohelium (|rp| + |ra|).
Teraz, aby otrzymać długość wielkiej półosi dzielimy otrzymany wynik na dwa.

.. math::
   a_p = \frac{r_p+r_a}{2}

kiedy mamy już wszystkie potrzebne wielkości, możemy zająć się obliczeniami:

.. apropo LateX'a:
   \frac{licznik}{mianownik} oznacza ułamek.
   \\ to tak jakby \n
.. math::
   \frac{a_z^3}{T_z^2} = \frac{a_p^3}{T_p^2} \\
   \frac{a_z^3}{T_z^2} = \frac{\left(\frac{r_p+r_a}{2}\right)^3}{T_p^2} \\
   T_p^2 * a_z^3 = T_z^2 * \left(\frac{r_p+r_a}{2}\right)^3 \\
   T_p^2 = \frac{T_z^2 * \left(\frac{r_p+r_a}{2}\right)^3}{a_z^3} \\

   T_p = \sqrt{
        T_z^2 * \frac
                {\left(
                        \frac{r_p+r_a}{2}
                \right)^3}
                {a_z^3}
   } \\

   T_p = T_z * \sqrt{\frac{\left(\frac{r_p+r_a}{2}\right)^3}{a_z^3}} \\

   T_p = T_z * \sqrt{
        \left(
                \frac
                {\frac{r_p+r_a}{2}}
                {a_z}
        \right)^3
   } \\

Teraz możemy zabrać się do podstawiania konkretnych wartości

.. math::
   T_p = 1 rok * \sqrt{
        \left(
                \frac
                        {\frac{29.6 \cancel{au} + 48.8 \cancel{au}}{2}}
                        {1 \cancel{au}}
        \right)^3
   } \approx \\
   
   \approx 1 rok * \sqrt{
        \left(
                        \frac{80}{2}
        \right)^3
   } =

   = 1 rok * \sqrt{
        6.4 * 10^4
   } = \\

   10^2 lat * \sqrt{
        6.4
   } \approx \color{red}{\underline{\underline{250 lat}}}

Po wyliczeniu wyniku za pomocą kalkulatora otrzymamy
mniej więcej 245.381 lat, więc otrzymane przybliżenie nie jest najgorsze.

Odpowiedź:

Czas z jakim Pluton obiega Słońce wynosi 250 lat.

.. przypisy / deklaracje (niewidoczne na stronie)
.. |ra| replace:: r :sub:`a`
.. |rp| replace:: r :sub:`p`

.. |ap| replace:: a :sub:`p`
.. |az| replace:: a :sub:`z`
.. |tp| replace:: T :sub:`p`
.. |tz| replace:: T :sub:`z`
