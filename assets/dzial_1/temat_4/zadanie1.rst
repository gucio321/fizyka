**zadanie**
-----------

Oblicz prędkość liniową Księżyca. Srednia odległość księżyca od
ziemii wynosi :math:`d = 3.84 * 10^8 m`. Przyspieszenie grawitacyjne
przy powierzchni Ziemii przyjmi za :math:`g = 9.8 \frac{m}{s^2}`.
Promień Ziemi wynosi :math:`R = 6.37 * 10^6 m`.

**dane**
--------

| :math:`d = 3.84 * 10^8 m`
| :math:`g = 9.8 \frac{m}{s^2}`
| :math:`R = 6.37 * 10^6 m`

**rozwiązanie**
---------------

Ogulnie zadanie polega nw podstawieniu danych do wzoru na I Prędkość Kosmiczną 
(zobacz: :ref:`I-predkosc-kosmiczna`).

.. math::
   v_k = \sqrt{\frac{G * M}{d}}

jedyną trudnością jest, że w danych nie ma masy Ziemii.
Jest zato jej promień (`R`) i wartość przyspieszenia grawitacyjnego
przy jej powierzchni, co pozwala przypuścić, że należy zastąpić
iloczyn :math:`G * M` wartością :math:`g * R^2`

.. math::
   v_k = \sqrt{\frac{g * R^2}{d}}

.. math::
   v_k = \sqrt{\frac{9.8 \frac{m}{s^2} * \left(6.37 * 10^6 m \right)^2}{2.84 * 10^8 m}} \\
   v_k = \sqrt{\frac{9.8 * 6.37^2}{2.84} * \frac{10^{12}}{10^8}} \frac{m}{s} \\
   v_k = \sqrt{\frac{9.8 * 6.37^2}{2.84}} * 10^2 \frac{m}{s} \\
   v_k \approx 10 * 10^2 \frac{m}{s} \\
   \color{red}{v_k \approx 10^3 \frac{m}{s}}
