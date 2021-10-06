**zadanie** *potencjał grawitacyjny*
------------------------------------

średnia odległość pomiędzy dwiema planetami wynosi d = 5 \* 10 :sup:`7` km
ich masy są odpowiednio równe |m1| = 4 \* 10 :sup:`21` kg i |m2| = 6 \* 10 :sup:`21` kg.
W jakiej odległości od planety o mniejszej masie (na odcinku łączącym
środki tych mas) znajduje się punkt w którym potencjały grawitacyjne
obu tych mas są równe?

**dane**
--------

| d = 5 \* 10 :sup:`10` m
| |m1| = 4 \* 10 :sup:`21` kg
| |m2| = 6 \* 10 :sup:`21` kg

**szukane**
-----------

| r - poszukiwana odległość
| :math:`d-r` - odległość od drugiej planety

**wzory**
---------

jest to klasyczne zadanie "na potencjał grawitacyjny", czyli potrzebujemy jedynie
tego wzoru :eq:`V`

**rozwiązanie**
---------------

.. math::
   V_1 = V_2 \\
   \frac{\cancel{-G} * m_1}{r} = \frac{\cancel{-G}*m_2}{d-r}\\
   m_1 * \left( d-r \right) = m_2 * r \\
   m_1 * d - m_1 * r = m_2 * r \\
   m_2 * r + m_2 * r = m_1 * d \\
   r * (m_1 + m_2) = m_1 * d \\
   r = \frac{m_1 * d}{m_1 + m_2} \\
   \\
   r = \frac{4 * \cancel{10^{21}} * 5 * 10^{10}} 
        {4 * \cancel{10^{21}} + 6 * \cancel{10^{21}}} km \\
   r = \frac{20*10^{10}}{24} km \\
   r = \frac{2 * 10^{11}}{24} km \\
   r = \color{red}{\frac{1}{12} * 10^{11} km}


.. |m1| replace:: m :sub:`1`
.. |m2| replace:: m :sub:`2`
