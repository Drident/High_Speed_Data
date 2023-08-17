#include "stm32fxxx_hal.h" // Inclure le fichier d'en-tête de la bibliothèque STM32 HAL correspondant à votre microcontrôleur

#define SD_CS_PIN GPIO_PIN_10
#define SD_CS_PORT GPIOA

SPI_HandleTypeDef hspi; // Déclarer une variable pour gérer l'interface SPI

void SD_CS_Select(void) {
    HAL_GPIO_WritePin(SD_CS_PORT, SD_CS_PIN, GPIO_PIN_RESET); // Abaisser le signal Chip Select pour sélectionner la carte SD
}

void SD_CS_Deselect(void) {
    HAL_GPIO_WritePin(SD_CS_PORT, SD_CS_PIN, GPIO_PIN_SET); // Lever le signal Chip Select pour désélectionner la carte SD
}

void SD_SPI_Transmit(uint16_t data) {
    HAL_SPI_Transmit(&hspi, (uint8_t*)&data, 1, HAL_MAX_DELAY); // Transmettre les données sur 16 bits via l'interface SPI
}

void SD_SPI_Receive(uint16_t* data) {
    HAL_SPI_Receive(&hspi, (uint8_t*)data, 1, HAL_MAX_DELAY); // Recevoir les données sur 16 bits via l'interface SPI
}

void SD_ReadPage(uint32_t pageAddress, uint16_t* buffer) {
    // Envoyer la commande de lecture de page (CMD17) avec l'adresse de la page
    // Utilisez les fonctions appropriées de votre bibliothèque SPI pour transmettre les commandes
    // et recevoir les données depuis la carte SD
    
    SD_CS_Select();
    
    uint8_t cmd[6] = {0x40 | 17, (uint8_t)(pageAddress >> 24), (uint8_t)(pageAddress >> 16), (uint8_t)(pageAddress >> 8), (uint8_t)pageAddress, 0x95};
    HAL_SPI_Transmit(&hspi, cmd, sizeof(cmd), HAL_MAX_DELAY);
    
    // Attendre la réponse de la carte SD (attente d'un octet de réponse 0xFF)
    uint8_t response;
    do {
        SD_SPI_Receive((uint16_t*)&response);
    } while (response == 0xFF);

    // Lire les données de la page
    for (uint16_t i = 0; i < 512; i += 2) {
        uint16_t data;
        SD_SPI_Receive(&data);
        buffer[i / 2] = data;
    }
    
    SD_CS_Deselect();
}

void SD_WritePage(uint32_t pageAddress, const uint16_t* buffer) {
    // Envoyer la commande d'écriture de page (CMD24) avec l'adresse de la page
    // Utilisez les fonctions appropriées de votre bibliothèque SPI pour transmettre les commandes
    // et envoyer les données à la carte SD
    
    SD_CS_Select();
    
    uint8_t cmd[6] = {0x40 | 24, (uint8_t)(pageAddress >> 24), (uint8_t)(pageAddress >> 16), (uint8_t)(pageAddress >> 8), (uint8_t)pageAddress, 0x95};
    HAL_SPI_Transmit(&hspi, cmd, sizeof(cmd), HAL_MAX_DELAY);
    
    // Attendre la réponse de la carte SD (attente d'un octet de réponse