//
// TO DO : desenvolva um algoritmo para verificar se um numero inteiro positivo
//         e uma capicua
//         Exemplos: 12321 e uma capiacua, mas 123456 nao e
//         USE uma PILHA DE INTEIROS (STACK) e uma FILA DE INTEIROS (QUEUE)
//
// TO DO : design an algorithm to check if the digits of a positive decimal
//         integer number constitue a palindrome
//         Examples: 12321 is a palindrome, but 123456 is not
//         USE a STACK of integers and a QUEUE of integers
//

#include <stdio.h>

#include "IntegersQueue.h"
#include "IntegersStack.h"

int main(void) { 
    int num = 12321;
    int *q = QueueCreate(10);
    int *s = StackCreate(10);
    int temp = num;

    while(temp > 0){
        int digit = temp % 10;
        QueueEnqueue(q, digit);
        StackPush
        temp /= 10;

    }

    
    
    return 0; 
}
