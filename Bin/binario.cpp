#include <iostream>
#include <pthread.h> // To use Thread Functions

using namespace std;

int Global;

void *p;

void *Thread1(void *x) { 

    Global = 42; // Accessing and writing in Global

    return x;
}

int callMe(const char *sobrenom) {

    int posicao = 0;

    int quantidadeLetras; // Uninitialized Value

    while (sobrenom[posicao] != '\n') { // Accessing memory out of boundary

        cout << "Letras do seu Nome: " << sobrenom[posicao] << endl;

        if(quantidadeLetras >= 0) {

         quantidadeLetras = quantidadeLetras + 1;

        }

        ++posicao;
    }

    return quantidadeLetras;

}

int main(int argc, char *argv[]) {

// ==========------------------------============================----------------------------------=========

    // To check Memory Leak

    p = malloc(7);

    p = 0; // The memory is leaked here

// ===================----------------------------------================================================--------

    // To check Undefined Behavior

    int k = 0x7fffffff; // Number in hexadecimal (2147483647 in decimal) that represents the maximum positive value for a 32-bit signed binary integer

    k += argc;

// =======--------------------========================---------------------------------------------------=====

    #if defined(THREAD)

    // Use to check ThreadSanitizer

        pthread_t t; // Will store the created thread id

        pthread_create(&t, NULL, Thread1, NULL); // Will create a new thread, and execute a Sub-Routine Thread1()

        Global = 43;

        pthread_t f;

        pthread_create(&f, NULL, Thread1, NULL);

        pthread_join(t, NULL); // Will Wait for the termination of a thread

        pthread_join(f, NULL);

        Global = 450;

        return Global;

    #endif

// -----------------===========================----------------------------===================

    string nome; // Uninitialized Value

    getline(cin, nome);

    cout << "Esse é o nome de Fulano: " << nome << endl;

    char sobrenome[50];

    scanf("%s", sobrenome);

    printf("E esse é o sobrenome: %s\n", sobrenome);

// ===========================-------------------------=====================================

    callMe("sobrenome\n"); // Use to check MemorySanitizer

// --------------------=================================------------------=====================

    callMe(sobrenome); // Use to check address-sanitizer


    return 0;
}
