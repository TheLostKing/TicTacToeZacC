//
//  ViewController.swift
//  TicTacToeZacC
//
//  Created by Zachary Calderone on 1/29/18.
//  Copyright © 2018 Black Kobold Games. All rights reserved.
//

//Code snippet
//        switch sender.buttonNumber {
//        case 1:
//            button1
//        case 2:
//            button2
//        case 3:
//            button3
//        case 4:
//            button4
//        case 5:
//            button5
//        case 6:
//            button6
//        case 7:
//            button7
//        case 8:
//            button8
//        case 9:
//            button9
//        default:
//            print("Error")
//        }


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: TicTacToeButton!
    @IBOutlet weak var button2: TicTacToeButton!
    @IBOutlet weak var button3: TicTacToeButton!
    @IBOutlet weak var button4: TicTacToeButton!
    @IBOutlet weak var button5: TicTacToeButton!
    @IBOutlet weak var button6: TicTacToeButton!
    @IBOutlet weak var button7: TicTacToeButton!
    @IBOutlet weak var button8: TicTacToeButton!
    @IBOutlet weak var button9: TicTacToeButton!
    @IBOutlet weak var player1Score: UILabel!
    @IBOutlet weak var player2Score: UILabel!
    var turnCount = 1;
    var BORDER_WIDTH: CGFloat = 3
    var player1ScoreNum = 0;
    var player2ScoreNum = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button1.buttonNumber = 1;
        button2.buttonNumber = 2;
        button3.buttonNumber = 3;
        button4.buttonNumber = 4;
        button5.buttonNumber = 5;
        button6.buttonNumber = 6;
        button7.buttonNumber = 7;
        button8.buttonNumber = 8;
        button9.buttonNumber = 9;
        
        button1.layer.borderColor = UIColor.black.cgColor
        button2.layer.borderColor = UIColor.black.cgColor
        button3.layer.borderColor = UIColor.black.cgColor
        button4.layer.borderColor = UIColor.black.cgColor
        button5.layer.borderColor = UIColor.black.cgColor
        button6.layer.borderColor = UIColor.black.cgColor
        button7.layer.borderColor = UIColor.black.cgColor
        button8.layer.borderColor = UIColor.black.cgColor
        button9.layer.borderColor = UIColor.black.cgColor
        
        button1.layer.borderWidth = BORDER_WIDTH
        button2.layer.borderWidth = BORDER_WIDTH
        button3.layer.borderWidth = BORDER_WIDTH
        button4.layer.borderWidth = BORDER_WIDTH
        button5.layer.borderWidth = BORDER_WIDTH
        button6.layer.borderWidth = BORDER_WIDTH
        button7.layer.borderWidth = BORDER_WIDTH
        button8.layer.borderWidth = BORDER_WIDTH
        button9.layer.borderWidth = BORDER_WIDTH
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func placeMarker(_ sender: TicTacToeButton) {
        print("Pressed button \(sender.buttonNumber)")
        if (turnCount%2 == 0){
                    switch sender.buttonNumber {
                    case 1:
                        button1.storedCharacter = "O"
                        button1.setTitle("O", for: UIControlState.normal)
                    case 2:
                        button2.storedCharacter = "O"
                        button2.setTitle("O", for: UIControlState.normal)
                    case 3:
                        button3.storedCharacter = "O"
                        button3.setTitle("O", for: UIControlState.normal)
                    case 4:
                        button4.storedCharacter = "O"
                        button4.setTitle("O", for: UIControlState.normal)
                    case 5:
                        button5.storedCharacter = "O"
                        button5.setTitle("O", for: UIControlState.normal)
                    case 6:
                        button6.storedCharacter = "O"
                        button6.setTitle("O", for: UIControlState.normal)
                    case 7:
                        button7.storedCharacter = "O"
                        button7.setTitle("O", for: UIControlState.normal)
                    case 8:
                        button8.storedCharacter = "O"
                        button8.setTitle("O", for: UIControlState.normal)
                    case 9:
                        button9.storedCharacter = "O"
                        button9.setTitle("O", for: UIControlState.normal)
                    default:
                        print("Error")
                    }
        }else {
            switch sender.buttonNumber {
                case 1:
                    button1.storedCharacter = "X"
                    button1.setTitle("X", for: UIControlState.normal)
                case 2:
                    button2.storedCharacter = "X"
                    button2.setTitle("X", for: UIControlState.normal)
                case 3:
                    button3.storedCharacter = "X"
                    button3.setTitle("X", for: UIControlState.normal)
                case 4:
                    button4.storedCharacter = "X"
                    button4.setTitle("X", for: UIControlState.normal)
                case 5:
                    button5.storedCharacter = "X"
                    button5.setTitle("X", for: UIControlState.normal)
                case 6:
                    button6.storedCharacter = "X"
                    button6.setTitle("X", for: UIControlState.normal)
                case 7:
                    button7.storedCharacter = "X"
                    button7.setTitle("X", for: UIControlState.normal)
                case 8:
                    button8.storedCharacter = "X"
                    button8.setTitle("X", for: UIControlState.normal)
                case 9:
                    button9.storedCharacter = "X"
                    button9.setTitle("X", for: UIControlState.normal)
                default:
                    print("Error")
            }
        }
            switch sender.buttonNumber {
                case 1:
                    button1.isUserInteractionEnabled = false
                case 2:
                    button2.isUserInteractionEnabled = false
                case 3:
                    button3.isUserInteractionEnabled = false
                case 4:
                    button4.isUserInteractionEnabled = false
                case 5:
                    button5.isUserInteractionEnabled = false
                case 6:
                    button6.isUserInteractionEnabled = false
                case 7:
                    button7.isUserInteractionEnabled = false
                case 8:
                    button8.isUserInteractionEnabled = false
                case 9:
                    button9.isUserInteractionEnabled = false
                default:
                    print("Error")
            }
            turnCount += 1
            print(turnCount)
            checkWinState()
    }
    
    func checkWinState(){
        if ((button1.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button2.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button3.storedCharacter).caseInsensitiveCompare("X") == .orderedSame) || ((button1.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button4.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button7.storedCharacter).caseInsensitiveCompare("X") == .orderedSame) || ((button1.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button5.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button9.storedCharacter).caseInsensitiveCompare("X") == .orderedSame) || ((button2.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button5.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button8.storedCharacter).caseInsensitiveCompare("X") == .orderedSame) || ((button3.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button6.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button9.storedCharacter).caseInsensitiveCompare("X") == .orderedSame) || ((button4.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button5.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button6.storedCharacter).caseInsensitiveCompare("X") == .orderedSame) || ((button7.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button8.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button9.storedCharacter).caseInsensitiveCompare("X") == .orderedSame) || ((button3.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button5.storedCharacter).caseInsensitiveCompare("X") == .orderedSame && (button7.storedCharacter).caseInsensitiveCompare("X") == .orderedSame){
            print("Player 1 wins")
            player1ScoreNum += 1;
            resetBoard()
        } else if ((button1.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button2.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button3.storedCharacter).caseInsensitiveCompare("O") == .orderedSame) || ((button1.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button4.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button7.storedCharacter).caseInsensitiveCompare("O") == .orderedSame) || ((button1.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button5.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button9.storedCharacter).caseInsensitiveCompare("O") == .orderedSame) || ((button2.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button5.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button8.storedCharacter).caseInsensitiveCompare("O") == .orderedSame) || ((button3.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button6.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button9.storedCharacter).caseInsensitiveCompare("O") == .orderedSame) || ((button4.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button5.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button6.storedCharacter).caseInsensitiveCompare("O") == .orderedSame) || ((button7.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button8.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button9.storedCharacter).caseInsensitiveCompare("O") == .orderedSame) || ((button3.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button5.storedCharacter).caseInsensitiveCompare("O") == .orderedSame && (button7.storedCharacter).caseInsensitiveCompare("O") == .orderedSame){
            print("Player 2 wins")
            player2ScoreNum += 1
            resetBoard()
        } else{
            if turnCount > 9{
                print("Cat's Game")
                resetBoard()
            }
        }
    }
    
    func resetBoard(){
        button1.storedCharacter = "c"
        button1.setTitle("", for: .normal)
        button1.isUserInteractionEnabled = true
        button2.storedCharacter = "c"
        button2.setTitle("", for: .normal)
        button2.isUserInteractionEnabled = true
        button3.storedCharacter = "c"
        button3.setTitle("", for: .normal)
        button3.isUserInteractionEnabled = true
        button4.storedCharacter = "c"
        button4.setTitle("", for: .normal)
        button4.isUserInteractionEnabled = true
        button5.storedCharacter = "c"
        button5.setTitle("", for: .normal)
        button5.isUserInteractionEnabled = true
        button6.storedCharacter = "c"
        button6.setTitle("", for: .normal)
        button6.isUserInteractionEnabled = true
        button7.storedCharacter = "c"
        button7.setTitle("", for: .normal)
        button7.isUserInteractionEnabled = true
        button8.storedCharacter = "c"
        button8.setTitle("", for: .normal)
        button8.isUserInteractionEnabled = true
        button9.storedCharacter = "c"
        button9.setTitle("", for: .normal)
        button9.isUserInteractionEnabled = true
        turnCount = 1;
        player1Score.text = "\(player1ScoreNum)"
        player2Score.text = "\(player2ScoreNum)"
    }
    
}

