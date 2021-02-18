function ScoresInput () {

  const MonthlyIncome = document.getElementById('monthly-income-score')
  const Expense = document.getElementById('expense-score')
  const ScoreMonth = document.getElementById('month-score')

  Expense.addEventListener('keyup', function(){
    const MonthExpense = document.getElementById("expense-score").value;
    const result = document.getElementById('month-score')
    result = (`MonthlyIncome - MonthExpense`)
    result.innerHTML = ScoreMonth
  })
};
window.addEventListener('load', ScoresInput)