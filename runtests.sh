#!/usr/bin/env bash

# Clean up and build
make clean
make assembler
make simulator
make 

# Assemble and run each test case with the simulator, and compare the outputs
echo "Running Test t2.4.4.1"
./assembler t2.4.4.1.as t2.4.4.1.mc
./simulator t2.4.4.1.mc 4 4 1 > t2.4.4.1.out
diff t2.4.4.1.out t2.4.4.1c.txt
echo

echo "Running Test t3.4.4.2"
./assembler t3.4.4.2.as t3.4.4.2.mc
./simulator t3.4.4.2.mc 4 4 2 > t3.4.4.2.out
diff t3.4.4.2.out t3.4.4.2c.txt
echo

echo "Running Test testFromSpec.4.4.4"
./assembler testFromSpec.4.4.4.as testFromSpec.4.4.4.mc
./simulator testFromSpec.4.4.4.mc 4 4 4 > testFromSpec.4.4.4.out
diff testFromSpec.4.4.4.out testFromSpec.4.4.4c.txt
echo

echo "Running Test testLoop.2.4.5"
./assembler testLoop.2.4.5.as testLoop.2.4.5.mc
./simulator testLoop.2.4.5.mc 2 4 5 > testLoop.2.4.5.out
diff testLoop.2.4.5.out testLoop.2.4.5c.txt
echo

echo "Running Test testLwSwLwLw.4.4.4"
./assembler testLwSwLwLw.4.4.4.as testLwSwLwLw.4.4.4.mc
./simulator testLwSwLwLw.4.4.4.mc 4 4 4 > testLwSwLwLw.4.4.4.out
diff testLwSwLwLw.4.4.4.out testLwSwLwLw.4.4.4c.txt
echo

echo "Running Test testaddCat.1.2.1"
./assembler testaddCat.1.2.1.as testaddCat.1.2.1.mc
./simulator testaddCat.1.2.1.mc 1 2 1 > testaddCat.1.2.1.out
diff testaddCat.1.2.1.out testaddCat.1.2.1c.txt
echo

echo "Running Test testlsl.1.1.1"
./assembler testlsl.1.1.1.as testlsl.1.1.1.mc
./simulator testlsl.1.1.1.mc 1 1 1 > testlsl.1.1.1.out
diff testlsl.1.1.1.out testlsl.1.1.1c.txt

echo

echo "____________________________________________________________"

echo

echo "Running Additional Tests - should be wrong:"
echo

echo "Running Test testLwALU.2.1.4"
./assembler testLwALU.2.1.4.as testLwALU.2.1.4.mc
./simulator testLwALU.2.1.4.mc 2 1 4 > testLwALU.2.1.4.out
diff testLwALU.2.1.4.out testLwALU.2.1.4c.txt
echo

echo "Running Test testLwSwAdd.8.2.8"
./assembler testLwSwAdd.8.2.8.as testLwSwAdd.8.2.8.mc
./simulator testLwSwAdd.8.2.8.mc 8 2 8 > testLwSwAdd.8.2.8.out
diff testLwSwAdd.8.2.8.out testLwSwAdd.10.2.8c.txt
echo

echo "Running Test testdoblsw.1.1.2"
./assembler testdoblsw.1.1.2.as testdoblsw.1.1.2.mc
./simulator testdoblsw.1.1.2.mc 1 1 2 > testdoblsw.1.1.2.out
diff testdoblsw.1.1.2.out testdoblsw.1.1.2c.txt
echo
