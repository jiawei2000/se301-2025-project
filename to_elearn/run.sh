#Config
SRC_DIR="code/src"
OUT_DIR="code/src/target/classes"
MAIN_CLASS="org.example.DictionaryAttack"
# DATASET_IN_PATH="datasets/large/in.txt"
# DATASET_OUT_PATH="datasets/large/out.txt"
# DATASET_DICTIONARY_PATH="datasets/large/dictionary.txt"
DATASET_IN_PATH="datasets/small/in.txt"
DATASET_OUT_PATH="datasets/small/out.txt"
DATASET_DICTIONARY_PATH="datasets/small/dictionary.txt"

# Compile all .java files under src
javac -d "$OUT_DIR" $(find "$SRC_DIR" -name "*.java")

# Run the program (optional)
java -cp "$OUT_DIR" "$MAIN_CLASS" "$DATASET_IN_PATH" "$DATASET_DICTIONARY_PATH" "$DATASET_OUT_PATH"