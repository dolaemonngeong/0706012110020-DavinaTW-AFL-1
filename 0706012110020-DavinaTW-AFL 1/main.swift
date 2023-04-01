//
//  main.swift
//  0706012110020-DavinaTW-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

//var mainScreen: String = ""

//dictionary untuk simpan pesanan di Tuku-tuku dimana key-nya adalah menu dan value-nya adalah jumlah pesanannya
var ordersTuku2: [String:Int] = [:]

//dictionary untuk simpan pesanan di Gotri dimana key-nya adalah menu dan value-nya adalah jumlah pesanannya
var ordersGotri: [String:Int] = [:]

//dictionary untuk simpan pesanan di Madam Lie dimana key-nya adalah menu dan value-nya adalah jumlah pesanannya
var ordersMadamLie: [String:Int] = [:]

//dictionary untuk simpan pesanan di Kopte dimana key-nya adalah menu dan value-nya adalah jumlah pesanannya
var ordersKopte: [String:Int] = [:]

// variabel total seluruh pesanan di cafeteria
var total: Int = 0

// variabel untuk membantu pengulangan jika user salah input
var falseInput:Int = 0

// dictionary untuk simpan nama cafeteria yang user pesan dimana key-nya adalah angka dan value-nya adalah nama cafeterianya
var cafeteriaChoosen: [String : String] = [:]

// variabel input cafeteria dari user
var cafeteriaInput: String = ""
var t: String = ""
//panggil fungsi main display untuk menampilkan halaman utamanya
mainDisplay()

// fungsi untuk menampilkan halaman utamanya
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
    
    //ambil yang user input
    cafeteriaInput = readLine()!
    
    // opsi untuk mengarahkan user dari inputnya
    switch cafeteriaInput {
        
    // menampilkan halaman Tuku-tuku
    case "1":
        print("Choosing Tuku-Tuku...")
        inCafeteria(nameCafeteria: "Tuku-tuku")

    // menampilkan halaman Gotri
    case "2":
        print("Choosing Gotri...")
        inCafeteria(nameCafeteria: "Gotri")
    
    // menampilkan halaman Madam Lie
    case "3":
        print("Choosing Madam Lie...")
        inCafeteria(nameCafeteria: "Madam Lie")
        
    // menampilkan halaman Kopte
    case "4":
        inCafeteria(nameCafeteria: "Kopte")
        
    // menampilkan halaman shoping cart jika memasukkan huruf "s" kapital maupun bukan
    case "s", "S":
        print("Here's your shopping cart :)")
        
        // jika di dictionary cafeteriaChoosen masih kosong, maka panggil fungsi shoppingcart dengan parameter cafeteriaChoosen yang kosong.
        if cafeteriaChoosen.isEmpty{
            shoppingcart(cafeteriaChoosen: [:])
        }else{
            // jika tidak, panggil fungsi shoppingcart dengan parameter cafeteriaChoosen yang sudah ada isinya
            shoppingcart(cafeteriaChoosen: cafeteriaChoosen)
        }

    // keluar dari program jika memasukkan huruf "q" kapital maupun bukan
    case "q","Q":
        print("See u next time! :)")
        exit(0)
        
    // jika selain dari opsi di atas, maka panggil fungsi ini lagi
    default:
        print("""
            Please Input from the option bellow!
        """)
        mainDisplay()
    }
    
}


