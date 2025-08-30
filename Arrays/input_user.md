```
#!/bin/bash

input=""
until [ $input = "exit" ]
do
  read -p "Enter a word (type 'stop' to quit): " input
  echo "You entered: $input"
done
```
![Code](https://github.com/boa3444/Linux_Lab/blob/01e48ea27c95c73269651f926f960e4a57975d99/images/array_input_user.png)
