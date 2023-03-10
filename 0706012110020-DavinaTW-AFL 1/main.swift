//
//  main.swift
//  0706012110020-DavinaTW-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation



var mainScreen: String = ""
var ordersTuku2: [String:String] = [:]
var ordersGotri: [String:String] = [:]
var ordersMadamLie: [String:String] = [:]
var ordersKopte: [String:String] = [:]
var total: Int = 0

var cafeteriaChoosen: [String : String] = [:]

mainDisplay()

//main screen
//repeat{
func mainDisplay(){
    var cafeteriaInput: String = ""
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
    
    switch cafeteriaInput {
    case "1":
        print("Choosing Tuku-Tuku...")
        cafeteriaChoosen["1"] = "Tuku-tuku"
        inCafeteria(nameCafeteria: "Tuku-tuku")
        
    case "2":
        //    cafeteriaInput.append("Gotri")
        print("Choosing Gotri...")
        cafeteriaChoosen["2"] = "Gotri"
        inCafeteria(nameCafeteria: "Gotri")
    case "3":
//        cafeteriaInput.append("Madam Lie")
        print("Choosing Madam Lie...")
        cafeteriaChoosen["3"] = "Madam Lie"
        inCafeteria(nameCafeteria: "Madam Lie")
        //cafeteria screen (madam lie)
//        var choiceMenuMadamLie: String = ""
//        print("""
//                    Hi, welcome back to Madam Lie!
//                    What would you like to order?
//
//
//                    -
//                    [B]ack to Main Menu
//                    Your menu choice? \(choiceMenuMadamLie)
//                    """)
//        choiceMenuMadamLie = readLine()!
    case "4":
//        cafeteriaInput.append("Kopte")
        //cafeteria screen (Kopte)
        cafeteriaChoosen["2"] = "Kopte"
        inCafeteria(nameCafeteria: "Kopte")
//        var choiceMenuKopte: String = ""
//        print("""
//                    Hi, welcome back to Kopte!
//                    What would you like to order?
//
//                    [1] Teh Tarik Kopte
//                    [2] Coklat Tarik
//                    [3] Teh Kundur
//                    [4] Teh Jeruk Nipis
//                    [5] Milo Dinosaur
//                    -
//                    [B]ack to Main Menu
//                    Your menu choice? \(choiceMenuKopte)
//                    """)
//        choiceMenuKopte = readLine()!
    case "s", "S":
        print("Here's your shopping cartnya :)")
        if cafeteriaChoosen.isEmpty{
            shoppingcart(cafeteriaChoosen: [:])
        }else{
            print(cafeteriaChoosen)
            
            shoppingcart(cafeteriaChoosen: cafeteriaChoosen)
//            for (numberCafeteria, cafeteriaName) in cafeteriaChoosen{
//                shoppingcart(cafeteriaChoosen: [numberCafeteria : cafeteriaName])
//                print("this is \(shoppingcart(cafeteriaChoosen: [numberCafeteria : cafeteriaName]))")
//            }
            
        }

    case "q","Q":
        print("See u next time! :)")
        break
    default:
        print("Please Input from the option bellow")
        mainDisplay()
    }
}