// screan cafeteria yang dipilih user
func inCafeteria(nameCafeteria:String){

    // pengulangan jika user tidak memasukkan input sesuai opsi menu yang disediakan
    repeat{
        
        print("""
                Hi, welcome back to \(nameCafeteria)!
                What would you like to order?
            """)
        
        //jika user memilih Tuku-tuku
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
                
            // jika memesan menu pertama (Tahu Isi)
            case "1":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["1"] = "Tuku-tuku"
                orderMenu(menu: "Tahu Isi", nameCafeteria: "Tuku-tuku")
                
            // jika memesan menu ke-2 (Nasi Kuning)
            case "2":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["1"] = "Tuku-tuku"
                orderMenu(menu: "Nasi Kuning", nameCafeteria: "Tuku-tuku")
                
            // jika memesan menu ke-3 (Nasi Campur)
            case "3":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["1"] = "Tuku-tuku"
                orderMenu(menu: "Nasi Campur", nameCafeteria: "Tuku-tuku")
                
            // jika memesan menu ke-4 (Air Mineral)
            case "4":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["1"] = "Tuku-tuku"
                orderMenu(menu: "Air Mineral", nameCafeteria: "Tuku-tuku")
                
            case "b","B":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                mainDisplay()
                
            default:
                // variabel falseInput ditambah 1 terus agar user memasukkan angka yang benar
                falseInput += 1
            }
            
        }
        
        //jika user memilih Gotri
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
                
            // jika memesan menu pertama (Nasi Bakar)
            case "1":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Nasi Bakar", nameCafeteria: "Gotri")
                
            // jika memesan menu ke-2 (Nasi Goreng)
            case "2":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Nasi Goreng", nameCafeteria: "Gotri")
                
            // jika memesan menu ke-3 (Mie Goreng)
            case "3":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Mie Goreng", nameCafeteria: "Gotri")
                
            // jika memesan menu ke-4 (Tamie Goreng)
            case "4":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Tamie Goreng", nameCafeteria: "Gotri")
                
            // jika memesan menu ke-5 (Milkshake)
            case "5":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Milkshake", nameCafeteria: "Gotri")
                
            // jika memesan menu ke-6 (Tahu Berintik)
            case "6":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["2"] = "Gotri"
                orderMenu(menu: "Tahu Berintik", nameCafeteria: "Gotri")
                
            case "b","B":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                mainDisplay()
                
            default:
                // variabel falseInput ditambah 1 terus agar user memasukkan angka yang benar
                falseInput += 1
            }
        }
        
        // jika user memilih Madam Lie
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
            
            //am
            choiceMenuMadamLie = readLine()!
            
            switch choiceMenuMadamLie{
                
            // jika memesan menu pertama (Ayam Geprek Dada)
            case "1":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Ayam Geprek Dada", nameCafeteria: "Madam Lie")
                
            // jika memesan menu ke-2 (Ayam Geprek Paha)
            case "2":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Ayam Geprek Paha", nameCafeteria: "Madam Lie")
                
            // jika memesan menu ke-3 (Nasi Putih)
            case "3":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Nasi Putih", nameCafeteria: "Madam Lie")
                
            // jika memesan menu ke-4 (Teh Tawar)
            case "4":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Teh Tawar", nameCafeteria: "Madam Lie")
                
            // jika memesan menu ke-5 (Jeruk Manis)
            case "5":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["3"] = "Madam Lie"
                orderMenu(menu: "Jeruk Manis", nameCafeteria: "Madam Lie")
                
            case "b","B":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                mainDisplay()
                
            default:
                // variabel falseInput ditambah 1 terus agar user memasukkan angka yang benar
                falseInput += 1
            }
        }
        
        // jika user memilih Kopte
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
                
            // jika memesan menu pertama (Teh Tarik Kopte)
            case "1":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Teh Tarik Kopte", nameCafeteria: "Kopte")
                
            // jika memesan menu ke-2 (Coklat Tarik)
            case "2":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Coklat Tarik", nameCafeteria: "Kopte")
                
            // jika memesan menu ke-3 (Teh Kundur)
            case "3":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Teh Kundur", nameCafeteria: "Kopte")
                
            // jika memesan menu ke-4 (Teh Jeruk Nipis)
            case "4":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Teh Jeruk Nipis", nameCafeteria: "Kopte")
                
            // jika memesan menu ke-5 (Milo Dinosaur)
            case "5":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                cafeteriaChoosen["4"] = "Kopte"
                orderMenu(menu: "Milo Dinosaur", nameCafeteria: "Kopte")
                
            case "b","B":
                // variabel falseInput diberi 0 agar user tidak terjebak di pengulangan ini
                falseInput = 0
                
                mainDisplay()
            default:
                // variabel falseInput ditambah 1 terus agar user memasukkan angka yang benar
                falseInput += 1
            }
        }
    }while falseInput > 0
    
}

