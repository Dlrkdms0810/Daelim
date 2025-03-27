package com.example.class0312

class Rectangle(val width: Double, val height: Double) {
    fun area(): Double {
        return width * height
    }
    fun isSquare(): Boolean {
        return width == height
    }
}

fun main() {
    val rectangle1 = Rectangle(5.0, 4.0)
    println("네모1 크기: ${rectangle1.area()}, 정사각형인가요?: ${rectangle1.isSquare()}")

    val rectangle2 = Rectangle(4.0, 4.0)
    println("네모2 크기: ${rectangle2.area()}, 정사각형인가요?: ${rectangle2.isSquare()}")
}