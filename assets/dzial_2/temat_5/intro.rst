Strumień natężenia pola elektrycznego
-------------------------------------

Strumień :math:`\Phi` pola elektrycznego przez powierzchnię `S`
definiujemy jako iloczyn skalarny wektora powierzchni S i
natężenia pola elektrycznego E.

.. math::
   \Phi = E * s * cos \alpha

gdzie :math:`\alpha` jest kątem pomiędzy wektorem natężenia a normalną powierzchni
(linią prostopadłą do niej)

Przykładowo: ładunek `q` otoczono powierzchnią sferyczną. 
Na tej powierzchni zaznaczono natężenie pola elektrycznego (prostopadłe do powierzchni)
Więc możemy zapisać następujące równania:

.. math::
   \Phi = E * s * cos \alpha \\
   alpha = 0 \Rightarrow cos \alpha = 1 \\
   \Phi = \frac{k Q}{\cancel{r^2}} * 4 \pi * \cancel{r^2} \\
   \Phi = 4 \pi * k * Q \\
   \Phi = \frac{\cancel{4 \pi} * Q}{\cancel{4 \pi} \epsilon_0 * \epsilon_r} \\

Prawo Gaussa
------------

Tym ostatnim wzorem jest właśnie **Prawo Gaussa**:

.. math::
   \Phi = \frac{Q}{\epsilon_0 * \epsilon_r} \\

Strumień natężenia pola elektrycznego przez dowolną **zamkniętą** powierzchnię
równy jest załkowitemu ładunkowi zamkniętemu wewnątrz tej powierzchni dzielonemu
przez przenikalność elektryczną danego ośrodka.

Przykłady zastosowania
----------------------

Płyta
=====

Natełżenie pola elektrycznego przy nieskończenie rozciągłej płycie
nałądowanej z jednakową gęstością :math:`\sigma`.

gęstość ładunków :math:`\sigma = \frac{Q}{s}`

Na tej płycie linie pola są prostopadłe do niej oraz równoległe do siebie.
Załóżmy, że fragment płyty zamkniemy w powierzchni zamkniętej w kształćie walca tak, że
powieżchnia boczna będzie prostopadłą do powierzchni płyty.
Obliczmy strumień przez tę powierzchnię.

.. math::
   \Phi = \Phi_b + \Phi_p + \Phi_p

widzimy, że strumień przechodzący przez cały walec jest sumą strumienia przez jego powierzchnię
boczną oraz dwie podstawy.

Teraz przypomnijmy sobie zasady z początku tematu. Jeżeli wektor
jest równoległy do powierzchni bocznej, strumień przechodzący przez tą powierzchnię
jest równy 0, gdyż :math:`\alpha = 90^o \Rightarrow cos \alpha`.
Pozostaje nam w takim razie tylko strumień przez oba "denka"

.. math::
   \Phi = 2 * \Phi_p \\
   \Phi = 2 * E * s \\
   \Phi = 2 * k * Q * 4 \pi
   \Phi = \frac{2 * Q}{\epsilon_0 * \epsilon_r} \\
   \Phi = \frac{2 * Q}{\epsilon_0 * \epsilon_r} \\
   \Phi = \frac{2 * \sigma * s}{\epsilon_0*\epsilon_r} \\

porwóćmy teraz do prawa Gaussa

.. warning:: Work in progress

Nić
===

Pole wytworzone nieskończenie długą nić:
Zauważmy, że linie pola są prostopadłę do nici (w uproszczeniu przypominają
szczotkę do czyszczenia butelek). 

.. math::
   E = \frac{\lambda}{2 * \pi * \epsilon_0 * r}
