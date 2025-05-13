#!/bin/bash

if [ "$#" -ne 2 ]; then
	    echo "Usage: $0 <number> <operation (-a, -s, -m, -d)>"
	        exit 1
	fi

	
	file="number.dat"


	if [ ! -f "$file" ]; then
		    echo "Error: File $file not found."
		        exit 1
		fi


		number_in_file=$(cat "$file")


		number=$1
		operation=$2
		result=0

	
		case $operation in
			    -a)
result=$(($number_in_file + $number))
;;
 -s)
 result=$(($number_in_file - $number))
		;;
		-m)
										
											    result=$(($number_in_file * $number))
												            ;;
													        -d)
															        if [ $number -eq 0 ]; then
																	            echo "Error: Division by zero."
																		                exit 1
																				        fi
																					        result=$(($number_in_file / $number))
																						        ;;
																							    *)
																						echo "Invalid operation: $operation"
																						echo "Use -a for addition, -s for subtraction, -m for multiplication, -d for division."
																						exit 1
																					
																						;;
																						esac

																										   
																						echo $result

																										    
																						echo $result > "$file"
