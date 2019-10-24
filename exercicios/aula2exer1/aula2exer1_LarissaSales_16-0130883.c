#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_POPRIETARIOS 50

typedef struct{
    char nome[50];
    char CPF[11];
    char modelo[20];
    char renavam[10];
    int ativo;
} Proprietario;

Proprietario dono[MAX_POPRIETARIOS];

void menu();
void cadastrar();
void remover();
void listar();

int main(){
    menu();
    return 0;
}

void menu(){
    int op;
    do{
    system("cls");
    printf("\n1 - Cadastrar\n");
    printf("\n2 - Listar\n");
    printf("\n3 - Remover\n");
    printf("\n0 - Sair\n");
    scanf("%d", &op);
    getchar();
    switch(op){
    case 1:
        cadastrar();
        break;
    case 2:
        listar();
        break;
    case 3:
        remover();
        break;
    }
    getchar();
    }while(op != 0);
}

void cadastrar(){
    int i;
    char nome[50];
    char CPF[11];
    char modelo[20];
    char renavam[10];
    int op;

    do{
        system("cls");
        FILE *arquivo;
        arquivo = (fopen("arquivo.txt","a"));

        printf("\nNome: ");
        fgets(nome, sizeof(nome), stdin);

        printf("\nCPF: ");
        fgets(CPF, sizeof(CPF), stdin);

        printf("\nModelo: ");
        fgets(modelo, sizeof(modelo), stdin);

        printf("\nRenavam: ");
        fgets(renavam, sizeof(renavam), stdin);

        for(i=0; i < MAX_POPRIETARIOS; i++){
            if(dono[i].ativo==0){
            strcpy(dono[i].nome, nome);
            strcpy(dono[i].CPF, CPF);
            strcpy(dono[i].modelo, modelo);
            dono[i].ativo=1;
            break;
            }

        fprintf(arquivo,"nome: %s\n",dono[i].nome);
        fprintf(arquivo,"CPF: %s\n",dono[i].CPF);
        fprintf(arquivo,"Modelo: %s\n",dono[i].modelo);
        fprintf(arquivo,"Renevam: %s\n", dono[i].renavam);

        }
        close(arquivo);

        printf("\n1 - continuar\n0 - Menu\n");
        scanf("%d", &op);

    }while(op != 0);
}

void remover(){
    int numero, op;
    do{
        system("cls");
        listar();

        printf("\n Digite o numero do proprietario a ser removido: ");
        scanf("%d", &numero);
        --numero;

        dono[numero].ativo=0;

        printf("Cadastro exluido com sucesso!");
        getchar();

        printf("\n1 - continuar\n0 - Menu\n");
        scanf("%d", &op);
    }while(op!=0);
}

void listar(){
    int i, op;

    do{
        system("cls");
        printf("\nLista de Proprietarios\n");

        for (i=0; i < MAX_POPRIETARIOS; i++){
            if(dono[i].ativo==1){
                printf("\nProprietario numero: %d\n\n", i+1);
                printf("Nome: %s\n", dono[i].nome);
                printf("CPF: %s\n", dono[i].CPF);
                printf("Modelo: %s\n", dono[i].modelo);
                printf("Renevam: %s\n", dono[i].renavam);
            }
    }
    printf("\n1 - continuar\n0 - Menu\n");
    scanf("%d", &op);
    }while(op!=0);
}
