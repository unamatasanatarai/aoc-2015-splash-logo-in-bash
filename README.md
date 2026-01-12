# Advent of Code 2015 Splash Logo in Bash

An homage to the iconic animated Christmas tree from the [Advent of Code 2015](https://adventofcode.com/2015) home page.

```text
                        *                         
                       >o<                        
                      >>o<<                       
                     >>*<O<<                      
                    >@>o>@<<<                     
                   >*<<<*<<<o<                    
                  >>o<<<O<<O>@<                   
                 >>*>>@>>o<@<<<<                  
                >>@<o<<<O<*<<<O<<                 
               >*<<@<<<@<<<@>>>o<<                
              >>*>>O<<*<<<*<<*<<*<<               
             >O<<<@>>>@<<O<<o<<o<<<<              
            >>O>*>o<<<*>>>*>>*>>>o<<<             
           >>@>>O>>*<O>>*<*<@>*>>O<<<<            
          >>@<<<@<<<O<O<@>>@<o<<*<<<*<<           
         >>O>>>*>>>@>>@<@<<<o<<<*>>O<<<<          
        >>*<<<*<<O>>O>>O>o<O<<<O>>@>>>O<<         
       >*<*>>@>>@>o<<o<<o<<O>>>o<O>>>@<<<<        
      >>o>>>O<<*<@>O<@<<<@>>o<@>>O<<<O>>>o<       
     >>O<<o>>>O>>>@>>o<*<<*>@<O>>O<o>>@<<<O<      
    >o<<<o<<*>>>@<<*<<O>>>o<<@<@>O>>*>>o>@<o<     
   >*>>>*>>o>>o>>>*<<<@<<<*<<@>O<<*>o<<O>>@<@<    
  >o>o>>>*<<*<<@>>>o<<@>>>*>*>o<<<@>>@>O<@>>>O<   
 >*<<@>>*<@>>o>>o<@>>*>*<O>>O>>@<@<<*<<<*<<<*<<<  
>@<<<O<O<<<o>>>@<<<*<<*>>O<o>>O>>>@>>O>*<O>*>>@<< 
                      |   |                       
                      |   |                       
           _  _ __ ___|___|___ __ _  _            
```

## Description

This project is a simple Bash script that renders and animates a Christmas tree in your terminal, inspired by the 2015 Advent of Code splash screen. While the tree above is static, the script features a moving "light" effect using ANSI color codes.

## Usage

To run the animation in your terminal:

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/unamatasanatarai/aoc-2015-splash-logo-in-bash.git
    cd aoc-2015-splash-logo-in-bash
    ```

2.  **Make the script executable**:
    ```bash
    chmod +x christmas-tree-aoc-2015.sh
    ```

3.  **Run it**:
    ```bash
    ./christmas-tree-aoc-2015.sh
    ```

*Press `Ctrl+C` to exit the animation.*

## Features

- **ANSI 24-bit Color**: Uses truecolor support for smooth gradient animations.
- **Pure Bash**: No external dependencies required other than a standard Bash environment.
- **Dynamic Animation**: A sliding window of light moves down the tree branches.

---
*Created as a nostalgic tribute to the start of the Advent of Code journey.*
