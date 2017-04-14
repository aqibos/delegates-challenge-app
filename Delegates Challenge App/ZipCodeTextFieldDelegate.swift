import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {

  func textField(_ textField: UITextField,
                 shouldChangeCharactersIn range: NSRange,
                 replacementString string: String) -> Bool {
    print("Range [ \(range.location),  \(range.length) ]")
    let newCount = string.characters.count
    let currentCount = textField.text?.characters.count ?? 0
    return currentCount + newCount <= 5
  }

  func textFieldDidBeginEditing(_ textField: UITextField) {
    textField.text = ""
  }

}
