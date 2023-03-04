---
## Front matter
title: "Отчет лабораторной работы №4"
author: "Низамова Альфия Айдаровна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной лабораторной работы является ознакомление с моделью гармоничесих колебаний и построение их на языках программирования Julia и OpenModelica

# Задание
Постройте фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для следующих случаев
1. Колебания гармонического осциллятора без затуханий и без действий внешней
силы
x'' + 3x = 0
2. Колебания гармонического осциллятора c затуханием и без действий внешней
силы
x'' + x' + 4x = 0
3. Колебания гармонического осциллятора c затуханием и под действием внешней
силы
x'' + 2x' + x = sin(2t)

На интервале
t от 0 до 40
(шаг 0.05) с начальными условиями
x0 = 1, y0 = 1

# Выполнение лабораторной работы
Написала код на языке Julia и Openmodelica для построния фазового портрета гармонического осциллятора и решения уравнения гармонического осциллятора для каждого случая.       

1 случай (рис.1-4)
![Код на Julia 1](image/1.png){#fig:001 width=70%}

![Результат Julia 1](image/lab4_jl_1.png){#fig:001 width=70%}

![Фазовый портрет Julia 1](image/lab4_jl_1_ph.png){#fig:001 width=70%}

![Код на OpenModelica 1](image/2.png){#fig:001 width=70%}

![Результат OpenModelica 1](image/lab4_om_1.png){#fig:001 width=70%}

![Фазовый портрет OpenModelica 1](image/lab4_om_1_ph.png){#fig:001 width=70%}

2 случай (рис.5-8)
![Код на Julia 2](image/3.png){#fig:001 width=70%}

![Результат Julia 2](image/lab4_jl_2.png){#fig:001 width=70%}

![Фазовый портрет Julia 2](image/lab4_jl_2_ph.png){#fig:001 width=70%}

![Код на OpenModelica 2](image/4.png){#fig:001 width=70%}

![Результат OpenModelica 2](image/lab4_om_2.png){#fig:001 width=70%}

![Фазовый портрет OpenModelica 2](image/lab4_om_2_ph.png){#fig:001 width=70%}

3 случай (рис.9-12)
![Код на Julia 3](image/5.png){#fig:001 width=70%}

![Результат Julia 3](image/lab4_jl_3.png){#fig:001 width=70%}

![Фазовый портрет Julia 3](image/lab4_jl_3_ph.png){#fig:001 width=70%}

![Код на OpenModelica 3](image/6.png){#fig:001 width=70%}

![Результат OpenModelica 3](image/lab4_om_3.png){#fig:001 width=70%}

![Фазовый портрет OpenModelica 3](image/lab4_om_3_ph.png){#fig:001 width=70%}

# Выводы

Мы ознакомились с моделью гармоничесих колебаний и построили их на языках программирования Julia и OpenModelica

# Список литературы{.unnumbered}

::: {#refs}
:::
