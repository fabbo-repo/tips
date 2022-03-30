# Operador ==
Write-Host (2 -eq 2) 
# True

# Operador !=
Write-Host (2 -ne 2)
# False

# Operador >
Write-Host (5 -gt 2)
# True

# Operador >=
Write-Host (5 -ge 5)
# True

# Operador <
Write-Host (5 -lt 5)
# False

# Operador <=
Write-Host (5 -le 5)
# True
Write-Host
Write-Host

# Con strings:
"String" -like "*ring"
# True
"String" -like "S*"
# True
"String" -like "*tr*"
# True
"String" -like "String"
# True
"String" -notlike "String"
# False
Write-Host
Write-Host

# Expresiones regulares:
"MyString" -match "$String^"
# True
"String" -notmatch "$Other^"
# False
Write-Host
Write-Host

# Para arrays:
1,2,3 -contains 1
# True
1,2,3 -notcontains 4
# True