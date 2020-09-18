Try {
    Remove-Item -Recurse "${PSScriptRoot}/build"
} Catch {
    Write-Host "Build folder does not exist!"
}
New-Item "${PSScriptRoot}/build" -ItemType Directory
emcc src/main.cpp -s WASM=1 --shell-file .\template\shell_minimal.html -o build/index.html