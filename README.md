# Casino Test

Test Task: Online Casino Flutter application.

Do you remember Rick and Morty cartoon? 
Your goal is to create the app with all the characters from this cartoon, and make it look juicy.

API docs: https://rickandmortyapi.com/documentation

## To-do:

Using clean architecture design pattern
- Refactor application to your best understanding of the design pattern
- Fix loading state and fetching data feature
- Find and fix all other bugs and issues
- Add more information about characters
- Optimize scrolling performance
- Implement pagination

## Done By: Akinfenwa Kayode David
Thank you for the opportunity to contribute to this project it was fun and exciting 

## Things done
1. I fixed the application crash on launch(
    - changed Build gradle version, 
    - in app/build.gradle->Changed  GradleException to FileNotFoundException, 
    - Updated distributionUrl version, 
    - AndroidManifest file was not having Internet Permission)

2. Redesigned UI (added details screen),
Refactored codebase (went minimal)
Handled internet connection availability checks,
Used functional programming concepts to properly propagate my exception handling
Implemented infinity scroll.

## Packages used
cached_network_image (cache network image)
dartz (functional programming concepts)
fluttertoast (exception notification as side-effect)
freezed (aid union classes and inheritance)
internet_connection_checker (internet connection checks)
provider (snapshot cache)
timeago (nice time-range display)
PS. Couldn't go with TDD as limited time was a factor working on thi
