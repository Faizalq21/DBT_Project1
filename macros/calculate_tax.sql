{%macro  calculate_tax(amt_col,tax_percent=12) %}
  round({{amt_col}}+ {{amt_col}} *{{tax_percent}} /100)
{%endmacro%}