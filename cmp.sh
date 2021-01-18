cd readability/ && git submodule update && cd ..
npx google-closure-compiler --js ./readability/Readability.js --js_output_file ./unl.js --compilation_level SIMPLE_OPTIMIZATIONS --rewrite_polyfills
cat prepend.txt unl.js > Readable_closure.js
rm unl.js
