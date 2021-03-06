function calc (){
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const taxPrice = Math.floor(inputValue * 0.1);
    const profitPrice = inputValue - taxPrice;
    const addTax = document.getElementById("add-tax-price");
    addTax.innerHTML = taxPrice;
    const profit = document.getElementById("profit")
    profit.innerHTML = profitPrice
  })
}
window.addEventListener("load", calc );