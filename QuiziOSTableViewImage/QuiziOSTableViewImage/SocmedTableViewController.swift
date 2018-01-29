//
//  SocmedTableViewController.swift
//  QuiziOSTableViewImage
//
//  Created by Arjuna on 29/01/18.
//  Copyright © 2018 Arjuna. All rights reserved.
//

import UIKit

class SocmedTableViewController: UITableViewController {
    
    //deklarasi namaSelected dan gambarSelected untuk mengirmkan data
    var namaSelected:String?
    var gambarSelected:String?
    
    var namasosial = ["Facebook", "Instagram", "Path", "Snapchat", "Twitter"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return namasosial.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellsosial", for: indexPath)
        //
        cell.textLabel?.text = namasosial[indexPath.row]
        //menampilka gambar
        let imageName = UIImage(named: namasosial[indexPath.row])
        cell.imageView?.image = imageName
        return cell
    }
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        //mengecek data yang dikirim
//        print("Row \(indexPath.row)selected")
//        //memasukan data ke variable namaSelected dan image selected ke masing masing variable nya
//        namaSelected = self.namasosial[indexPath.row]
//        gambarSelected = self.namasosial[indexPath.row]
//        //memamnggil segue passDataDetail
//        performSegue(withIdentifier: "passDataDetail", sender: self)
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        //mengecek apakah segue nya ada atau  tidak
//        if segue.identifier == "passDataDetail"{
//            //kondisi ketika segue nya ada
//            //mengirimkan data ke detailViewController
//            let kirimData = segue.destination as! DetailViewController
//            //mengirimkan data ke masing2 variable
//            //mengirimkan nama wisata
//            kirimData.passNamaWisata = namaSelected
//            //mengirimkan data gambar wisata
//            kirimData.passGambarWisata = gambarSelected
//            
//        }
//    }
//    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
