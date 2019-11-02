#include <stdio.h>

struct owner{
    char first_name[50];
    char last_name[50];
    char car[50];
    char license_plate[8];
};
struct owner owner;

int main () {
    printf("CAR OWNERS REGISTRATIONS\n\n");

    printf("Car owner first name:\n");
    scanf("%s", &owner.first_name);

    printf("Car owner last name:\n");
    scanf("%s", &owner.last_name);

    printf("Car model:\n");
    scanf("%s", &owner.car);

    printf("License plate:\n");
    scanf("%s", &owner.license_plate);

    FILE *file;
    file = fopen("proprietario_de_automoveis.txt", "w");

    fprintf(file, "CAR OWNERS REGISTRATIONS\n\n");
    fprintf(file, "Car owner name: %s %s\n", owner.first_name, owner.last_name);
    fprintf(file, "Car model: %s\n", owner.car);
    fprintf(file, "License plate: %s\n", owner.license_plate);

    fclose(file);

    return 0;
}
