# BasicStatsCalculator
web application for calculating simple statistical values WD LEVEL2_LAB_5

# SimpleStatsCalculatorWebApp

## Overview
SimpleStatsCalculatorWebApp is a basic ASP.NET Web Forms application designed to calculate and display statistical values (maximum, minimum, average, and total) from three user-provided numbers. The project demonstrates fundamental ASP.NET concepts such as server-side event handling, input validation, and the use of web controls.

## Features
- **User-Friendly Interface**:
  - Input fields for three numbers.
  - A button to trigger calculations.
  - Displays the calculated maximum, minimum, average, and total dynamically.
  - Error handling for invalid or missing inputs.

- **Backend Logic**:
  - Server-side event handling using C#.
  - Helper methods for computing maximum and minimum values.
  - Validates user input to ensure accurate calculations.

## What This Project is About
This is a basic ASP.NET Web Forms application designed to teach or demonstrate:
- Server-side event handling using C#.
- ASP.NET controls like text boxes, buttons, and labels for creating interactive web pages.
- Input validation and exception handling.
- Simple mathematical calculations in a web environment.

## Technologies Used
- **Programming Language**: C#
- **Framework**: ASP.NET Web Forms
- **Development Environment**: Visual Studio

## Requirements
- .NET Framework (version 4.7.2 or later)
- Visual Studio (or any C# compatible IDE)

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/username/SimpleStatsCalculatorWebApp.git
   ```
2. Open the project in Visual Studio.
3. Build the solution to restore dependencies.
4. Run the project using IIS Express or any compatible web server.

## Usage
1. Launch the application in your web browser.
2. Enter three numbers in the input fields.
3. Click the **Calculate** button.
4. View the calculated values:
   - **Maximum**
   - **Minimum**
   - **Average**
   - **Total**
5. If any input is missing or invalid, an error message will be displayed.

## Code Structure
- **WebForm1.cs**:
  - Contains the server-side logic for handling button clicks and performing calculations.
  - Validates input and handles exceptions.
  - Includes helper methods (`FindMaximum`, `FindMinimum`) for determining maximum and minimum values.

- **WebForm1.aspx**:
  - Defines the UI layout with input fields, labels, and a button.
  - Connects UI elements to the server-side code.

## Example Output
### Input
```
First Number: 10
Second Number: 20
Third Number: 30
```

### Output
```
Maximum: 30
Minimum: 10
Average: 20.00
Total: 60
```

## Learning Objectives
This project demonstrates:
- Server-side event handling using C#.
- Usage of ASP.NET Web Forms controls for building interactive web applications.
- Best practices for input validation and exception handling.
- Simple mathematical computations in a web environment.

## Future Enhancements
- Add support for more than three numbers.
- Create a more interactive UI using modern frameworks like Bootstrap.
- Implement client-side validation for better user experience.
- Add persistent storage (e.g., database integration) to save calculation history.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contributors
- [Your Name](https://github.com/username)

Feel free to contribute by submitting issues or pull requests!


