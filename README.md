# For Linux

cmake -S standalone -B build/standalone \
cmake --build build/standalone --config Release \ 
(Then run the executable separately) \
(Or just run the build_release_run.sh script) \
Run "build/standalone/Program" \


# For Windows

cmake -S standalone -B build/standalone \
cmake --build build/standalone --config Release \
(Then run the executable separately) \ 
(Or just run the build_release_run.bat script) \ 
Run "build/standalone/Release/Program" \