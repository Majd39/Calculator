class SimpleMathOperations {
  double? firstOperand;
  double? secondOperand;
  String operator = '';

  // Method to set the first operand
  void setFirstOperand(double operand) {
    firstOperand = operand;
    print("First Operand: $firstOperand");
  }

  // Method to set the second operand
  void setSecondOperand(double operand) {
    secondOperand = operand;
    print("Second Operand: $secondOperand");
  }

  // Method to set the operator
  void setOperator(String op) {
    operator = op;
    print("Operator: $operator");
  }

  // Perform calculation based on the operator
  double calculate() {
    double result = 0;

    if (firstOperand == null || secondOperand == null) {
      throw Exception('Both operands must be set before performing a calculation.');
    }

    switch (operator) {
      case '+':
        result = firstOperand! + secondOperand!;
        break;
      case '-':
        result = firstOperand! - secondOperand!;
        break;
      case '×':
        result = firstOperand! * secondOperand!;
        break;
      case '÷':
        if (secondOperand != 0) {
          result = firstOperand! / secondOperand!;
        } else {
          throw Exception('Cannot divide by zero.');
        }
        break;
      case '%':
        result = firstOperand! % secondOperand!;
        break;
      default:
        throw Exception('Invalid operator. Please use +, -, ×, ÷, or %.');
    }

    print("Result: $result");
    return result;
  }

  // Clear the values for a new calculation
  void clear() {
    firstOperand = null;
    secondOperand = null;
    operator = '';
    print("Cleared all values.");
  }
}

void main() {
  // Create an instance of the class
  SimpleMathOperations math = SimpleMathOperations();

  // Example use case: 5 + 3
  math.setFirstOperand(5);
  math.setOperator('+');
  math.setSecondOperand(3);
  math.calculate();  // Output: 8

  // Another example: 10 × 4
  math.clear();
  math.setFirstOperand(10);
  math.setOperator('×');
  math.setSecondOperand(4);
  math.calculate();  // Output: 40

  // Example of division with error handling for zero
  math.clear();
  math.setFirstOperand(10);
  math.setOperator('÷');
  math.setSecondOperand(0);
  try {
    math.calculate();  // This will throw an exception because of division by zero
  } catch (e) {
    print(e);  // Output: Cannot divide by zero.
  }
}
