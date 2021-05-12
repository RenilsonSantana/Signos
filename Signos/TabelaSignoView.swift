//
//  TabelaSignoView.swift
//  Signos
//
//  Created by Renilson Santana on 12/05/21.
//

import UIKit

class TabelaSignoView: UITableViewController {
    
    // MARK: - Atributos
    
    var listaDeSignos: [Signo] = []
    
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
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeSignos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tabelaSignos", for: indexPath)
        cell.textLabel?.text = listaDeSignos[indexPath.row].nome
        return cell
    }

}
