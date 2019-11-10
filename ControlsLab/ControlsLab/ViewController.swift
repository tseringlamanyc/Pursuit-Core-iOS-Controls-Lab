import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var selectSuit: UILabel!
    @IBOutlet weak var suitSegmented: UISegmentedControl!
    @IBOutlet weak var choseValueLabel: UILabel!
    @IBOutlet weak var valueStepper: UIStepper!
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var typeOfCard: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
                cardImage.image = #imageLiteral(resourceName: "cat")
            case 1:
                cardImage.image = #imageLiteral(resourceName: "dog")
            case 2:
                cardImage.image = #imageLiteral(resourceName: "pitons")
            case 3:
                cardImage.image = #imageLiteral(resourceName: "pursuit")
            default:
                cardImage.image = #imageLiteral(resourceName: "pursuit")
            }
        }
    }

    
    
    @IBAction func selectSuit(_ sender: UISegmentedControl) {
        currentSegmentIndex = sender.selectedSegmentIndex
    }
    
    @IBAction func changeValue(_ sender: UIStepper) {
    }
    
}

