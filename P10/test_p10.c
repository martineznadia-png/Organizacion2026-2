#include <stdio.h>
#include <stdint.h>

//funciiones
void pBin_8b(uint8_t );
//void pBin_16b(uint16_t);
//void pBin_32b(uint32_t);
//void pBin_64b(uint64_t);

int main(){

    //variables
    int opc;
    uint8_t num = 5;

    //menu
    do{
        //opciones del menu
        printf("\n[1] imprimir binario en formato 8 bits");
        printf("\n[2] imprimir binario en formato 16 bits");
        printf("\n[3] imprimir binario en formato 32 bits");
        printf("\n[4] imprimir binario en formato 64 bits");
        printf("\nIngresa la opcion deseada: ");
        scanf("%d", &opc);

        switch(opc){
            case 1: 
                pBin_8b(num);
            break;

            case 2:
                //pBin_16b(valor);
            break;

            case 3:
                //pBin_32b(valor);
            break;

            case 4:
                //pBin_64b(valor);
            break;

            default:
                printf("\nOpcion no valida");
            break;
        }
        printf("\nDeseas regresar al menu?: [1]SI / [2]NO ");
        scanf("%d", &opc);
    }while(opc == 1);

    return 0;
}