func inCafeteria(nameCafeteria:String){
    print("""
                Hi, welcome back to \(nameCafeteria)!
                What would you like to order?
            
            """)
    if nameCafeteria == "Tuku-tuku"{
        //        for (noMenu, nameMenu) in menuTuku2{
        //            print("[\(noMenu)] \(nameMenu)")
        //        }
        var choiceMenuTuku2: String = ""
//        var ordersTuku2 : [String: String] = [:]
        print("""
            [1] Tahu Isi
            [2] Nasi Kuning
            [3] Nasi Campur
            [4] Air Mineral
            -
            [B]ack to Main Menu
            Your menu choice? \(choiceMenuTuku2)
        """)
        choiceMenuTuku2 = readLine()!
        switch choiceMenuTuku2{
        case "1":
            //        var menu = "Tahu Isi"
            orderInTuku2(menu:"Tahu Isi")
        case "2":
            orderInTuku2(menu: "Nasi Kuning")
        case "3":
            orderInTuku2(menu: "Nasi Campur")
        case "4":
            orderInTuku2(menu: "Air Mineral")
        case "b","B":
            mainDisplay()
        default:
            inCafeteria(nameCafeteria: "Tuku-tuku")
        }
    }
    if nameCafeteria == "Gotri"{
        var choiceMenuGotri: String = ""
        
        print("""
            [1] Nasi Bakar
            [2] Nasi Goreng
            [3] Mie Goreng
            [4] Tamie Goreng
            [5] Milkshake
            [6] Tahu Berintik
            -
            [B]ack to Main Menu
            Your menu choice? \(choiceMenuGotri)
        """)
        choiceMenuGotri = readLine()!
        switch choiceMenuGotri{
        case "1":
            orderInGotri(menu:"Nasi Bakar")
        case "2":
            orderInGotri(menu: "Nasi Goreng")
        case "3":
            orderInGotri(menu: "Mie Goreng")
        case "4":
            orderInGotri(menu: "Tamie Goreng")
        case "5":
            orderInGotri(menu: "Milkshake")
        case "6":
            orderInGotri(menu: "Air Mineral")
        case "b","B":
            mainDisplay()
        default:
            inCafeteria(nameCafeteria: "Gotri")
        }
    }
    if nameCafeteria == "Madam Lie"{
        var choiceMenuMadamLie: String = ""
        
        print("""
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
        switch choiceMenuMadamLie{
        case "1":
            orderInMadamLie(menu:"Ayam Geprek Dada")
        case "2":
            orderInMadamLie(menu: "Ayam Geprek Paha")
        case "3":
            orderInMadamLie(menu: "Nasi Putih")
        case "4":
            orderInMadamLie(menu: "Teh Tawar")
        case "5":
            orderInMadamLie(menu: "Jeruk Manis")
        case "b","B":
            mainDisplay()
        default:
            inCafeteria(nameCafeteria: "Madam Lie")
        }
    }
    if nameCafeteria == "Kopte"{
        var choiceMenuKopte: String = ""
        
        print("""
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
        switch choiceMenuKopte{
        case "1":
            orderInKopte(menu:"Teh Tarik Kopte")
        case "2":
            orderInKopte(menu: "Coklat Tarik")
        case "3":
            orderInKopte(menu: "Teh Kundur")
        case "4":
            orderInKopte(menu: "Teh Jeruh Nipis")
        case "5":
            orderInKopte(menu: "Milo Dinosaur")
        case "b","B":
            mainDisplay()
        default:
            inCafeteria(nameCafeteria: "Kopte")
        }
    }

}

func orderInTuku2(menu: String){
    var priceTuku2 = ["Tahu Isi" : 5000,
                      "Nasi Kuning" : 15000,
                      "Nasi Campur" : 16000,
                      "Air Mineral" : 3000]

    var amountBuyString: String = ""
    
    for (name, price) in priceTuku2{
        if menu == name{
            print("\(name) @ \(price)")
        }
    }
    
    print("How many \(menu) do you want to buy? \(amountBuyString)")

    amountBuyString = readLine()!
    ordersTuku2[menu] = amountBuyString
    print("Thank you for ordering.")
    print(ordersTuku2)
    
    if(amountBuyString == ""){
        
    }
    
    var amountBuyInt = Int(amountBuyString) ?? 0

    for (name, price) in priceTuku2{
        if menu == name{
            total += price * amountBuyInt
//            print(total)
        }
    }
//    var totalan = Int(amountBuyInt * priceTuku2.index(menu))
//    print(totalan)
    mainDisplay()
}

func orderInGotri(menu: String){
    var priceGotri = ["Nasi Bakar": 13000,
                      "Nasi Goreng":13500,
                      "Mie Goreng":14000,
                      "Tamie Goreng":15000,
                      "Milkshake": 10000,
                      "Tahu Berintik":9000]

    var amountBuyString: String = ""
    
    for (name, price) in priceGotri{
        if menu == name{
            print("\(name) @ \(price)")
        }
    }
    print("How many \(menu) do you want to buy? \(amountBuyString)")

    amountBuyString = readLine()!
    ordersGotri[menu] = amountBuyString
    print("Thank you for ordering.")
    print(ordersGotri)
    var amountBuyInt = Int(amountBuyString) ?? 0

    for (name, price) in priceGotri{
        if menu == name{
            total += price * amountBuyInt
//            print(total)
        }
    }
    
    mainDisplay()
}

func orderInMadamLie(menu: String){
    var priceMadamLie = ["Ayam Geprek Dada": 11000,
                         "Ayam Geprek Paha": 11000,
                         "Nasi Putih": 6000,
                         "Teh Tawar": 5000,
                         "Jeruk Manis": 5500]

    var amountBuyString: String = ""
    
    for (name, price) in priceMadamLie{
        if menu == name{
            print("\(name) @ \(price)")
        }
    }
    print("How many \(menu) do you want to buy? \(amountBuyString)")

    amountBuyString = readLine()!
    ordersMadamLie[menu] = amountBuyString
    print("Thank you for ordering.")
    print(ordersMadamLie)
    var amountBuyInt = Int(amountBuyString) ?? 0

    for (name, price) in priceMadamLie{
        if menu == name{
            total += price * amountBuyInt
//            print(total)
        }
    }
    mainDisplay()
//    var totalan = Int(amountBuyInt * priceTuku2.index(menu))
//    print(totalan)
}

func orderInKopte(menu: String){
    var priceKopte = ["Teh Tarik Kopte": 15000,
                      "Coklat Tarik": 12000,
                      "Teh Kundur": 13000,
                      "Teh Jeruk Nipis":12500,
                      "Milo Dinosaur":14000]

    var amountBuyString: String = ""
    
    for (name, price) in priceKopte{
        if menu == name{
            print("\(name) @ \(price)")
        }
    }
    print("How many \(menu) do you want to buy? \(amountBuyString)")

    amountBuyString = readLine()!
    ordersKopte[menu] = amountBuyString
    print("Thank you for ordering.")
    print(ordersKopte)
    var amountBuyInt = Int(amountBuyString) ?? 0

    for (name, price) in priceKopte{
        if menu == name{
            total += price * amountBuyInt
//            print(total)
        }
    }
    mainDisplay()
}


//order screen (jgn lupa yg menu cafeteria)
var a: String = ""
a = readLine()!
var amountButInt = Int(a)
var menu: String = "Nasi Kuning"
var priceMenu: Int = 20000
//print("""
//      \(menu) @ \(priceMenu)
//      How many \(menu) do you want to buy? \(amountBuyString)
//      """)
//print("Thank you for ordering.")

func shoppingcart(cafeteriaChoosen: [String : String]){
    //shopping cart screen
    var choiceShopCart: String = ""
    if cafeteriaChoosen.isEmpty{
        print("Your cart is empty. :(")
        mainDisplay()
    }else{
        print(cafeteriaChoosen)
        for cafeteriaName in cafeteriaChoosen.values{
            print("\(cafeteriaName) tess")
//            if(cafeteriaName == "Tuku-tuku" || cafeteriaName == "Gotri" || cafeteriaName == "Madam Lie" || cafeteriaName == "Kopte"){
////                print("Your order from \(cafeteriaName) :")
//                for (nama, jumlah) in ordersTuku2{
//                    print("Your order from \(cafeteriaName) :")
//                    print("- \(nama) x \(jumlah)")
//                }
//                for (nama, jumlah) in ordersGotri{
//                    print("Your order from \(cafeteriaName) :")
//                    print("- \(nama) x \(jumlah)")
//                }
//                for (nama, jumlah) in ordersMadamLie{
//                    print("Your order from \(cafeteriaName) :")
//                    print("- \(nama) x \(jumlah)")
//                }
//                for (nama, jumlah) in ordersKopte{
//                    print("Your order from \(cafeteriaName) :")
//                    print("- \(nama) x \(jumlah)")
//                }
//            }
            if(cafeteriaName == "Tuku-tuku"){
                print("Your order from \(cafeteriaName) :")
                for (nama, jumlah) in ordersTuku2{
                    print("- \(nama) x \(jumlah)")
                }
            }
            if(cafeteriaName == "Gotri"){
                print("Your order from \(cafeteriaName) :")
                for (nama, jumlah) in ordersGotri{
                    print("- \(nama) x \(jumlah)")
                }
            }
            if(cafeteriaName == "Madam Lie"){
                print("Your order from \(cafeteriaName) :")
                for (nama, jumlah) in ordersMadamLie{
                    print("- \(nama) x \(jumlah)")
                }
            }
            if(cafeteriaName == "Kopte"){
                print("Your order from \(cafeteriaName) :")
                for (nama, jumlah) in ordersKopte{
                    print("- \(nama) x \(jumlah)")
                }
            }
        }
        print("""
                
                Press [B] to go back
                Press [P] to pay / checkout
                Your choice? \(choiceShopCart)
                """)
        choiceShopCart = readLine()!
        switch(choiceShopCart){
        case "b","B":
            print("back to the main menu ..")
            mainDisplay()
        case "p","P":
            checkout()
        default:
            print("Input the corect option")
        }
    }

}

func checkout(){
    //chekout screen
    
    var pay:String = ""
    var payInt = Int(pay) ?? 0
    
    repeat{
    
        print("""
            Your total order: \(total)
            Enter the amount of your money: \(pay)
            """)
        pay = readLine()!
        if(total <= payInt){
            print("You pay: \(pay) Change: \(payInt - total)")
        }else{
            print("Please enter your money")
        }
    }while total >= payInt
}

