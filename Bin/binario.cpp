#include <iostream>


using namespace std;

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

int main(void) {

    string nome;

    getline(cin, nome);

    cout << "Esse é o nome de Fulano: " << nome << endl;

    char sobrenome[100];

    scanf("%s", sobrenome);

    printf("E esse é o sobrenome: %s\n", sobrenome);

    callMe("sobrenome\n");

    callMe(sobrenome);

    return 0;
}