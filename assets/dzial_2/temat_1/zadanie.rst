**zadanie**
===========

W jakiej odległości `r` od punktowego ładunku o wartości
:math:`Q = 16 * 10^{-10} C`, zanurzonego w destylowanej wodzie,
natężenie pola elektrycznego wynosi :math:`E = 0.4 \frac{V}{m}`?
Stała dielektryczna (zwana też względną przenikalnością elektryczną)
wody :math:`\epsilon = 81`.

**dane**
========

| :math:`Q = 16 * 10^{-10} C`
| :math:`E = 0.4 \frac{V}{m}`
| :math:`\epsilon_r = 81`
| :math:`r = ?`

**rozwiązanie**
===============

Zadanie polega praktycznie na podstawieniu danych do wzoru.
Jedyną trudnością, jest przypomnienie sobie wzoru na `k`, które
nie jest podane w zadaniu.

.. math::
   k = \frac{1}{4\pi*\epsilon_0*\epsilon_r}

Wiąże się to również z przypomnieniem wartości przenikalności elektrycznej próżni.

.. math::
   \epsilon_0 = 8.85 * 10^{-12} \frac{m^2}{N*C^2}

Najpierw należy przekształcić wzory, aby móc wyliczyć `r`:

.. math::
   E = \frac{k * Q}{r^2} \\
   E = \frac{Q}{4 \pi * \epsilon_0 * \epsilon_r * r^2} \\
   r^2 = \frac{Q}{4 \pi * \epsilon_0 * \epsilon_r * E} \\
   r = \sqrt{\frac{Q}{4 \pi * \epsilon_0 * \epsilon_r * E}} \\

Teraz podstawienie to już bułka z masłem

.. math::
   r = \sqrt{\frac{16 * 10^{-10}}{4 \pi * 8.85 * 10^{-12} * 81 * 0.4}} m \\
   r = \sqrt{\frac{16 * 10^{-10}}{4 * 81 * 4 * \pi * 8.85 * 10^{-13}}} m \\
   r = \sqrt{\frac{10^{3}}{81 * \pi * 8.85}} m \\
   r = \frac{10}{9} * \sqrt{\frac{10}{\pi * 8.85}} m \\
   r \approx \frac{10}{9} * \sqrt{0.36} m = \frac{10}{9} * \frac{6}{10} = \color{yellow}{\frac{2}{3}} \\
