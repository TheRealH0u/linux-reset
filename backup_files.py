import os
import shutil

def remove_file(file_path):
    try:
        os.remove(file_path)
        print(f"File {file_path} removed successfully.")
    except FileNotFoundError:
        print(f"File {file_path} not found.")
    except PermissionError:
        print(f"Permission denied: cannot remove file {file_path}.")
    except Exception as e:
        print(f"Error removing file: {e}")

def copy_file(source_path, destination_path):
    try:
        shutil.copy2(source_path, destination_path)
        print(f"File copied successfully from {source_path} to {destination_path}")
    except Exception as e:
        print(f"File doesnt exist removing it")
        remove_file(destination_path)

def list_files(base_directory):
    file_paths = []
    dir_paths = []

    for root, directories, files in os.walk(base_directory):
        
        for file in files:
            file_path = os.path.join(root, file)
            file_paths.append(file_path)
    
    return file_paths

# Example usage:
base_directory = './files/home'
root_directory = "/home/kali"
files = list_files(base_directory)

hidden_files = ["config/", "zshrc"]

print("Files:")
for file in files:
    og_file = file.replace(base_directory, root_directory)
    for hf in hidden_files:
        og_file = og_file.replace(hf, f".{hf}")
    copy_file(og_file, file)
    
