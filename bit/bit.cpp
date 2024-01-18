#include <iostream>
#include <filesystem>
#include <string>

int main() {
    // Use std::filesystem::path instead of undefined Path
    std::filesystem::path hwh_File;
    std::filesystem::path bit_File;

    // Get the current working directory as a std::filesystem::path
    std::filesystem::path currentDirectoryPath = std::filesystem::current_path();

    // Get the name of the current working directory
    std::filesystem::path currentDirectoryName = currentDirectoryPath.filename();

    // Convert the std::filesystem::path to std::string
    std::string currentDirectoryNameString = currentDirectoryName.string();

    // Use assignment operator to initialize the paths
    hwh_File = currentDirectoryNameString + ".gen";
    bit_File = currentDirectoryNameString + ".runs";

    // Source file path relative to ".gen" using backslashes
    std::filesystem::path hwh_File_Path = "sources_1\\bd\\design_1\\hw_handoff\\design_1.hwh";
    std::filesystem::path bit_File_Path = "impl_1\\design_1_wrapper.bit";

    // Construct the full path using std::filesystem::path methods
    std::filesystem::path hwh_File_fullPath = currentDirectoryPath / hwh_File / hwh_File_Path;
    std::filesystem::path bit_File_fullPath = currentDirectoryPath / bit_File / bit_File_Path;

    // Destination directory path
    std::filesystem::path destinationDirectory = "..\\";

    try {
        // Copy the files
        std::filesystem::copy(hwh_File_fullPath, destinationDirectory / hwh_File_Path.filename());
        std::filesystem::copy(bit_File_fullPath, destinationDirectory / bit_File_Path.filename());
        std::cout << "Files copied successfully.\n";
    } catch (const std::filesystem::filesystem_error& e) {
        std::cerr << "Error copying files: " << e.what() << "\n";
    }

    return 0;
}
