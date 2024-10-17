# Calculator
# CaculatorX
It is a simple flutter Calculator using getx
# CalculatorX

CalculatorX is a simple, intuitive, and responsive calculator application built with Flutter. It provides basic mathematical operations such as addition, subtraction, multiplication, division, and modulo, with a modern UI design. This calculator app is also built using the `GetX` package for state management, ensuring a smooth and efficient user experience.

## Features

- **Basic Mathematical Operations**: Supports addition, subtraction, multiplication, division, and modulo operations.
- **Responsive Design**: The app is designed to adapt to different screen sizes.
- **Clear Button**: Reset the calculator to start a new calculation.
- **Delete Button**: Remove the last digit entered.
- **Decimal Support**: Perform calculations with floating point numbers.
- **Error Handling**: Handle division by zero and other invalid operations gracefully.
- **Theming**: Styled with a neon green theme with dynamic button size to enhance the user experience.

## Technologies

- **Flutter**: The main framework used for the application.
- **GetX**: For state management and controller logic.
- **Custom Widgets**: The app uses custom buttons for each calculator key.

## Project Structure

```bash
├── lib/
│   ├── controller/
│   │   └── calculator_controller.dart   # Controller handling the calculator logic
│   ├── customWidget/
│   │   └── custom_button.dart           # Custom button widget used in the UI
│   ├── model/
│   │   └── calculatmodel.dart           # Math operations model
│   ├── view/
│   │   └── claculator_ui.dart           # Main UI layout of the calculator
│   └── main.dart                        # Entry point of the Flutter app
└── README.md                            # Project documentation
```

## How it Works

1. **Calculator Logic**:  
   The logic for basic operations is handled in the `SimpleMathOperations` class located in `calculatmodel.dart`. This class handles the setting of operands and operators, performs the calculation, and handles edge cases like division by zero.

2. **Controller**:  
   The `CalculatorController` class (found in `calculator_controller.dart`) extends `GetxController` and manages the input/output state of the calculator. It updates the user interface dynamically using `GetX` reactive programming.

3. **Custom Button**:  
   `CustomButton` is a reusable widget that renders a button with customizable size, color, and behavior when tapped.

4. **UI Layout**:  
   The calculator's UI is organized using `GridView` for the buttons and a `Column` for the display area. The UI adapts to screen size, making the button sizes dynamic using `MediaQuery`.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/CalculatorX.git
   cd CalculatorX
   ```

2. Install the dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

## Dependencies

The project uses the following packages:

- **GetX**: For state management.
- **Flutter**: The core framework for building the UI.

## Usage

- Tap on number buttons (`0-9`) to enter the numbers.
- Tap on operation buttons (`+`, `-`, `×`, `÷`, `%`) to choose an operation.
- Tap `=` to calculate the result.
- Tap `C` to clear the input and reset the calculator.
- Tap `del` to delete the last digit.

 Screenshots


![Screenshot_1729149722](https://github.com/user-attachments/assets/bb0e215f-c759-40cb-83db-adcde6fac010)

 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Developed with ❤️ using Flutter.


