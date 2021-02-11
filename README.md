# cpp-Basicpipe
A Very Basic C++ Pipeline

Ideia/ Concept:

<img src="C-Pipe.jpeg" alt="pipe" width="75%">


<b>PURPOSE:</b>

    - Integrate more security into your existing development environment;
    - This Pipeline in Travis CI will automatically compile and check your executable using Sanitizers and Fuzz Testing

<b>TESTS:</b>

    - all: Will compile with the -Wall -Wextra -pedantic -Werror flags;

    - AddressSanitizer: Checks for memory Address that you access that are out of bounds;
        - To use the Address Sanitizer Option: https://releases.llvm.org/8.0.0/tools/clang/docs/AddressSanitizer.html

            - make address-sanitizer
            - And then run the binary;

    - MemorySanitizer: Which does checks if you are accessing uninitializes memory;
        - To use the memory-sanitizer Option: https://releases.llvm.org/8.0.0/tools/clang/docs/MemorySanitizer.html

            - make memory-sanitizer
            - And then run the binary;

    - ThreadSanitizer: Which can detect if you have a Multi-Threaded program that is doing unsafe thread Things at Runtime. Will detect data races. 
      E.g. A situation, in which at least two threads access a shared variable at the same time. At least on thread tries to modify the variable;
        - To use the thread-sanitizer Option: https://releases.llvm.org/8.0.0/tools/clang/docs/ThreadSanitizer.html

        - make thread-sanitizer
        - And then run the binary;

        WARNING: Following the CLANG ThreadSanitizer documentation (https://releases.llvm.org/8.0.0/tools/clang/docs/ThreadSanitizer.html#current-status), this tool is still in beta Stage. During my tests sometimes even when using a "buggy program" that does Date Races, the tool did not gave an "WARNING: ThreadSanitizer: data race"; I had to execute more than once to really give the Warning. 

    - UndefinedBehaviorSanitizer: Which attempts to look things that you're doing that are invking undefined behavior as far as the C++ Standard goes;
        - To use the undefined-behavior-sanitizer Option: https://releases.llvm.org/8.0.0/tools/clang/docs/UndefinedBehaviorSanitizer.html

        - make undefined-behavior-sanitizer
        - And then run the binary;

    - DataFlow: Can analyse the data through your program. In this case you have to call the instrumentation (Something that doesn't apply to the others above);
        - To use the data-flow Option Directly taken from the documentation: https://releases.llvm.org/8.0.0/tools/clang/docs/DataFlowSanitizer.html#usage

        "With no program changes, applying DataFlowSanitizer to a program will not alter its behavior. To use DataFlowSanitizer, the program uses API functions to apply tags to data to cause it to be tracked, and to check the tag of a specific data item. DataFlowSanitizer manages the propagation of tags through the program according to its data flow.

        The APIs are defined in the header file sanitizer/dfsan_interface.h. For further information about each function, please refer to the header file."

    - LeakSanitizer: Will try to look for Memory Leaks;
        - To use the leak-sanitizer Option: https://releases.llvm.org/8.0.0/tools/clang/docs/LeakSanitizer.html

        - make leak-sanitizer
        - And then run the binary;


<b>The test output will be printed in a separate file!</b>
    
    - To print the Output of the program: 

        - make execute &> Report-File/file_name.txt
        

<b>IMAGEM DO OUTPUT PRINTADO!</b>

<b>WARNING:</b>

        - This project/ files are only for DEMONSTRATION purpose!! 
        - This is a work in progress!!

<b>The following sources were used to learn:</b>

    - https://youtu.be/MB6NPkB4YVs
    - https://youtu.be/gO0KBoqkOoU
    - https://youtu.be/3ulKzD2cmSw


<i>If you want to contribute, feel free to do so!</i>