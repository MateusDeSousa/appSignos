//
//  ViewController.swift
//  AppSignos
//
//  Created by Mateus de Sousa on 03/03/19.
//  Copyright © 2019 Mateus de Sousa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signos: UITableView!
    let signo: [String] = ["Aries", "Touto", "Gemeos", "Cancer", "Leao", "Virgem", "Libra", "Escorpiao", "Sargitario", "Capricornio", "Aquario", "Peixes"]
    let descriptionSignos: [String] = ["O ariano e uma pessoas cheia de energiae e entusiamo, lhe encantam as metas, a liberdade e as ideias novas.", "Zeloso e possessivo, um couro pode tender a ser inflexivel e ressentido. as vezes os touro pecam de ser cobicosos e e de permite-se tudo", "2 - ...", "3 - ...", "4 - ...", "5 - ...", "6 - ...", "7 - ...", "8 - ...", "9 - ...", "10 - ...", "11 - ..."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signos.delegate = self
        signos.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signo.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = signo [indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alert = UIAlertController(title: signo[indexPath.row], message: descriptionSignos[indexPath.row], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(acaoConfirmar)
        present(alert, animated: true, completion: nil)
    }
    
}

