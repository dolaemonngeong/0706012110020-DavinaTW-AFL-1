//
//  Cart.swift
//  0706012110020-DavinaTW-AFL 1
//
//  Created by MacBook Pro on 01/04/23.
//

import Foundation

public class Cart{
    var itemList = Array<Item>()
    var total:Int = 0
    
    func show(){
        var choiceShopCart: String = ""
        
        // cek jika user belum pesan di sebuah cafeteria dari dictionary cafeteriaChoosen yang berisi angka & nama cafeteria
        if itemList.isEmpty{
            print("Your cart is empty. :(")
            //memanggil fungsi untuk menampilkan halaman utama
//            mainDisplay()
        }else{

            // pengulangan jika user salah memasukkan input yang disediakan
            repeat {
                
                //loop untuk menampilkan pesanan user dari dictionary cafeteriaChoosen
                for i in itemList{
                    if(itemList.isEmpty){
                        print("Sorry it's empty")
                    }else{
                        print("Your order from \(i.nameCafeteria) :")
                        print("- \(i.nameMenu) x\(i.amountInt)")
                    }
                    // cek jika user memesan di Tuku-tuku, maka tampilkan nama cefeterianya (Tuku-tuku), serta nama menu & jumlah yang dipesan di Tuku-Tuku
//                    if(cafeteriaName == "Tuku-tuku"){
//                        print("Your order from \(cafeteriaName) :")
//                        for (nama, jumlah) in ordersTuku2{
//                            print("- \(nama) x \(jumlah)")
//                        }
//                    }
                    
                    
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
                    
                    //memanggil fungsi untuk menampilkan halaman utama
                    mainDisplay()
                    
                case "p","P":
                    falseInput = 0
                    checkOut()
                    
                default:
                    print("Input the corect option!")
                    falseInput += 1
                }
                
            }while falseInput > 0
            
        }
    }
    
    func calculateOrder(nameOfMenu: String, price:String, nameOfCafeteria: String){
//        var itemList = Array<Item>()
//        var menuList = Array<Menu>()
        var num: Int?
        
        // pengulangan jika user tidak memasukkan angka
        while num == nil {
            
            print("How many \(nameOfMenu) do you want to buy?")
            
            if let amountMenuString = readLine(), let amountMenuInt = Int(amountMenuString) {
                num = amountMenuInt
                
                for i in itemList{
                    if(i.nameMenu == nameOfMenu){
                        i.amountInt += amountMenuInt
                    }else{
                        i.amountInt = amountMenuInt
                        i.nameMenu = nameOfMenu
                        i.nameCafeteria = nameOfCafeteria
                        i.item_id += 1
                        itemList.append(i)
                    }
                }
                
                //jika user memilih Tuku-tuku
//                if nameCafeteria == "Tuku-tuku"{
//                    //jika user sudah memesan menu sebelumnya, maka tambahkan jumlahnya. jika belum, masukkan jumlahnya
//                    if ordersTuku2[menu] != nil{
//                        ordersTuku2[menu]! += amountMenuInt
//                    }else{
//                        ordersTuku2[menu] = amountMenuInt
//                    }
//
//                }else if nameCafeteria == "Madam Lie"{
//                    //jika user sudah memesan menu sebelumnya, maka tambahkan jumlahnya. jika belum, masukkan jumlahnya
//                    if ordersMadamLie[menu] != nil{
//                        ordersMadamLie[menu]! += amountMenuInt
//                    }else{
//                        ordersMadamLie[menu] = amountMenuInt
//                    }
//                }
                
                // loop untuk total seluruh pesanan user
//                for (name, price) in priceMenuCafeteria{
//                    if menu == name{
                total += Int(price)! * amountMenuInt
//                    }
//                }
                
                print("Thank you for ordering. :)")
                print("")
                
                //memanggil fungsi inCafeteria untuk menampilkan menu cafeteria yang sudah dipilih sebelumnya
                cafeteria.inCafeteria(nameCafeteria: nameOfCafeteria)
            } else {
                print("Invalid input. Please enter a number!")
                print("")
            }
        }
        
    }
    
    func checkOut(){
        var pay:String = ""
        var payInt:Int = 0
        
        //tampilan pengulangan jika user tidak memasukkan jumlah uang yang diinginkan
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
        
        //tampilan jumlah yang dibayar dan kembaliannya dengan perulangan jika user tidak memasukkan y atau Y
        repeat{
            print("""
                    You pay: \(pay) Change: \(payInt - total)
                    
                    Enjoy your meals!
                      
                    Press [y] to go back to main screen:
                """)
            
            let backMainScreen: String = readLine()!
            
            if(backMainScreen == "y" || backMainScreen == "Y"){
                falseInput = 0
                
                //memanggil fungsi untuk menampilkan halaman utama
                mainDisplay()
            }else{
                falseInput += 1
                print("Your input is invalid")
            }
        }while falseInput > 0
    }
}
