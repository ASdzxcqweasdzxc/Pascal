# Pascal

#3.1. Первая цифра дробной части вещественного числа
Присвоить целой переменной d первую цифру из дробной части положительного вещественного числа х (так, если x=32.597, то d=5).


#3.2. Расстояние между точками на плоскости
Вычислить расстояние между точками с координатами (x1, y1) и (x2, y2). Координаты ввести с клавиатуры попарно и присвоить переменным вещественного типа. Вывести результат на экран в виде числа с двумя знаками после запятой.


#4.1. Вывод в обратном порядке цифр трехзначного числа
Дано целое число N. Если N трехзначное, то вывести  в обратном порядке и в столбик цифры, составляющие N. Для чисел с другим количеством знаков вывести текстовое сообщение: "Число не трехзначное!"


#4.2. Определить попадание точки в заданную область на плоскости (см. вложенный рисунок)
Указание: точку задать парой координат x, y вещественного типа.


#5.1. Простейший калькулятор
С клавиатуры вводятся два числа и знак операции между ними "+", "-", " * " или "/" (порядок ввода - произвольный). Выполнить над числами соответствующее действие и напечатать результат. 

Указание : использовать оператор варианта.


#5.2. Печать заданного числа римскими цифрами (автотест)
Написать программу на Паскале. Ввести целое k, для 1≤k≤39 вывести значение k римскими цифрами, используя заглавные буквы 'I', 'V' и 'X' для римских цифр 1, 5 и 10, соответственно. Если значение k лежит вне указанного диапазона, то вывести 0.

Автотест: Полученную программу можно проверить в системе автоматической проверки - задача 7.23)


#5.3. Количество дней в месяце
Даны описания:

type month = ( jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec );
var d: 28..31;   m: month;
Переменной  d  присвоить количество дней в месяце  m  (год считать невисокосным).

Указание:  ввести с клавиатуры номер месяца и вычислить соответствующее ему правильное значение m; далее, используя оператор варианта с переключателем типа month, вычислить значение d и вывести его на печать.


#6.1. Отбор двузначных чисел по сумме цифр
Из чисел от 10 до 99 вывести те, сумма цифр которых равна s (0<s<=18)

Указания к решению: использовать цикл с параметром


#6.2. Поиск числа Фибоначчи, большего m>1 (автотест)
Числа Фибоначчи f(n) определяются формулами:

f(0)=f(1)=1;  f(n)=f(n-1)+f(n-2)  при n=2,3,...
Ввести целое число m>1 и найти первое число Фибоначчи, большее m.
Указания к решению: использовать цикл с предусловием  while

Автотест: Можно протестировать программу в автоматической системе проверки - задача 5.21б


#6.3. Наибольший общий делитель
Ввести два натуральных числа  2 < a, b < 10000 и вычислить их наибольший общий делитель.

Указания к решению: использовать цикл с постусловием   repeat 


#7.1. Вычисление функции косинус в заданном диапазоне значений аргумента
Указание:   получить и использовать рекуррентную формулу для последовательного вычисления членов ряда.


#7.2. Вычислить произведение сложных множителей
5.32. Вычислить:


#7.3. Вывод простых чисел из заданного диапазона
Дано целое n>2. Напечатать все простые числа из диапазона [2, n].

Указания к решению: при неправильном вводе n завершить программу с помощью перехода в конец программы оператором Goto.   Вычисления организовать с помощью вложенных циклов – во внешнем перебрать все числа от 2 до n, а во внутреннем – выполнить проверку числа на принадлежность к множеству простых чисел.

Замечание:  в качестве альтернативы допускается применение других алгоритмов, например, "решета Эратосфена".


#8.1. Массив номеров нулевых элементов
В целочисленной последовательности длиной  0<N<=100  предполагается наличие нулевых элементов. Создать и вывести на экран массив, состоящий из номеров этих элементов.

Указания к решению: Задать количество вводимых значений N. Сообщить об ошибке и закончить выполнение программы, если N выходит за границы заданного диапазона. Ввести N значений исходной последовательности и записать их в массив. Хранение номеров нулевых элементов исходной последовательности организовать во вспомогательном массиве.  После заполнения вспомогательного массива и подсчета количества нулевых элементов M<=N вывести на экран значения N, M и номера нулевых элементов. Если M=0, вывести сообщение 'Нулевых элементов нет!’.


#9.1. Выполнить действия над матрицей случайных чисел
Создать матрицу случайных целых чисел B: array [1..5, 1..5] of integer. Вывести матрицу B, а также следующие величины на экран:

a) значение наибольшего элемента и его номер (i,j)
b) минимальное значение среди элементов матрицы, расположенных ниже главной диагонали и его номер.
c) Измененную матрицу, в которой переставлены местами строки 1 и 5.


#9.2. Студенты, владеющие иностранными языками
В студенческой группе 30 человек, имеющих порядковые номера от 1 до 30. 20 из них знают английский, 15 знают немецкий, 10 знают французский. Вывести порядковые номера студентов, которые знают все три языка, а затем номера тех, которые не знают ни одного. 

Указание: Задачу решить с использованием типа данных множество. Случайным образом создать множества студентов, знающих языки (20, 15 и 10 порядковых номеров), а затем выполнить над  множествами необходимые операции.


#10.1. Подсчет количества вхождений заданных символов с строку
Используя строковую константу v, и вводимую с экрана строку s длины 20:

const v = 'aeiou';
type stroka = string [20];
var s: stroka;  k: 0..20;
определить и вывести на экран количество (k) вхождений в строку s символов, перечисленных в константе v.


#10.2. Последовательность слов
Ввести последовательность, содержащую от 1 до n слов (n=10), в каждом из которых от 1 до k  малых латинских букв (k=5); между соседними словами – запятая, за последним словом – точка. 

Вывести на экран:
a) эту же последовательность слов, но в обратном порядке;
b) все слова в алфавитном порядке.
