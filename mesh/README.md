about hyphae
=============

Generates root-like networks where no edges overlap. 

![](https://i.imgur.com/cNzKOSC.gif)

Code source orignel : https://github.com/inconvergent/hyphae/blob/master/hyphae.py

```git clone https://github.com/inconvergent/hyphae.git```

**dependances:**
+ Numpy, `sudo apt-get install python-numpy`
+ Cython, `sudo apt-get install cython`
+ Scipy, `sudo apt-get install python-scipy`
+ Moduel cairo, `sudo apt-get install python-cairo`

```python2.7 /home/xavier/hyphae/hyphae.py```
:::info
Done
:::

Update from `python2.6` to `pyton2.7.13` by adding `()` after all `print`

Fix ``  File "/home/xavier/hyphae/hyphae.py", line 378
    main()
    ^
IndentationError: expected an indented block
`` By adding 2 whitespace

:::info
To do
:::

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

> `NMAX = int(2*1e7) # maxmimum number of nodes` 
:::warning
It works !
:::
> proposition by [Kevin on stackoverflow](https://stackoverflow.com/questions/47575101/python2-7-typeerror-float-object-cannot-be-interpreted-as-an-index/47575377#47575377)
![](https://i.imgur.com/5Vkn7ZM.png)


**For Pyhton 3.5**
Solve ``in <module>
    from numpy import cos, sin, pi, arctan2, sqrt,\
ImportError: No module named 'numpy' ``

> An easy way to obtain numpy, scipy, pandas, ... is to install anaconda. Anaconda will automatically download and install the latest modules. https://www.continuum.io/downloads
> Documentation :https://docs.anaconda.com/anaconda/install/linux



----
Xavier Coadic 2017

