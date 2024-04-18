import os

def extract_values_from_files(directory_path):
    ipc_values = []
    mpki_values = []

    # Iterate over each file in the given directory
    for filename in os.listdir(directory_path):
        if filename.endswith('.txt'):  # Check if the file is a .txt file
            file_path = os.path.join(directory_path, filename)
            try:
                with open(file_path, 'r') as file:
                    for line in file:
                        if "CPU 0 cumulative IPC:" in line:
                            parts = line.split("CPU 0 cumulative IPC:")
                            number = float(parts[1].split()[0])
                            ipc_values.append(number)
                        # elif "MPKI:" in line:
                        #     parts = line.split("MPKI:")
                        #     number = float(parts[1].split()[0])
                        #     mpki_values.append(number)
            except Exception as e:
                print(f"Error reading file {filename}: {e}")

    return ipc_values, mpki_values

# Example usage
directory_path = 'C:\\Users\\wang6\\Documents\\GitHub\\ECEN676-Project-Group9\\simulation_results\\bimodal\\Entangling_4Ke\\results_50M\\'  # Replace with the path to your directory
ipc_values, mpki_values = extract_values_from_files(directory_path)
print("IPC Values:", ipc_values)
print("MPKI Values:", mpki_values)