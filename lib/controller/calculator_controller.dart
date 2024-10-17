import 'package:get/get.dart';
import '../modele/calculatmodel.dart';  // Import the SimpleMathOperations class

class CalculatorController extends GetxController {
  final SimpleMathOperations math = SimpleMathOperations();  // Create an instance of SimpleMathOperations
  var currentInput = '0'.obs;
  bool isNewInput = true;
  bool operatorPressed = false;

  // Handle button press based on input
  void onButtonPressed(String value) {
    if (value == 'C') {
      clearAll();
    } else if (value == '=') {
      calculate();
    } else if (value == 'del') {
      delete();
    } else if (isOperator(value)) {
      setOperator(value);
    } else {
      input(value);
    }
  }

  // Handle number or decimal input
  void input(String value) {
    if (isNewInput || currentInput.value == '0') {
      currentInput.value = value;
      isNewInput = false;
    } else {
      currentInput.value += value;
    }
  }

  // Set operator and store first operand
  void setOperator(String op) {
    math.setFirstOperand(double.parse(currentInput.value));
    math.setOperator(op);
    isNewInput = true;  // Ready for new input
  }

  // Perform calculation when '=' is pressed
  void calculate() {
    try {
      math.setSecondOperand(double.parse(currentInput.value));  // Set second operand
      double result = math.calculate();  // Perform calculation
      currentInput.value = result.toString();
      isNewInput = true;  // Ready for new input after calculation
    } catch (e) {
      currentInput.value = 'Error';
    }
  }

  // Clear all inputs
  void clearAll() {
    math.clear();
    currentInput.value = '0';
    isNewInput = true;
  }

  // Delete last character
  void delete() {
    if (currentInput.value.length > 1) {
      currentInput.value = currentInput.value.substring(0, currentInput.value.length - 1);
    } else {
      currentInput.value = '0';
      isNewInput = true;
    }
  }

  // Check if the button pressed is an operator
  bool isOperator(String value) {
    return value == '+' || value == '-' || value == '×' || value == '÷' || value == '%';
  }
}
