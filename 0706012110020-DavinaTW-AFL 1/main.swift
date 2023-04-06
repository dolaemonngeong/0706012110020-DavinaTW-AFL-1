//
//  main.swift
//  0706012110020-DavinaTW-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var item = Item()
var cart = Cart()
var ucwalk = UCWalk()


// variabel total seluruh pesanan di cafeteria
var total: Int = 0

// variabel untuk membantu pengulangan jika user salah input
var falseInput:Int = 0

//panggil fungsi main display untuk menampilkan halaman utamanya
mainDisplay()

// fungsi untuk menampilkan halaman utamanya
func mainDisplay(){
    repeat{
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
        let cafeteriaInput = readLine()!

        // opsi untuk mengarahkan user dari inputnya
        switch cafeteriaInput {
            
        // menampilkan halaman Tuku-tuku
        case "1":
            falseInput = 0
            print("Choosing Tuku-Tuku...")
            print()
            ucwalk.insideTenant(nameCafeteria: "Tuku-tuku")

        // menampilkan halaman Gotri
        case "2":
            falseInput = 0
            print("Choosing Gotri...")
            print()
            ucwalk.insideTenant(nameCafeteria: "Gotri")

        // menampilkan halaman Madam Lie
        case "3":
            falseInput = 0
            print("Choosing Madam Lie...")
            print()
            ucwalk.insideTenant(nameCafeteria: "Madam Lie")
            
        // menampilkan halaman Kopte
        case "4":
            falseInput = 0
            print("Choosing Kopte...")
            print()
            ucwalk.insideTenant(nameCafeteria: "Kopte")
            
        // menampilkan halaman shoping cart jika memasukkan huruf "s" kapital maupun bukan
        case "s", "S":
            falseInput = 0
            print("Here's your shopping cart :)")
            cart.show()

        // keluar dari program jika memasukkan huruf "q" kapital maupun bukan
        case "q","Q":
            falseInput = 0
            print("See u next time! :)")
            exit(0)
            
        // jika selain dari opsi di atas, maka panggil fungsi ini lagi
        default:
            falseInput += 1
            print("""
                Please Input from the option bellow!
            """)
        }
    }while falseInput > 0
}
   
