import os


def list_files(path):
    """Lists all files in the specified directory."""

    for entry in os.listdir(path):
        if os.path.isfile(os.path.join(path, entry)) and entry.endswith(".tex"):
            print(f"\\subfile{{controls_meetings/{entry[:-4]}}}")
            print(f"\\newpage")


if __name__ == "__main__":
    directory_path = "tex_files/"  # Replace with the path to your directory
    list_files(directory_path)
