class shoppingcart {
  Map<String, int> items = {};

  // Method to add items to the cart
  void addItem(String itemName, int quantity) {
    if (items.containsKey(itemName)) {
      items[itemName] = (items[itemName] ?? 0) + quantity; 
    } else {
      items[itemName] = quantity;
    }
  }

 
  void removeItem(String itemName) {
    items.remove(itemName);
  }

 
  double calculateTotalPrice(Map<String, double> itemPrices) {
    double totalPrice = 0;
    items.forEach((itemName, quantity) {
      totalPrice += itemPrices[itemName]! * quantity;
    });
    return totalPrice;
  }

  // Method to apply discounts based on the quantity and type of items
  double applyDiscounts(double totalPrice, Map<String, double> itemDiscounts) {
    items.forEach((itemName, quantity) {
      if (itemDiscounts.containsKey(itemName)) {
        double discount = itemDiscounts[itemName]!;
        totalPrice -= (discount * quantity);
      }
    });
    return totalPrice;
  }
}

void main() {
  // Sample usage
  shoppingcart cart = shoppingcart();

  // Adding items to the cart
  cart.addItem("Laptop", 1);
  cart.addItem("Headphones", 2);
  cart.addItem("Phone", 1);

  // Removing an item from the cart
  cart.removeItem("Headphones");

  // Sample prices of items
  Map<String, double> itemPrices = {
    "Laptop": 60000,
    "Headphones": 3000,
    "Phone": 50000,
  };

  // Sample discounts on items
  Map<String, double> itemDiscounts = {
    "Laptop": 2000,
    "Phone": 1000,
  };

  // Calculating total price before discounts
  double totalPriceBeforeDiscounts = cart.calculateTotalPrice(itemPrices);
  print("Total price before discounts: \₹${totalPriceBeforeDiscounts.toStringAsFixed(2)}");

  // Applying discounts
  double totalPriceAfterDiscounts = cart.applyDiscounts(totalPriceBeforeDiscounts, itemDiscounts);
  print("Total price after discounts: \₹${totalPriceAfterDiscounts.toStringAsFixed(2)}");
}
