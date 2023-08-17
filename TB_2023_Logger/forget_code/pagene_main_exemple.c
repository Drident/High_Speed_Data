#include "stm32fxxx_hal.h"
#include <stdio.h>

#define SD_CS_PIN GPIO_PIN_10
#define SD_CS_PORT GPIOA

SPI_HandleTypeDef hspi;

void SD_CS_Select(void) {
    HAL_GPIO_WritePin(SD_CS_PORT, SD_CS_PIN, GPIO_PIN_RESET);
}

void SD_CS_Deselect(void) {
    HAL_GPIO_WritePin(SD_CS_PORT, SD_CS_PIN, GPIO_PIN_SET);
}

void SD_SPI_Transmit(uint16_t data) {
    HAL_SPI_Transmit(&hspi, (uint8_t*)&data, 1, HAL_MAX_DELAY);
}

void SD_SPI_Receive(uint16_t* data) {
    HAL_SPI_Receive(&hspi, (uint8_t*)data, 1, HAL_MAX_DELAY);
}

void SD_ReadPage(uint32_t pageAddress, uint16_t* buffer) {
    // ... (code pour lire une page depuis la carte SD)
}

void SD_WritePage(uint32_t pageAddress, const uint16_t* buffer) {
    // ... (code pour écrire une page sur la carte SD)
}

void SD_PaginateFile(const char* filename, uint32_t pageSize) {
    FILE* file = fopen(filename, "rb"); // Ouvrir le fichier en mode lecture binaire
    if (file == NULL) {
        printf("Erreur lors de l'ouverture du fichier.\n");
        return;
    }

    fseek(file, 0, SEEK_END); // Se positionner à la fin du fichier pour obtenir sa taille
    long fileSize = ftell(file); // Récupérer la taille du fichier en octets
    rewind(file); // Rembobiner le fichier à son début

    uint32_t pageCount = (fileSize + pageSize - 1) / pageSize; // Calculer le nombre de pages nécessaires pour le fichier

    // Allouer un tampon pour stocker une page de données
    uint16_t* pageBuffer = (uint16_t*)malloc(pageSize);
    if (pageBuffer == NULL) {
        printf("Erreur lors de l'allocation du tampon de la page.\n");
        fclose(file);
        return;
    }

    uint32_t currentPage = 0;
    uint32_t bytesRead = 0;

    while (currentPage < pageCount) {
        // Lire une page de données depuis le fichier
        bytesRead = fread(pageBuffer, sizeof(uint16_t), pageSize / sizeof(uint16_t), file);
        if (bytesRead != pageSize / sizeof(uint16_t)) {
            printf("Erreur lors de la lecture des données du fichier.\n");
            break;
        }

        // Écrire la page de données sur la carte SD
        SD_WritePage(currentPage, pageBuffer);

        currentPage++;
    }

    free(pageBuffer);
    fclose(file);
}

int main() {
    // Initialiser l'interface SPI et le GPIO du CS (Chip Select)
    // Configurer les broches, la vitesse de communication, le mode SPI, etc.

    // Initialiser la carte SD

    SD_PaginateFile("example.bin", 512); // Paginer le fichier "example.bin" avec une taille de page de 512 octets

    return 0;
}