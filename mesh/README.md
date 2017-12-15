--- 
title: INTRODUCTION Mesh city
description: Penser et concevoir la ville avec un algorithme en python inspiré du mycélium de champignon
image_url: 
---
Démarrélors lors de la résidence de biomimétisme à l'Hôtel Pasteur de Rennes à l'automne 2017, [carnet de bord](https://github.com/LeBiome/Proto_et_Projets/blob/master/mesh/LICENSE)

# about Mesh city

Generates root-like networks where no edges overlap. 

![](https://i.imgur.com/cNzKOSC.gif)

Code source orignel : https://github.com/inconvergent/hyphae/blob/master/hyphae.py

```git clone https://github.com/inconvergent/hyphae.git```

**dependances:**
+ Numpy, `sudo apt-get install python-numpy`
+ Cython, `sudo apt-get install cython`
+ Scipy, `sudo apt-get install python-scipy`
+ Moduel cairo, `sudo apt-get install python-cairo`

## tests 
```python2.7 /home/user/hyphae/hyphae.py```

## Ce projet

+ Le code modifié : [mily.py](https://github.com/LeBiome/Proto_et_Projets/blob/master/mesh/mily.py)
+ Licence du travail: [MIT License](https://github.com/LeBiome/Proto_et_Projets/blob/master/mesh/LICENSE)

### Done 
Update from `python2.6` to `pyton2.7.13` by adding `()` after all `print`

Fix ``  File "/home/xavier/hyphae/hyphae.py", line 378
    main()
    ^
IndentationError: expected an indented block
`` By adding 2 whitespace

### To do


When `python2.7 /home/xavier/hyphae/hyphae.py
` Solve
```
()
('filename', 'generations_a')
('SIZE', 15000)
('ZONEWIDTH', 80.0)
('RAD', 0.002666666666666667)
('ZONES', 187)
('one', 6.666666666666667e-05)
Traceback (most recent call last):
  File "/home/xavier/hyphae/hyphae.py", line 378, in <module>
    main()
  File "/home/xavier/hyphae/hyphae.py", line 203, in main
    R = np.zeros(NMAX,'float')
TypeError: 'float' object cannot be interpreted as an index
```
> `NMAX = 2*1e7 # maxmimum number of nodes`
> NMAX is a floating point number. In older versions of numpy, you can call zeros with a float as an argument. But this behavior is deprecated, and no longer works in the most recent version.

> Try converting NMAX to an integer.

`NMAX = int(2*1e7) # maxmimum number of nodes` 

**It works !**
> proposition made by [Kevin on stackoverflow](https://stackoverflow.com/questions/47575101/python2-7-typeerror-float-object-cannot-be-interpreted-as-an-index/47575377#47575377)
![](https://i.imgur.com/5Vkn7ZM.png)

## Un python 2.7

_Correction et update fait - Rename Mily_

![](https://framapic.org/mY2ZDCl7htUE/hJ2csbx2Qayd)

## To Do

Voir [ISSUE dédiée](https://github.com/LeBiome/Proto_et_Projets/issues/13) et contribuer au dialogue dedans

+ Créer un Gif avec les png générés
+ Trouver un environnement live pour intépreter les résultat en vidéo ou sous autre format dynamique live.
+ Changer couleur de la progression
+ Travailler fond d'image
+ Passer de laforme ronde à un périmêtre conplexe
+ Intégrer une carte de la ville
+ Interpréter l'agorithme en musique ?


![](https://media.giphy.com/media/3oxHQvHrdmjGoRBarC/giphy.gif)

**For Pyhton 3.5**
Solve ``in <module>
    from numpy import cos, sin, pi, arctan2, sqrt,\
ImportError: No module named 'numpy' ``

> An easy way to obtain numpy, scipy, pandas, ... is to install anaconda. Anaconda will automatically download and install the latest modules. https://www.continuum.io/downloads
> Documentation :https://docs.anaconda.com/anaconda/install/linux



----
Xavier Coadic 2017

