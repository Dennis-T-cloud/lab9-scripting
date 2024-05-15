#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFFER_SIZE 1024

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return 1;
    }

    // Open the file for reading
    FILE *file = fopen(argv[1], "r");
    if (file == NULL)
    {
        perror("Error opening file");
        return 1;
    }

    char buffer[BUFFER_SIZE];
    int found = 0; // Flag to indicate finding the keyword "filename"

    // Read the file line by line
    while (fgets(buffer, BUFFER_SIZE, file) != NULL)
    {
        // Check if the line contains the word "filename"
        if (!found && strstr(buffer, "filename") != NULL)
        {
            found = 1; // Set the flag after finding the line
            continue;  // Skip the current line and proceed to print lines after this
        }

        // Print the line if the flag is set
        if (found)
        {
            printf("%s", buffer);
        }
    }

    // Close the file
    fclose(file);
    return 0;
}