func orderMenu(menu: String, nameCafeteria: String){
    // menampilkan harga menu di sebuah cafeteria sebelum user pesan
    
    //dictionary harga menu di Tuku-tuku
    let priceTuku2 = ["Tahu Isi" : 5_000,
                      "Nasi Kuning" : 15_000,
                      "Nasi Campur" : 16_000,
                      "Air Mineral" : 3_000]

    //dictionary harga menu di Madam Lie
    let priceMadamLie = ["Ayam Geprek Dada": 11_000,
                         "Ayam Geprek Paha": 11_000,
                         "Nasi Putih": 6_000,
                         "Teh Tawar": 5_000,
                         "Jeruk Manis": 5_500]

    //dictionary harga menu di Gotri
    let priceGotri = ["Nasi Bakar": 13_000,
                      "Nasi Goreng":13_500,
                      "Mie Goreng":14_000,
                      "Tamie Goreng":15_000,
                      "Milkshake": 10_000,
                      "Tahu Berintik":9_000]

    //dictionary harga menu di Kopte
    let priceKopte = ["Teh Tarik Kopte": 15000,
                      "Coklat Tarik": 12000,
                      "Teh Kundur": 13000,
                      "Teh Jeruk Nipis":12500,
                      "Milo Dinosaur":14000]
    
    //jika user memilih Tuku-tuku
    if nameCafeteria == "Tuku-tuku"{
        
        // jika nama menu dari user input dan nama dari dictionary harga menu di Tuku-tuku sama, maka tampilkan dan panggil function untuk menghitung pesanannya
        for (name, price) in priceTuku2{
            if menu == name{
                print("\(name) @ \(price)")
                calculateOrder(menu: menu, priceMenuCafeteria: priceTuku2, nameCafeteria: nameCafeteria)
            }
        }
        
    // jika user memilih Madam Lie
    }else if nameCafeteria == "Madam Lie"{
        
        // jika nama menu dari user input dan nama dari dictionary harga menu di Madam Lie sama, maka tampilkan dan panggil function untuk menghitung pesanannya
        for (name, price) in priceMadamLie{
            if menu == name{
                print("\(name) @ \(price)")
                calculateOrder(menu: menu, priceMenuCafeteria: priceMadamLie, nameCafeteria: nameCafeteria)
            }
        }
        
    // jika user memilih Gotri
    }else if nameCafeteria == "Gotri"{
        
        // jika nama menu dari user input dan nama dari dictionary harga menu di Gotri sama, maka tampilkan dan panggil function untuk menghitung pesanannya
        for (name, price) in priceGotri{
            if menu == name{
                print("\(name) @ \(price)")
                calculateOrder(menu: menu, priceMenuCafeteria: priceGotri, nameCafeteria: nameCafeteria)
            }
        }
        
    // jika user memilih Kopte
    }else if nameCafeteria == "Kopte"{
        
        // jika nama menu dari user input dan nama dari dictionary harga menu di Kopte sama, maka tampilkan dan panggil function untuk menghitung pesanannya
        for (name, price) in priceKopte{
            if menu == name{
                print("\(name) @ \(price)")
                calculateOrder(menu: menu, priceMenuCafeteria: priceKopte, nameCafeteria: nameCafeteria)
            }
        }
    }
    
}


