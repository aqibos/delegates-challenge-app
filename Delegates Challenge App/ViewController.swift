import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var zipCodeTextField: UITextField!
  @IBOutlet weak var currencyTextField: UITextField!
  @IBOutlet weak var togglableTextField: UITextField!
  @IBOutlet weak var toggleSwitch: UISwitch!

  // let zipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()

  override func viewDidLoad() {
    super.viewDidLoad()

    zipCodeTextField.delegate = ZipCodeTextFieldDelegate()

    print("Something \(String(describing: zipCodeTextField.delegate))")

  }

}
