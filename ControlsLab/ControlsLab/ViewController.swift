import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var selectSuit: UILabel!
    @IBOutlet weak var suitSegmented: UISegmentedControl!
    @IBOutlet weak var choseValueLabel: UILabel!
    @IBOutlet weak var valueStepper: UIStepper!
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var typeOfCard: UILabel!
    @IBOutlet weak var cardSuit: UIImageView!
    @IBOutlet weak var cardNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardSuit.image = UIImage.init(systemName: "suit.diamond.fill")
        cardNumber.textColor = .blue
        cardNumber.text = "A"
        configureStepper()
        nameCard()
        
    }
    
    func nameCard () {
        typeOfCard.text = "\(suitSegmented.tag)"
    }
    
    func configureStepper() {
        valueStepper.minimumValue = 0
        valueStepper.maximumValue = 13
        valueStepper.stepValue = 1
        valueStepper.value = 1
    }
    
    var currentSegmentIndex: Int = 0 {
        didSet {
            switch suitSegmented.selectedSegmentIndex {
            case 0:
                cardSuit.image = UIImage.init(systemName: "suit.diamond.fill")
            case 1:
                cardSuit.image = UIImage.init(systemName: "heart.fill")
            case 2:
                cardSuit.image = UIImage.init(systemName: "suit.spade.fill")
            case 3:
                cardSuit.image = UIImage.init(systemName: "suit.club.fill")
            default:
                cardSuit.image = #imageLiteral(resourceName: "pursuit")
            }
        }
    }
    
    
    
    @IBAction func selectSuit(_ sender: UISegmentedControl) {
        currentSegmentIndex = sender.selectedSegmentIndex
    }
    
    @IBAction func changeValue(_ sender: UIStepper) {
        switch sender.value {
        case 1:
            cardNumber.text = "A"
        case 2:
            cardNumber.text = "2"
        case 3:
            cardNumber.text = "3"
        case 4:
            cardNumber.text = "4"
        case 5:
            cardNumber.text = "5"
        case 6:
            cardNumber.text = "6"
        case 7:
            cardNumber.text = "7"
        case 8:
            cardNumber.text = "8"
        case 9:
            cardNumber.text = "9"
        case 10:
            cardNumber.text = "1O"
        case 11:
            cardNumber.text = "J"
        case 12:
            cardNumber.text = "Q"
        case 13:
            cardNumber.text = "K"
            sender.value = 0
        default:
            cardNumber.text = "0"
        }
    }
    
}

