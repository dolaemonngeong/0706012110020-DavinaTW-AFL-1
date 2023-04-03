//
//  Item.swift
//  0706012110020-DavinaTW-AFL 1
//
//  Created by MacBook Pro on 01/04/23.
//

import Foundation

class Item: Menu{
    
    
    
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
        
        let gotriNasiBakar = Menu()
        gotriNasiBakar.nameCafeteria = "Gotri"
        gotriNasiBakar.nameMenu = "Nasi Bakar"
        gotriNasiBakar.priceMenu = "13000"
        menuList.append(gotriNasiBakar)
        
        let gotriNasiGoreng = Menu()
        gotriNasiGoreng.nameCafeteria = "Gotri"
        gotriNasiGoreng.nameMenu = "Nasi Goreng"
        gotriNasiGoreng.priceMenu = "13500"
        menuList.append(gotriNasiGoreng)
        
        let gotriMieGoreng = Menu()
        gotriMieGoreng.nameCafeteria = "Gotri"
        gotriMieGoreng.nameMenu = "Mie Goreng"
        gotriMieGoreng.priceMenu = "14000"
        menuList.append(gotriMieGoreng)
        
        let gotriTamieGoreng = Menu()
        gotriTamieGoreng.nameCafeteria = "Gotri"
        gotriTamieGoreng.nameMenu = "Tamie Goreng"
        gotriTamieGoreng.priceMenu = "15000"
        menuList.append(gotriTamieGoreng)
        
        let gotriMilkshake = Menu()
        gotriMilkshake.nameCafeteria = "Gotri"
        gotriMilkshake.nameMenu = "Milkshake"
        gotriMilkshake.priceMenu = "10000"
        menuList.append(gotriMilkshake)
        
        let gotriTahuBerintik = Menu()
        gotriTahuBerintik.nameCafeteria = "Gotri"
        gotriTahuBerintik.nameMenu = "Tahu Berintik"
        gotriTahuBerintik.priceMenu = "9000"
        menuList.append(gotriTahuBerintik)
        
        let madamlieAGDada = Menu()
        madamlieAGDada.nameCafeteria = "Madam Lie"
        madamlieAGDada.nameMenu = "Ayam Geprek Dada"
        madamlieAGDada.priceMenu = "11000"
        menuList.append(madamlieAGDada)
        
        let madamlieAGPaha = Menu()
        madamlieAGPaha.nameCafeteria = "Madam Lie"
        madamlieAGPaha.nameMenu = "Ayam Geprek Paha"
        madamlieAGPaha.priceMenu = "11000"
        menuList.append(madamlieAGPaha)
        
        let madamlieNasiPutih = Menu()
        madamlieNasiPutih.nameCafeteria = "Madam Lie"
        madamlieNasiPutih.nameMenu = "Nasi Putih"
        madamlieNasiPutih.priceMenu = "6000"
        menuList.append(madamlieNasiPutih)
        
        let madamlieTehTawar = Menu()
        madamlieTehTawar.nameCafeteria = "Madam Lie"
        madamlieTehTawar.nameMenu = "Teh Tawar"
        madamlieTehTawar.priceMenu = "5000"
        menuList.append(madamlieTehTawar)
        
        let madamlieJerukManis = Menu()
        madamlieJerukManis.nameCafeteria = "Madam Lie"
        madamlieJerukManis.nameMenu = "Jeruk Manis"
        madamlieJerukManis.priceMenu = "5500"
        menuList.append(madamlieJerukManis)
 
        let kopteTehTarik = Menu()
        kopteTehTarik.nameCafeteria = "Kopte"
        kopteTehTarik.nameMenu = "Teh Tarik Kopte"
        kopteTehTarik.priceMenu = "15000"
        menuList.append(kopteTehTarik)
        
        let kopteCoklatTarik = Menu()
        kopteCoklatTarik.nameCafeteria = "Kopte"
        kopteCoklatTarik.nameMenu = "Coklat Tarik"
        kopteCoklatTarik.priceMenu = "12000"
        menuList.append(kopteCoklatTarik)
        
        let kopteTehKundur = Menu()
        kopteTehKundur.nameCafeteria = "Kopte"
        kopteTehKundur.nameMenu = "Teh Kundur"
        kopteTehKundur.priceMenu = "13000"
        menuList.append(kopteTehKundur)
        
        let kopteTehJerukNipis = Menu()
        kopteTehJerukNipis.nameCafeteria = "Kopte"
        kopteTehJerukNipis.nameMenu = "Teh Jeruk Nipis"
        kopteTehJerukNipis.priceMenu = "12500"
        menuList.append(kopteTehJerukNipis)
        
        let kopteMiloDinosaur = Menu()
        kopteMiloDinosaur.nameCafeteria = "Kopte"
        kopteMiloDinosaur.nameMenu = "Milo Dinosaur"
        kopteMiloDinosaur.priceMenu = "15000"
        menuList.append(kopteMiloDinosaur)
    }
    
}
