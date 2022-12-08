resource "aws_budgets_budget" "cost" {
  name         = "Monthly 100USD Budgets"
  budget_type  = "COST"
  limit_amount = "100"
  limit_unit   = "USD"
  time_unit    = "MONTHLY"
}
