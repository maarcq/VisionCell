//
//  ModelCell.swift
//  VisionCell
//
//  Created by Marcelle Ribeiro Queiroz on 27/05/25.
//

import Foundation

enum ModelCell: String {
    case ComplexoGolgi, Vacuolos, Centriolos, Lisossomo, MembranaPlasmatica, Nucleo, Microtubulos, ReticuloEndoplasmatico, Mitocondrias, Ribossomo
    
    var id: Self {
        self
    }
    
    var name: String {
        switch self {
        case .ComplexoGolgi: "Complexo de Golgi"
        case .Vacuolos: "Vacúolos"
        case .Centriolos: "Centríolos"
        case .Lisossomo: "Lisoossomo"
        case .MembranaPlasmatica: "Membrana Plasmática"
        case .Nucleo: "Núcleo"
        case .Microtubulos: "Microtubúlos"
        case .ReticuloEndoplasmatico: "Retículo Endoplasmático"
        case .Mitocondrias: "Mitocôndrias"
        case .Ribossomo: "Ribossomo"
        }
    }
    
    var description: String {
        switch self {
        case .ComplexoGolgi: "O complexo de Golgi processa, modifica e distribui proteínas e lipídios produzidos pela célula. Ele adiciona carboidratos a essas moléculas (glicosilação), forma lisossomos (para digestão) e direciona as substâncias para dentro ou fora da célula, sendo vital para seu funcionamento."
            
        case .Vacuolos: "Os vacúolos em células animais armazenam nutrientes e resíduos, participam da digestão celular e ajudam a regular o equilíbrio interno da célula. Embora menores que nas vegetais, são importantes para a proteção e controle celular."
            
        case .Centriolos: "Os centríolos são estruturas cilíndricas presentes em células animais, com três funções principais: organizam os microtúbulos durante a divisão celular (mitose e meiose), garantindo a correta separação dos cromossomos; ajudam a manter a estrutura interna da célula (citoesqueleto); e em certos tipos celulares, formam a base dos cílios e flagelos, estruturas responsáveis pelo movimento celular ou pelo deslocamento de fluidos."
            
        case .Lisossomo: "Lisossomos são organelas digestivas das células animais. Contêm enzimas que quebram moléculas complexas, reciclando componentes celulares, eliminando resíduos e defendendo contra invasores como bactérias. Essenciais para a limpeza e renovação celular."
            
        case .MembranaPlasmatica: "A membrana plasmática é a camada protetora das células animais, formada por lipídios e proteínas. Controla seletivamente a entrada e saída de substâncias, mantém o equilíbrio interno e permite a comunicação entre células, sendo vital para seu funcionamento."
            
        case .Nucleo: "O núcleo celular armazena o DNA e controla as atividades da célula, como crescimento, produção de proteínas e divisão celular. Protegido por uma membrana dupla (envoltório nuclear), regula a comunicação com o restante da célula."
            
        case .Microtubulos: "Os microtúbulos são estruturas tubulares do citoesqueleto, formadas por tubulinas, que mantêm a forma da célula, permitem o transporte interno de organelas e são essenciais para a divisão celular (formando o fuso mitótico)."
            
        case .ReticuloEndoplasmatico: "O retículo endoplasmático (RE) é uma rede de membranas responsável pela produção de proteínas (RE rugoso, com ribossomos) e lipídios (RE liso), além da desintoxicação celular."
            
        case .Mitocondrias: "As mitocôndrias são organelas que produzem energia (ATP) para a célula através da respiração celular. Possuem membrana dupla e DNA próprio, sendo vitais para o metabolismo energético."
            
        case .Ribossomo: "Os ribossomos são estruturas celulares compostas por RNA e proteínas, responsáveis pela síntese de proteínas. Eles traduzem o RNA mensageiro (mRNA) em cadeias polipeptídicas, que se dobram para formar proteínas funcionais. Podem estar livres no citoplasma ou ligados ao retículo endoplasmático rugoso."
        }
    }
}
