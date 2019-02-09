//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Ravi Inder Manshahia on 09/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet weak var nextBtn: BorderButton!
    var player : Player!
    
    @IBAction func onCoedSelected(_ sender: UIButton) {
        setDesiredLeague(league: "Coed")
    }
    @IBAction func onWomensSelected(_ sender: UIButton) {
        setDesiredLeague(league: "Womens")
    }
    @IBAction func onMensSelected(_ sender: UIButton) {
        setDesiredLeague(league: "Mens")
    }
    
    func setDesiredLeague( league : String)
    {
        player.desiredLeague = league
        nextBtn.isEnabled = true
    }
    
    @IBAction func onNextTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
}




}