// menghitung biaya yang dihabiskan user dan menyimpan pesanan user
func calculateOrder(menu: String, priceMenuCafeteria: [String:Int], nameCafeteria: String){

    var num: Int?
    
    // pengulangan jika user tidak memasukkan angka
    while num == nil {
        
        print("How many \(menu) do you want to buy?")
        
        if let amountMenuString = readLine(), let amountMenuInt = Int(amountMenuString) {
            num = amountMenuInt
            
            //jika user memilih Tuku-tuku
            if nameCafeteria == "Tuku-tuku"{
                //jika user sudah memesan menu sebelumnya, maka tambahkan jumlahnya. jika belum, masukkan jumlahnya
                if ordersTuku2[menu] != nil{
                    ordersTuku2[menu]! += amountMenuInt
                }else{
                    ordersTuku2[menu] = amountMenuInt
                }
                
            }else if nameCafeteria == "Madam Lie"{
                //jika user sudah memesan menu sebelumnya, maka tambahkan jumlahnya. jika belum, masukkan jumlahnya
                if ordersMadamLie[menu] != nil{
                    ordersMadamLie[menu]! += amountMenuInt
                }else{
                    ordersMadamLie[menu] = amountMenuInt
                }
                
            }else if nameCafeteria == "Gotri"{
                //jika user sudah memesan menu sebelumnya, maka tambahkan jumlahnya. jika belum, masukkan jumlahnya
                if ordersGotri[menu] != nil{
                    ordersGotri[menu]! += amountMenuInt
                }else{
                    ordersGotri[menu] = amountMenuInt
                }
                
            }else if nameCafeteria == "Kopte"{
                //jika user sudah memesan menu sebelumnya, maka tambahkan jumlahnya. jika belum, masukkan jumlahnya
                if ordersKopte[menu] != nil{
                    ordersKopte[menu]! += amountMenuInt
                }else{
                    ordersKopte[menu] = amountMenuInt
                }
                
            }

            // loop untuk total seluruh pesanan user
            for (name, price) in priceMenuCafeteria{
                if menu == name{
                    total += price * amountMenuInt
                }
            }
            
            print("Thank you for ordering. :)")
            print("")
            
            //memanggil fungsi inCafeteria untuk menampilkan menu cafeteria yang sudah dipilih sebelumnya
            inCafeteria(nameCafeteria: nameCafeteria)
        } else {
            print("Invalid input. Please enter a number!")
            print("")
        }
    }
    
}

// menampilkan keranjang pesanan user
func shoppingcart(cafeteriaChoosen: [String : String]){
    
    var choiceShopCart: String = ""
    
    // cek jika user belum pesan di sebuah cafeteria dari dictionary cafeteriaChoosen yang berisi angka & nama cafeteria
    if cafeteriaChoosen.isEmpty{
        print("Your cart is empty. :(")
        //memanggil fungsi untuk menampilkan halaman utama
        mainDisplay()
    }else{

        // pengulangan jika user salah memasukkan input yang disediakan
        repeat {
            
            //loop untuk menampilkan pesanan user dari dictionary cafeteriaChoosen
            for cafeteriaName in cafeteriaChoosen.values{
                
                // cek jika user memesan di Tuku-tuku, maka tampilkan nama cefeterianya (Tuku-tuku), serta nama menu & jumlah yang dipesan di Tuku-Tuku
                if(cafeteriaName == "Tuku-tuku"){
                    print("Your order from \(cafeteriaName) :")
                    for (nama, jumlah) in ordersTuku2{
                        print("- \(nama) x \(jumlah)")
                    }
                }
                
                // cek jika user memesan di Gotri, maka tampilkan nama cefeterianya (Gotri), serta nama menu & jumlah yang dipesan di Gotri dari dictionary pesanan
                if(cafeteriaName == "Gotri"){
                    print("Your order from \(cafeteriaName) :")
                    for (nama, jumlah) in ordersGotri{
                        print("- \(nama) x \(jumlah)")
                    }
                }
                
                // cek jika user memesan di Madam Lie, maka tampilkan nama cefeterianya (Madam Lie), serta nama menu & jumlah yang dipesan di Madam Lie
                if(cafeteriaName == "Madam Lie"){
                    print("Your order from \(cafeteriaName) :")
                    for (nama, jumlah) in ordersMadamLie{
                        print("- \(nama) x \(jumlah)")
                    }
                }
                
                // cek jika user memesan di Kopte, maka tampilkan nama cefeterianya (Kopte), serta nama menu & jumlah yang dipesan di Kopte
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
                
                //memanggil fungsi untuk menampilkan halaman utama
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

// user membayar seluruh pesanan di cafeteria yang ia pesan
func checkout(){
    
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

