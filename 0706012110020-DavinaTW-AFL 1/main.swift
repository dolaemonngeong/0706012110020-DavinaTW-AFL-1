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
var falseInput:Int = 0

var cafeteriaChoosen: [String : String] = [:]

var cafeteriaInput: String = ""

mainDisplay()

func mainDisplay(){

    
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
    
    print("Your cafeteria choice?")
    
    cafeteriaInput = readLine()!
    
    switch cafeteriaInput {
        
    case "1":
        print("Choosing Tuku-Tuku...")
        inCafeteria(nameCafeteria: "Tuku-tuku")
        
    case "2":
        print("Choosing Gotri...")
        inCafeteria(nameCafeteria: "Gotri")
        
    case "3":
        print("Choosing Madam Lie...")
        inCafeteria(nameCafeteria: "Madam Lie")
        
    case "4":
        inCafeteria(nameCafeteria: "Kopte")
        
    case "s", "S":
        print("Here's your shopping cart :)")
        if cafeteriaChoosen.isEmpty{
            shoppingcart(cafeteriaChoosen: [:])
        }else{
//            print(cafeteriaChoosen)
            shoppingcart(cafeteriaChoosen: cafeteriaChoosen)
        }

    case "q","Q":
        print("See u next time! :)")
        exit(0)
    default:
        print("""
            Please Input from the option bellow!
        """)
        mainDisplay()
    }
    
}


func inCafeteria(nameCafeteria:String){
    repeat{
        print("""
                Hi, welcome back to \(nameCafeteria)!
                What would you like to order?
            """)
        
        if nameCafeteria == "Tuku-tuku"{
            var choiceMenuTuku2: String = ""
            
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
                falseInput = 0
                cafeteriaChoosen["1"] = "Tuku-tuku"
                orderMenu(menu: "Tahu Isi", nameCafeteria: "Tuku-tuku")
    //            orderInTuku2(menu:"Tahu Isi")
            case "2":
                falseInput = 0
                cafeteriaChoosen["1"] = "Tuku-tuku"
                orderMenu(menu: "Nasi Kuning", nameCafeteria: "Tuku-tuku")
    //            orderInTuku2(menu: "Nasi Kuning")
            case "3":
                falseInput = 0
                cafeteriaChoosen["1"] = "Tuku-tuku"
                orderMenu(menu: "Nasi Campur", nameCafeteria: "Tuku-tuku")
    //            orderInTuku2(menu: "Nasi Campur")
            case "4":
                falseInput = 0
                cafeteriaChoosen["1"] = "Tuku-tuku"
                orderMenu(menu: "Air Mineral", nameCafeteria: "Tuku-tuku")
    //            orderInTuku2(menu: "Air Mineral")
            case "b","B":
                falseInput = 0
                mainDisplay()
            default:
                falseInput += 1
//                inCafeteria(nameCafeteria: "Tuku-tuku")
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
                falseInput = 0
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Nasi Bakar", nameCafeteria: "Gotri")
                
            case "2":
                falseInput = 0
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Nasi Goreng", nameCafeteria: "Gotri")
                
            case "3":
                falseInput = 0
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Mie Goreng", nameCafeteria: "Gotri")
                
            case "4":
                falseInput = 0
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Tamie Goreng", nameCafeteria: "Gotri")
                
            case "5":
                falseInput = 0
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Milkshake", nameCafeteria: "Gotri")
                
            case "6":
                falseInput = 0
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Tahu Berintik", nameCafeteria: "Gotri")
                
            case "b","B":
                falseInput = 0
                mainDisplay()
                
            default:
                falseInput += 1
//                inCafeteria(nameCafeteria: "Gotri")
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
                falseInput = 0
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Ayam Geprek Dada", nameCafeteria: "Madam Lie")
                
            case "2":
                falseInput = 0
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Ayam Geprek Paha", nameCafeteria: "Madam Lie")
                
            case "3":
                falseInput = 0
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Nasi Putih", nameCafeteria: "Madam Lie")
                
            case "4":
                falseInput = 0
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Teh Tawar", nameCafeteria: "Madam Lie")
                
            case "5":
                falseInput = 0
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Jeruk Manis", nameCafeteria: "Madam Lie")
                
            case "b","B":
                falseInput = 0
                mainDisplay()
                
            default:
                falseInput += 1
//                inCafeteria(nameCafeteria: "Madam Lie")
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
                falseInput = 0
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Teh Tarik Kopte", nameCafeteria: "Kopte")
                
            case "2":
                falseInput = 0
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Coklat Tarik", nameCafeteria: "Kopte")
                
            case "3":
                falseInput = 0
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Teh Kundur", nameCafeteria: "Kopte")
                
            case "4":
                falseInput = 0
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Teh Jeruk Nipis", nameCafeteria: "Kopte")
                
            case "5":
                falseInput = 0
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Milo Dinosaur", nameCafeteria: "Kopte")
                
            case "b","B":
                falseInput = 0
                mainDisplay()
            default:
                falseInput += 1
//                inCafeteria(nameCafeteria: "Kopte")
            }
        }
    }while falseInput > 0
    

}

