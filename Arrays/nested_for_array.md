``` bash
#!/bin/bash

color=('pink' 'blue')
shirt=('satin' 'tshirt')

for name in "${color[@]}"
do
  for subject in "${shirt[@]}"
  do
    echo "$shirt is $color in color."
  done
done
```
![Code](https://github.com/boa3444/Linux_Lab/blob/c421973b9cf9905a546f181f1f22cdfa933617d6/images/array_nest_loop.png)
