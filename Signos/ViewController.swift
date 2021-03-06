//
//  ViewController.swift
//  Signos
//
//  Created by Renilson Santana on 12/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Atributos
    
    var listaDeSignos: [Signo] = []

    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        criaSignos()
        tableView.reloadData()
    }
    
    // MARK: - Metodos
    
    func criaSignos(){
        let signos = ["Áries", "Touro", "Gêmeos", "Câncer", "Leão", "Virgem", "Libra", "Escorpião", "Sagitário", "Capricórnio", "Aquário", "Peixes"]
        let sobreSignos = ["O ariano é uma pessoa cheia de energia e entusiasmo. Pioneiro e aventureiro, lhe encantam as metas, a liberdade e as idéias novas.",
                           "Zeloso e possessivo, um cauro pode tender a ser inflexivel e ressenntido. As vezes os Touros pecam de ser cobicosos e de permitir-se tudo.",
                           "Gêmeos...", "Câncer...", "Leão...", "Virgem...", "Libra...", "Escorpião...", "Sagitário...", "Capricórnio...", "Aquário...", "Peixes..."]
        for c in 0..<12{
            listaDeSignos.append(Signo(nome: signos[c], sobre: sobreSignos[c]))
        }
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeSignos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tabelaSignos", for: indexPath)
        cell.textLabel?.text = listaDeSignos[indexPath.row].nome
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alert = UIAlertController(title: listaDeSignos[indexPath.row].nome, message: listaDeSignos[indexPath.row].sobre, preferredStyle: .alert)
        
        let btnOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(btnOK)
        
        present(alert, animated: true, completion: nil)
    }
    
    
}

