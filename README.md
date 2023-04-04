# Table of Contents
1. [Lab 1](#lab1)
2. [Lab 2](#lab2)
3. [Lab 3](#lab3)
4. [Lab 4](#lab4)
5. [Lab 5](#lab5)
6. [Lab 6](#lab6)

<br/>
 
# Lab 1 - Kalkulator przedsiębiorcy <a name="lab1"></a>
[folder link](https://github.com/roseannee/PAMwiOS_Sem_6/tree/master/lab_1)<br/><br/>
Proszę napisać program, który pozwala wyliczyć zysk ze sprzedaży produktów. Program powinien:
1. pobierać potrzebne dane (stałe koszty działalności, koszt produkcji 1 szt., ilość szt., marżę w %)
2. wyliczać cenę 1 szt. i zysk ze sprzedaży całości,
3. powtarzać wyliczenia, aż do zakończenia programu przez użytkownika,
4. dodatkowo wyświetlać informację, jakie byłyby wyniki, gdyby ilość szt. była 10 i 100 razy większa,
5. wykorzystywać funkcje,
6. liczby z punktu 4 zaokrąglać w górę do najbliższej potęgi liczby 10.

<br/>

# Lab 2 - Konfiguracja Mac'a <a name="lab2"></a>
[folder link](https://github.com/roseannee/PAMwiOS_Sem_6/tree/master/lab_2)<br/><br/>
Proszę o stworzenie pierwszej aplikacji iOS w Xcode. Proszę wybrać jeden z poniższych wariantów:
1. po kliknięciu w przycisk tekst z pierwszego pola pojawia się w drugim polu (na ocenę 3)
2. po kliknięciu w przycisk kwadrat liczby z pierwszego pola pojawia się w drugim polu (na ocenę 4)
3. po kliknięciu w przycisk suma liczb z dwóch pierwszych pól pojawia się w trzecim polu (na ocenę 5)
4. program na 5 + obsługa błędów, tzn. brak liczb lub napisy zamiast liczb (na ocenę 6)

<br/>

# Lab 3 - Auto Layout <a name="lab3"></a>
[folder link](https://github.com/roseannee/PAMwiOS_Sem_6/tree/master/lab_3)<br/><br/>
Proszę napisać aplikację iOS z jednym, responsywnym ekranem, z wykorzystaniem Auto Layoutu, spełniającą następujące wymagania:
1. aplikacja "dobrze wygląda" na ekranie w orientacji pionowej i poziomej,
2. jak wyżej dla różnych urządzeń z różnym rozmiarem ekranu,
3. aplikacja "coś robi" (a nie tylko wygląda),
4. część kontrolek jest "przyczepionych" do góry ekranu, część do dołu, część do lewej krawędzi, część do prawej (być może część do środka), część kontrolek do innych kontrolek,
5. wymiary niektórych kontrolek się zmieniają, w zależności od dostępnej przestrzeni,
6. niektóre kontrolki znikają/pojawiają się/są zastępowane przez inne, w zależności od rozmiaru ekranu.

<br/>
 
# Lab 4 - Aplikacja z wieloma ekranam <a name="lab4"></a>
[folder link](https://github.com/roseannee/PAMwiOS_Sem_6/tree/master/lab_4_5_6/lab_4)<br/><br/>
Proszę napisać aplikację z kilkoma ekranami, spełniającą następujące warunki:
1. używamy Navigation Controllera,
2. jest ekran główny, z którego możemy nawigować na co najmniej dwa różne ekrany
3. z jednego z tych ekranów możemy nawigować na kolejny
4. jest możliwość powrotu na poprzedni ekran :-)
5. przekazujemy dane pomiędzy ekranami i je wykorzystujemy
6. przekazujemy dane pomiędzy ekranami również w drugą stronę
7. w aplikacji jest jakiś popup
8. na którymś ekranie jest wyświetlany obrazek (to, jaki to obrazek, zależy od danych przekazanych przy przejściu między ekranami (ale ilość obrazków jest ograniczona, tzn. użytkownik nie może dodawać nowych)

<br/>

# Lab 5 - Cykl życia, zapis plików i ustawień <a name="lab5"></a>
[folder link](https://github.com/roseannee/PAMwiOS_Sem_6/tree/master/lab_4_5_6/lab_4)<br/><br/>
Do aplikacji z Lab 4 proszę dodać następujące możliwości:
1. możliwość ustawienia koloru tła (taki sam dla wszystkich ekranów) - aplikacja powinna pamiętać to ustawienie po restarcie,
2. automatyczny zapis danych wpisanych przez użytkownika przed zawieszeniem aplikacji i ich przywracanie po wybudzeniu - użytkownik powinien widzieć te dane po restarcie, powinien też od razu zobaczyć ten sam ekran, na którym aplikacja została zawieszona,
3. inne "obsłużenie" zamknięcia aplikacji przez system, a inne zamknięcia przez użytkownika (w tym drugim przypadku po ponownym otwarciu nie przywracamy danych wpisanych wcześniej).

<br/>
 
# Lab 6 - I18n + ikona aplikacji + launchscreen <a name="lab6"></a>
[folder link](https://github.com/roseannee/PAMwiOS_Sem_6/tree/master/lab_4_5_6/lab_4)<br/><br/>
Do dowolnej aplikacji (np. z którejś z poprzednich laboratoriów) proszę dodać tłumaczenia na inne języki (obowiązkowo uwzględniamy polski i angielski, trzeci język (punkty 6/7 poniżej) wybieramy według uznania).

Dodatkowo należy stworzyć i skonfigurować ikonę aplikacji. 

Dodatkowo należy stworzyć i skonfigurować ekran startowy (lanunchscreen) aplikacji. 

Tłumaczymy:
1. teksty w GUI
2. teksty wyświetlane z "code behind"/Swift
3. "obrazki"
4. nazwę aplikacji
5. formaty dat
6. trzeci język
7. trzeci język czytany od prawej
