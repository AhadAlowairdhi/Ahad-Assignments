import UIKit

//Parameter Names
func isPalindrome(myString:String) -> Bool {
    let reverseString = String(myString.reversed())
    if(myString != "" && myString == reverseString) {
        return true
    } else {
        return false
    }
}
print(isPalindrome(myString:"Ashish"))
print(isPalindrome(myString:"racecar"))


//Extensions
extension String {
    var plaindromeOrNot: Bool {
        return self == String(self.reversed())
    }
 }
print()
print("madam".plaindromeOrNot)
print("Ahad".plaindromeOrNot)

//recursive version fixing the range issue
func checkPalindrome<T: StringProtocol>(_ word: T) -> Bool {
    let word = word.lowercased()
        .components(separatedBy: .punctuationCharacters).joined()
        .components(separatedBy: .whitespacesAndNewlines).joined()
    if word == "" || word.count == 1 {
        return true
    } else {
        if word.first == word.last {
            let start = word.index(word.startIndex,offsetBy: 1, limitedBy: word.endIndex) ?? word.startIndex
            let end = word.index(word.endIndex,offsetBy: -1, limitedBy: word.startIndex) ?? word.endIndex
            return checkPalindrome(word[start..<end])
        } else {
            return false
        }
    }
}
print()
print(checkPalindrome("codingdojoissomuchfun"))
print(checkPalindrome("Aziza"))


