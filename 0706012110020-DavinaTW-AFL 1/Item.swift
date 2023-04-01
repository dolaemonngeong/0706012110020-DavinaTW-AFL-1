//
//  Item.swift
//  0706012110020-DavinaTW-AFL 1
//
//  Created by MacBook Pro on 01/04/23.
//

import Foundation

class Item: Menu{
    
//    let priceTuku2 = ["Tahu Isi" : 5_000,
//                      "Nasi Kuning" : 15_000,
//                      "Nasi Campur" : 16_000,
//                      "Air Mineral" : 3_000]
//
//    //dictionary harga menu di Madam Lie
//    let priceMadamLie = ["Ayam Geprek Dada": 11_000,
//                         "Ayam Geprek Paha": 11_000,
//                         "Nasi Putih": 6_000,
//                         "Teh Tawar": 5_000,
//                         "Jeruk Manis": 5_500]
//
//    //dictionary harga menu di Gotri
//    let priceGotri = ["Nasi Bakar": 13_000,
//                      "Nasi Goreng":13_500,
//                      "Mie Goreng":14_000,
//                      "Tamie Goreng":15_000,
//                      "Milkshake": 10_000,
//                      "Tahu Berintik":9_000]
//
//    //dictionary harga menu di Kopte
//    let priceKopte = ["Teh Tarik Kopte": 15000,
//                      "Coklat Tarik": 12000,
//                      "Teh Kundur": 13000,
//                      "Teh Jeruk Nipis":12500,
//                      "Milo Dinosaur":14000]
    
    
    var item_id :Int = 0
    var amountInt: Int = 0
    var menuList = Array<Menu>()
    
    func fixMenu() {
        
        let tuku2TahuIsi = Menu()
        tuku2TahuIsi.nameCafeteria = "Tuku-tuku"
        tuku2TahuIsi.nameMenu = "Tahu Isi"
        tuku2TahuIsi.priceMenu = "5000"
        menuList.append(tuku2TahuIsi)
        
        let tuku2NasiKuning = Menu()
        tuku2NasiKuning.nameCafeteria = "Tuku-tuku"
        tuku2NasiKuning.nameMenu = "Nasi Kuning"
        tuku2NasiKuning.priceMenu = "15000"
        menuList.append(tuku2NasiKuning)
        
        let tuku2NasiCampur = Menu()
        tuku2NasiCampur.nameCafeteria = "Tuku-tuku"
        tuku2NasiCampur.nameMenu = "Nasi Campur"
        tuku2NasiCampur.priceMenu = "16000"
        menuList.append(tuku2NasiCampur)
        
        let tuku2AirMineral = Menu()
        tuku2AirMineral.nameCafeteria = "Tuku-tuku"
        tuku2AirMineral.nameMenu = "Air Mineral"
        tuku2AirMineral.priceMenu = "3000"
        menuList.append(tuku2AirMineral)
        
        let gotriAyamGeprekDada = Menu()
        gotriAyamGeprekDada.nameCafeteria = "Tuku-tuku"
        gotriAyamGeprekDada.nameMenu = "Ayam Geprek Dada"
        gotriAyamGeprekDada.priceMenu = "11000"
        menuList.append(gotriAyamGeprekDada)
    }
    
    
}
