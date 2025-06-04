#logical:
#TRUE
#FALSE


4 < 5
10 > 100
4 == 5
# ==
# !=
# <
# >
# <=
# >=
# !
# |
# &
# isTRUE()

# || will work but has a completely different meaning

result <- 4 < 5
result
typeof(result)

result2 <- !(5 > 2)

result | result2
result & result2

isTRUE(result)
