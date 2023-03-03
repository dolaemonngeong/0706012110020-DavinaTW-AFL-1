//
//  main.swift
//  0706012110020-DavinaTW-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var cafeteriaInput: String = ""

var mainScreen: String = ""

//main screen
//repeat{
    print("""
    Welcome to UC-Walk Cafeteria
    Please choose cafeteria:
    
    [1] Tuku-Tuku
    [2] Gotri
    [3] Madam Lie
    [4] Kopte
    
    [S]hopping Cart
    [Q]uit
    """)

    print("Your cafeteria choice? \(cafeteriaInput)")

    cafeteriaInput = readLine()!
    var cafeteriaList: Any = []

switch cafeteriaInput {
case "1":
    cafeteriaInput.append("Tuku-Tuku")
    print("Choosing Tuku-Tuku...")
    //cafeteria screen (tuku")
    var choiceMenuTuku2: String = ""
    print("""
                Hi, welcome back to Tuku-Tuku!
                What would you like to order?
                        
                [1] Tahu Isi
                [2] Nasi Kuning
                [3] Nasi Campur
                [4] Air Mineral
                -
                [B]ack to Main Menu
                Your menu choice? \(choiceMenuTuku2)
            """)
    choiceMenuTuku2 = readLine()!
case "2":
    cafeteriaInput.append("Gotri")
    print("Choosing Gotri...")
    //cafeteria screen (gotri)
    var inputMenuGotri: String = ""
    print("""
              Hi, welcome back to Gotri!
              What would you like to order?
              
              [1] Nasi Bakar
              [2] Nasi Goreng
              [3] Mie Goreng
              [4] Tamie Goreng
              [5] Milkshake
              [6] Tahu Berintik
              -
              [B]ack to Main Menu
              Your menu choice? \(inputMenuGotri)
              """)
    inputMenuGotri = readLine()!
case "3":
    cafeteriaInput.append("Madam Lie")
    print("Choosing Madam Lie...")
    //cafeteria screen (madam lie)
    var choiceMenuMadamLie: String = ""
    print("""
                Hi, welcome back to Madam Lie!
                What would you like to order?
                      
                [1] Ayam Geprek Dada
                [2] Ayam Geprek Paha
                [3] Nasi Putih
                [4] Teh Tawar
                [5] Jeruk Manis
                -
                [B]ack to Main Menu
                Your menu choice? \(choiceMenuMadamLie)
                """)
    choiceMenuMadamLie = readLine()!
case "4":
    cafeteriaInput.append("Kopte")
    //cafeteria screen (Kopte)
    var choiceMenuKopte: String = ""
    print("""
                Hi, welcome back to Kopte!
                What would you like to order?
                      
                [1] Teh Tarik Kopte
                [2] Coklat Tarik
                [3] Teh Kundur
                [4] Teh Jeruk Nipis
                [5] Milo Dinosaur
                -
                [B]ack to Main Menu
                Your menu choice? \(choiceMenuKopte)
                """)
    choiceMenuKopte = readLine()!
case "s", "S":
    print("Here's your shopping cartnya :)")
    shoppingcart()
case "q","Q":
    break
default:
    print("Please Input from the option bellow")
}
//    }while cafeteriaInput.isEmpty || cafeteriaInput != "1" || cafeteriaInput != "2" || cafeteriaInput != "3" || cafeteriaInput != "4" || cafeteriaInput != "s" || cafeteriaInput != "S" || cafeteriaInput != "q" || cafeteriaInput != "Q"



//order screen (jgn lupa yg menu cafeteria)
var amountBuyString: String = ""
amountBuyString = readLine()!
let amountButInt = Int(amountBuyString)
var menu: String = "Nasi Kuning"
var priceMenu: Int = 20000
print("""
      \(menu) @ \(priceMenu)
      How many \(menu) do you want to buy? \(amountBuyString)
      """)
print("Thank you for ordering.")

func shoppingcart(){
    //shopping cart screen
    var choiceShopCart: String = ""
    print("Your cart is empty.")
    print("""
            Your order from ?Kopte?:
            - ?Kopi Tarik? x?3?
            Your order from ?Madam Lie?:
            - ?Jus Alpukat? x?2?
            
            Press [B] to go back
            Press [P] to pay / checkout
            Your choice? \(choiceShopCart)
            """)
    choiceShopCart = readLine()!
    switch(choiceShopCart){
    case "b","B":
        print("kembali ke halaman ..")
    case "p","P":
        checkout()
    default:
        print("Input the corect option")
    }
}

func checkout(){
    //chekout screen
    //repeat{
    var pay:String = ""
    pay = readLine()!
    var payInt = Int(pay)
    var totalOrder: Int = 0
    print("""
        Your total order: \(totalOrder)
        Enter the amount of your money: \(pay)
        """)
//    if(totalOrder < payInt){
//        print("You pay: \(pay) Change: \(payInt - totalOrder)")
//    }else{
        print("Please enter your money")
//    }
    //}while totalOrder > pay
}

