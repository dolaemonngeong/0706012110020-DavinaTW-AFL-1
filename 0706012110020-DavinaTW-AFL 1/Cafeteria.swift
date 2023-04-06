//
//  Cafeteria.swift
//  0706012110020-DavinaTW-AFL 1
//
//  Created by MacBook Pro on 01/04/23.
//

import Foundation

protocol Cafeteria{
    func insideTenant(nameCafeteria: String)
    func orderMenu(menu: String, nameCafeteria: String)
}

//struct ucWalk : Cafeteria{
//    var cafeteriaInput: String = ""
//    var nameCafeteria: String = ""
//    
//   
//    
//    func insideTenant(nameCafeteria:String){
//
//        // pengulangan jika user tidak memasukkan input sesuai opsi menu yang disediakan
//        repeat{
//            
//            print("""
//                    Hi, welcome back to \(nameCafeteria)!
//                    What would you like to order?
//                """)
//            
//            //jika user memilih Tuku-tuku
//            if nameCafeteria == "Tuku-tuku"{
//                var choiceMenuTuku2: String = ""
//                
//                print("""
//                    [1] Tahu Isi
//                    [2] Nasi Kuning
//                    [3] Nasi Campur
//                    [4] Air Mineral
//                    -
//                    [B]ack to Main Menu
//                    Your menu choice? \(choiceMenuTuku2)
//                """)
//                
//                choiceMenuTuku2 = readLine()!
//                
//                switch choiceMenuTuku2{
//                    
//                // jika memesan menu pertama (Tahu Isi)
//                case "1":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
////                    cafeteriaChoosen["1"] = "Tuku-tuku"
//                    orderMenu(menu: "Tahu Isi", nameCafeteria: "Tuku-tuku")
//                    
//                // jika memesan menu ke-2 (Nasi Kuning)
//                case "2":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Nasi Kuning", nameCafeteria: "Tuku-tuku")
//                    
//                // jika memesan menu ke-3 (Nasi Campur)
//                case "3":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Nasi Campur", nameCafeteria: "Tuku-tuku")
//                    
//                // jika memesan menu ke-4 (Air Mineral)
//                case "4":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Air Mineral", nameCafeteria: "Tuku-tuku")
//                    
//                case "b","B":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    mainDisplay()
//                    
//                default:
//                    // variabel falseInput ditambah 1 terus agar user memasukkan angka yang benar
//                    falseInput += 1
//                }
//                
//            }
//            
//            //jika user memilih Gotri
//            if nameCafeteria == "Gotri"{
//                
//                var choiceMenuGotri: String = ""
//                
//                print("""
//                    [1] Nasi Bakar
//                    [2] Nasi Goreng
//                    [3] Mie Goreng
//                    [4] Tamie Goreng
//                    [5] Milkshake
//                    [6] Tahu Berintik
//                    -
//                    [B]ack to Main Menu
//                    Your menu choice? \(choiceMenuGotri)
//                """)
//                
//                choiceMenuGotri = readLine()!
//                
//                switch choiceMenuGotri{
//                    
//                // jika memesan menu pertama (Nasi Bakar)
//                case "1":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Nasi Bakar", nameCafeteria: "Gotri")
//                    
//                // jika memesan menu ke-2 (Nasi Goreng)
//                case "2":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Nasi Goreng", nameCafeteria: "Gotri")
//                    
//                // jika memesan menu ke-3 (Mie Goreng)
//                case "3":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Mie Goreng", nameCafeteria: "Gotri")
//                    
//                // jika memesan menu ke-4 (Tamie Goreng)
//                case "4":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    orderMenu(menu: "Tamie Goreng", nameCafeteria: "Gotri")
//                    
//                // jika memesan menu ke-5 (Milkshake)
//                case "5":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Milkshake", nameCafeteria: "Gotri")
//                    
//                // jika memesan menu ke-6 (Tahu Berintik)
//                case "6":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Tahu Berintik", nameCafeteria: "Gotri")
//                    
//                case "b","B":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    mainDisplay()
//                    
//                default:
//                    // variabel falseInput ditambah 1 terus agar user memasukkan angka yang benar
//                    falseInput += 1
//                }
//            }
//            
//            // jika user memilih Madam Lie
//            if nameCafeteria == "Madam Lie"{
//                
//                var choiceMenuMadamLie: String = ""
//                
//                print("""
//                    [1] Ayam Geprek Dada
//                    [2] Ayam Geprek Paha
//                    [3] Nasi Putih
//                    [4] Teh Tawar
//                    [5] Jeruk Manis
//                    -
//                    [B]ack to Main Menu
//                    Your menu choice? \(choiceMenuMadamLie)
//                """)
//                
//                //am
//                choiceMenuMadamLie = readLine()!
//                
//                switch choiceMenuMadamLie{
//                    
//                // jika memesan menu pertama (Ayam Geprek Dada)
//                case "1":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Ayam Geprek Dada", nameCafeteria: "Madam Lie")
//                    
//                // jika memesan menu ke-2 (Ayam Geprek Paha)
//                case "2":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Ayam Geprek Paha", nameCafeteria: "Madam Lie")
//                    
//                // jika memesan menu ke-3 (Nasi Putih)
//                case "3":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Nasi Putih", nameCafeteria: "Madam Lie")
//                    
//                // jika memesan menu ke-4 (Teh Tawar)
//                case "4":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    orderMenu(menu: "Teh Tawar", nameCafeteria: "Madam Lie")
//                    
//                // jika memesan menu ke-5 (Jeruk Manis)
//                case "5":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    orderMenu(menu: "Jeruk Manis", nameCafeteria: "Madam Lie")
//                    
//                case "b","B":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    mainDisplay()
//                    
//                default:
//                    // variabel falseInput ditambah 1 terus agar user memasukkan angka yang benar
//                    falseInput += 1
//                }
//            }
//            
//            // jika user memilih Kopte
//            if nameCafeteria == "Kopte"{
//                
//                var choiceMenuKopte: String = ""
//                
//                print("""
//                    [1] Teh Tarik Kopte
//                    [2] Coklat Tarik
//                    [3] Teh Kundur
//                    [4] Teh Jeruk Nipis
//                    [5] Milo Dinosaur
//                    -
//                    [B]ack to Main Menu
//                    Your menu choice? \(choiceMenuKopte)
//                """)
//                
//                choiceMenuKopte = readLine()!
//                
//                switch choiceMenuKopte{
//                    
//                // jika memesan menu pertama (Teh Tarik Kopte)
//                case "1":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Teh Tarik Kopte", nameCafeteria: "Kopte")
//                    
//                // jika memesan menu ke-2 (Coklat Tarik)
//                case "2":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Coklat Tarik", nameCafeteria: "Kopte")
//                    
//                // jika memesan menu ke-3 (Teh Kundur)
//                case "3":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Teh Kundur", nameCafeteria: "Kopte")
//                    
//                // jika memesan menu ke-4 (Teh Jeruk Nipis)
//                case "4":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Teh Jeruk Nipis", nameCafeteria: "Kopte")
//                    
//                // jika memesan menu ke-5 (Milo Dinosaur)
//                case "5":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    orderMenu(menu: "Milo Dinosaur", nameCafeteria: "Kopte")
//                    
//                case "b","B":
//                    // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
//                    falseInput = 0
//                    
//                    mainDisplay()
//                default:
//                    // variabel falseInput ditambah 1 terus agar user memasukkan angka yang benar
//                    falseInput += 1
//                }
//            }
//        }while falseInput > 0
//        
//    }
//    
//    func orderMenu(menu: String, nameCafeteria: String){
//
//        //memangguk fungsi menu agar array tidak kosong
//        item.fixMenu()
//        
//        // menampilkan harga menu di sebuah cafeteria sebelum user pesan dengan loop untuk cek manakah nama menu yang dimaksud dari atribut nama menu dan nama cafeteria
//        for m in item.menuList{
//            if(m.nameCafeteria == nameCafeteria && m.nameMenu == menu){
//                print("\(m.nameMenu) @ \(m.priceMenu)")
//                cart.calculateOrder(nameOfMenu: m.nameMenu, price: m.priceMenu, nameOfCafeteria: m.nameCafeteria)
//            }
//        }
//        
//        
//    }
//
//}
