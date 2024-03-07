SELECT nazwisko
from nauczyciele
where upper(nazwisko) like "%MO%" or upper(nazwisko) like "%BR%";

SELECT nazwisko
From uczniowie
Where klasa=’1a’ OR klasa=’2a’;

Select ID as liczba
From uczniowie
Group by id 
Having count(id)>1;

SELECT nazwisko 
From nauczyciele
Where wykształcenie='licencjat_z_biologii'
