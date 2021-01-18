cd readability/ && git submodule update && cd ..
npx google-closure-compiler --js ./readability/Readability.js --js_output_file ./unl.js --compilation_level ADVANCED_OPTIMIZATIONS --rewrite_polyfills --jscomp_off undefinedVars
cat prepend.txt unl.js > Readable_closure.js
rm unl.js
