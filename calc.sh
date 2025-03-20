#!/bin/sh

# ==========================================
# Script Name: Simple Calculator
# Author: Mohamed Kamal El-Dien
# Version: 1.0
# Description: A basic calculator script that takes two numbers
#              and an operator (+, -, *, /) as input and performs
#              the corresponding arithmetic operation.
# ==========================================


echo "Script name: $0"


echo "Enter first number: "
read num1

echo "Enter operator (+, -, /, *): "
read oper

echo "Enter second number: "
read num2


# التحقق من أن المدخلات أرقام صحيحة
if ! [ "$num1" -eq "$num1" ] 2>/dev/null || ! [ "$num2" -eq "$num2" ] 2>/dev/null; then
    echo "Error: Please enter valid numbers."
    exit 1
fi

# التحقق من القسمة على صفر
if [ "$oper" = "/" ] && [ "$num2" -eq 0 ]; then
    echo "Error: Division by zero is not allowed!"
    exit 1
fi

# الحساب بناءً على العملية المختارة
if [ "$oper" = "+" ]; then
    result=$((num1 + num2))
    echo "The Sum = $result"
    echo "Script Complite"

elif [ "$oper" = "-" ]; then
    result=$((num1 - num2))
    echo "The Difference = $result"
    echo "Script Complite"

elif [ "$oper" = "*" ]; then
    result=$((num1 * num2))
    echo "The Product = $result"
    echo "Script Complite"

elif [ "$oper" = "/" ]; then
    result=$((num1 / num2))
    echo "The Quotient = $result"
    echo "Script Complite"
	
else
    echo "Invalid operator! Please use +, -, /, or *."
    echo "Script Complite"
fi

