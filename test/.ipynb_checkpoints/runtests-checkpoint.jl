using DualNumbers
using Test

x = Dual(1, 2)
y = Dual(2, 3)

@test  +x == x
@test  -x == Dual(-1,-2)

@test x + y == Dual(3,5)
@test x - y == Dual(-1,-1)

@test 4 * x == Dual(4,8)
@test y * 5 == Dual(10,15)

@test conj(x) == Dual(1,-2)
@test inv(y) == Dual(1/2, -3/4)
@test x/y == Dual(1/2, 1/4)
