import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var selectSuit: UILabel!
    @IBOutlet weak var suitSegmented: UISegmentedControl!
    @IBOutlet weak var choseValueLabel: UILabel!
    @IBOutlet weak var valueStepper: UIStepper!
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var typeOfCard: UILabel!
    @IBOutlet weak var cardNumber: UIImageView!
    @IBOutlet weak var cardSuit: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardSuit.image = nil
        
    }
    
    func configureStepper() {
        valueStepper.minimumValue = 1
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
    }
    
}

