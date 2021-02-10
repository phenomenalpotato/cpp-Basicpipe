# cpp-Basicpipe
A Very Basic C++ Pipeline

Ideia/ Concept:

<img src="C-Pipe.jpeg" alt="pipe" width="75%">


<b>PURPOSE:</b>

    - Integrate more security into your existing development environment;
    - This Pipeline in Travis CI will automatically compile and check your executable using Sanitizers and Fuzz Testing

<b>TESTS:</b>

    - AddressSanitizer: Checks for memory Address that you access that are out of bounds;
        - To use the Address Sanitizer Option:

            - make address-sanitizer
            - And then run the binary;

    - MemorySanitizer: Which does checks if you are accessing uninitializes memory;
        - To use the memory-sanitizer Option:

            - make memory-sanitizer
            - And then run the binary;

    - ThreadSanitizer: Which can detect if you have a Multi-Threaded program that is doing unsafe thread Things at Runtime;
    - UndefinedBehaviorSanitizer: Which attempts to look things that you're doing that are invking undefined behavior as far as the C++ Standard goes;
    - DataFlow: Can analyse the data through your program. In this case you have to call the instrumentation (Something that doesn't apply to the others above);
    - LeakSanitizer: Will try to look for Memory Leaks;


<b>The test output will be printed in a separate file!</b>
    
    - To print the Output of the program: 

        - make execute &> file_name.txt
        

<b>IMAGEM DO OUTPUT PRINTADO!</b>

<b>WARNING:</b>

        - This project/ files are only for DEMONSTRATION purpose!! 
        - This is a work in progress!!

<b>The following sources were used to learn:</b>

    - https://youtu.be/MB6NPkB4YVs
    - https://youtu.be/gO0KBoqkOoU
    - https://youtu.be/3ulKzD2cmSw


<i>If you want to contribute, feel free to do so!</i>