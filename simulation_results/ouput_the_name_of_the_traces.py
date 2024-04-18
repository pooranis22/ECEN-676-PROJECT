import os

def list_files_in_directory(directory):
    # Get a list of file names in the specified directory
    files = os.listdir(directory)
    
    # Create a string with file names separated by commas
    output = ', '.join(files)
    
    # Optionally, you can write the output to a text file
    with open('output.txt', 'w') as file:
        file.write(output)
    
    return output

# Replace 'your_directory_path' with the path to your directory
directory_path = 'F:\\Chrome Download\\ipc1_public\\'
file_names = list_files_in_directory(directory_path)
print(file_names)
