#!/bin/bash
#!/bin/bash

if [ "$#" -ne 1 ]; then
	    echo "Usage: $0 <max_number>"
	        exit 1
	fi
is_prime() {
local num=$1
local sqrt_num=$(echo "sqrt($num)" | bc)
for ((i=2; i<=sqrt_num; i++)); do
if [ $(($num % i)) -eq 0 ]; then
return 1
fi
done
return 0
}

for ((num=2; num<=$1; num++)); do
if is_prime "$num"; then
											            echo $num
										
										
											    fi
												done
