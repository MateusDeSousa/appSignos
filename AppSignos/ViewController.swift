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
    
}

