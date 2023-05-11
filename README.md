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
2. Redesigned UI 
3. Refactored code and implemented clean architecture
4. Handled internet connection availability checks
5. Used functional programming concepts to properly propagate my exception handling 
6. Implemented infinity scroll.
7. Implementation of Test to repository

## Packages used
flutter_screenutil (Screen Size)
cached_network_image (cache network image)
dartz (functional programming concepts)
fluttertoast (exception notification as side-effect)
freezed (aid union classes and inheritance)
internet_connection_checker (internet connection checks)
provider (snapshot cache)
Mockito (Test)

