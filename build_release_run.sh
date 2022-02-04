# Batch to build app

cmake -S standalone -B build/standalone
cmake --build build/standalone --config Release

# Run the app
./build/standalone/Program.exe