func orderMenu(menu: String, nameCafeteria: String){
    let priceTuku2 = ["Tahu Isi" : 5_000,
                      "Nasi Kuning" : 15_000,
                      "Nasi Campur" : 16_000,
                      "Air Mineral" : 3_000]

    let priceMadamLie = ["Ayam Geprek Dada": 11_000,
                         "Ayam Geprek Paha": 11_000,
                         "Nasi Putih": 6_000,
                         "Teh Tawar": 5_000,
                         "Jeruk Manis": 5_500]

    let priceGotri = ["Nasi Bakar": 13_000,
                      "Nasi Goreng":13_500,
                      "Mie Goreng":14_000,
                      "Tamie Goreng":15_000,
                      "Milkshake": 10_000,
                      "Tahu Berintik":9_000]

    let priceKopte = ["Teh Tarik Kopte": 15000,
                      "Coklat Tarik": 12000,
                      "Teh Kundur": 13000,
                      "Teh Jeruk Nipis":12500,
                      "Milo Dinosaur":14000]
    
    if nameCafeteria == "Tuku-tuku"{
        for (name, price) in priceTuku2{
            if menu == name{
                print("\(name) @ \(price)")
                calculateOrder(menu: menu, priceMenuCafeteria: priceTuku2, nameCafeteria: nameCafeteria)
            }
        }
    }else if nameCafeteria == "Madam Lie"{
        for (name, price) in priceMadamLie{
            if menu == name{
                print("\(name) @ \(price)")
                calculateOrder(menu: menu, priceMenuCafeteria: priceMadamLie, nameCafeteria: nameCafeteria)
            }
        }
    }else if nameCafeteria == "Gotri"{
        for (name, price) in priceGotri{
            if menu == name{
                print("\(name) @ \(price)")
                calculateOrder(menu: menu, priceMenuCafeteria: priceGotri, nameCafeteria: nameCafeteria)
            }
        }
    }else if nameCafeteria == "Kopte"{
        for (name, price) in priceKopte{
            if menu == name{
                print("\(name) @ \(price)")
                calculateOrder(menu: menu, priceMenuCafeteria: priceKopte, nameCafeteria: nameCafeteria)
            }
        }
    }
    
}

func calculateOrder(menu: String, priceMenuCafeteria: [String:Int], nameCafeteria: String){

    var num: Int?
    while num == nil {
        print("How many \(menu) do you want to buy?")
        if let amountMenuString = readLine(), let amountMenuInt = Int(amountMenuString) {
            num = amountMenuInt
            
            if nameCafeteria == "Tuku-tuku"{
                ordersTuku2[menu] = amountMenuString
            }else if nameCafeteria == "Madam Lie"{
                ordersMadamLie[menu] = amountMenuString
            }else if nameCafeteria == "Gotri"{
                ordersGotri[menu] = amountMenuString
            }else if nameCafeteria == "Kopte"{
                ordersKopte[menu] = amountMenuString
            }

//            print(ordersTuku2)
            for (name, price) in priceMenuCafeteria{
                if menu == name{
                    total += price * amountMenuInt
                }
            }
            
            print("Thank you for ordering. :)")
            print("")
            mainDisplay()
        } else {
            print("Invalid input. Please enter a number!")
            print("")
        }
    }
}


func shoppingcart(cafeteriaChoosen: [String : String]){
    //shopping cart screen
    var choiceShopCart: String = ""
    if cafeteriaChoosen.isEmpty{
        print("Your cart is empty. :(")
        mainDisplay()
    }else{

        repeat {
//            print(cafeteriaChoosen)
            for cafeteriaName in cafeteriaChoosen.values{
//                print("\(cafeteriaName) tess")
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
                falseInput = 0
                print("back to the main menu ..")
                mainDisplay()
            case "p","P":
                falseInput = 0
                checkout()
            default:
                print("Input the corect option!")
                falseInput += 1
            }
        }while falseInput > 0
        
    }

}

func checkout(){
    
    var pay:String = ""
    var payInt:Int = 0
    
    repeat{
    
        print("""
            Your total order: \(total)
            Enter the amount of your money:
            """)
        pay = readLine()!
        payInt = Int(pay) ?? 0
        
        if pay == ""{
            falseInput += 1
            print("Please enter your payment.")
        }else if pay == "0"{
            falseInput += 1
            print("Payment can't be zero.")
        }else if(total > payInt || payInt < 0){
            falseInput += 1
            print("Please enter a valid amount.")
        }else {
            falseInput = 0
        }
    }while falseInput > 0
    
    repeat{
        print("""
                You pay: \(pay) Change: \(payInt - total)
                
                Enjoy your meals!
                  
                Press [y] to go back to main screen:
            """)
        var backMainScreen: String = readLine()!
        
        if(backMainScreen == "y" || backMainScreen == "Y"){
            falseInput = 0
            mainDisplay()
        }else{
            falseInput += 1
            print("Your input is invalid")
        }
    }while falseInput > 0

    
}

