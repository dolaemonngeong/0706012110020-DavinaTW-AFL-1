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
            mainDisplay()
        }else{
            print(itemList)

            // pengulangan jika user salah memasukkan input yang disediakan
            repeat {
                
                //loop untuk menampilkan pesanan user dari dictionary cafeteriaChoosen
                // Group the items by cafeteria
                let groupedItems = Dictionary(grouping: itemList, by: { $0.nameCafeteria })

                // Print the order details for each group
                for (cafeteria, items) in groupedItems {
                    print("Your order from \(cafeteria):")
                    for item in items {
                        print("- \(item.nameMenu) x\(item.amountInt)")
                    }
                }

//                var sameName = false
                
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
                
                if(itemList.isEmpty == false){
                    var foundItem = false
                    for i in itemList where i.nameMenu == nameOfMenu && i.nameCafeteria == nameOfCafeteria{
                            foundItem = true
                            print("update begin")
                            i.amountInt += amountMenuInt
                            print("update finish")
                    }
                    if(foundItem ==  false){
                        addItem(amountMenuInt: amountMenuInt, nameOfMenu: nameOfMenu, nameOfCafeteria: nameOfCafeteria)
                    }

                }else{
                    print("1st new")
                    addItem(amountMenuInt: amountMenuInt, nameOfMenu: nameOfMenu, nameOfCafeteria: nameOfCafeteria)
                }
                
                total += Int(price)! * amountMenuInt
                
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
    
    func addItem(amountMenuInt: Int, nameOfMenu: String, nameOfCafeteria: String){
//        print("new item begin")
        let newItem = Item()
        newItem.amountInt = amountMenuInt
        newItem.nameMenu = nameOfMenu
        newItem.nameCafeteria = nameOfCafeteria
        newItem.item_id += 1
        itemList.append(newItem)
        print(itemList.description)
//        print("new item finish \(newItem.nameMenu)")
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
