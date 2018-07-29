<p align="center">
    <h1 align="center">SwiftExtensions</h1>
</p1>

<p align="center">
    <a href="https://github.com/atsushi130/SwiftExtensions.git"><img src="https://img.shields.io/badge/Swift-SwiftExtensions-3B5998.svg"></a> 
    <img src="https://img.shields.io/badge/Swift-4-ffac45.svg">
    <a href="./license"><img src="https://img.shields.io/badge/License-MIT-d94c32.svg"></a>
    <img src="https://img.shields.io/badge/Carthage-v1.0.3-7ec9d9.svg">
</p>

## Installation
**Install via [Carthage](https://github.com/Carthage/Carthage)**
```
github "atsushi130/SwiftExtensions"
```

## Requirements
- Swift 4 or later

## Extensions and Protocols Usage
- [NSObject](#nsobject)
- [Int](#int)
- [Double](#double)
- [CGFloat](#cgfloat)
- [String](#string)
- [Bool](#bool)
- [Dictionary](#dictionary)
- [Date](#date)
- [DateFormatter](#dateformatter)
- [CGColor](#cgcolor)
- [UIColor](#uicolor)
- [UITextView](#uitextview)
- [UICollectionView](#uicollectionview)
- UITableView
- [UIView](#uiview)
- [UUID](#uuid)
- [NibDesignable](#nibdesignable)
- [NibInstantiatable](#nibinstantiatable)
- [CaseIterable](#caseiterable)

### NSObject
Get class name.
```swift
let view = CustomView()
print(view.className)
```

### Int
Half
```swift
let number = 3
print(number.half) // 1.5
```

### Double
Half
```swift
let number = 3.0
print(number.half) 1.5
```

Floor
```swift
let number = 1.4
print(number.floor) // 1.0
```

Ceil
```swift
let number = 1.4
print(number.ceil) // 2.0
```

Round
```swift
let number = 1.5
print(number.round) // 2.0
```

CGFloat
```swift
let number = 1.5.cgFloat
```

### CGFloat
The same as String extensions.

### String
toDate
```swift
"2018/01/01 00:00:00".toDate()
```

Regular expression
```swift
password.isMatch(pattern: "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}$")
```

### Bool
toInt
```swift
print(true.toInt) // 1
```

### Dictionary
operator +
```swift
["key1": "value1"] + ["key2": "value2"] // ["key1": "value1", "key2": "vaule2"]
```

### Date
toString
```swift
let dateString = Date().toString()
```

### DateFormatter
```swift
let formatter = DateFormatter.from(locale: Local.current, format: "yyyy/MM/dd HH:mm:ss")
```

### CGColor
to UIColor
```swift
view.backgroundColor = cgColor.uiColor
```

### UIColor
```swift
let color = UIColor.hex(hex: 0xAABBCC)
let color = UIColor.hex(hexString: "ffffff")
```

### UITextView
```swift
let textView = UITextView()
textview.placeholder = "Input message"
```
<img width="250" alt="uitextview placeholder" src="https://user-images.githubusercontent.com/11363154/34513458-b9d00aa4-f0ab-11e7-9986-1d87ad01bb42.png">

### UICollectionView
Custom cell registration.
```swift
@IBOutlet private weak var collectionView: UICollectionView! {
    didSet {
        self.layout = UICollectionViewFlowLayout()
        self.collectionView.collectionViewLayout = self.layout
        self.collectionView.register(cellType: CustomCell.self)
        self.collectionView.register(reusableViewType: CustomReusableView.self)
        self.collectionView.dataSource = self
        self.collectionView.delegate   = self
    }
}
```

Other example.
```swift
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return collectionView.dequeueReusableCell(with: CustomCell.self, for: indexPath)
}
```

### UIView
safeAreaInsets
```swift
// ios10.x or less: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
let safeAreaInsets = self.view.safeAreaInsets
```

```swift
fillSuperview
let view = UIView()
superView.addSubView(view)
view.fillSuperview()

```

### UUID
```swift
UUID.generate()
```

### NibDesignable
Setup the File’s Owner with the custom class you created.
![image](https://user-images.githubusercontent.com/11363154/34498505-40ecd376-f045-11e7-9f54-6173a39248c3.png)

conform to NibDesignable. Please call `configureNib` method on `init(frame:)` and `init?(decoder:)`.
```swift
@IBDesignable
final class ReactiveView: UIView, NibDesignable {

    init(frame: CGRect) {
        super.init(frame: frame)
        self.configureNib()
    }

    required init?(decoder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configureNib()
    }
}
```

Last step, set its class as custom view (ex: ReactiveView) in storyboard.
![image](https://user-images.githubusercontent.com/11363154/34498849-bfe3d174-f046-11e7-94b8-b7184dc2fe69.png)

### NibInstantiatable
```swift
final class CustomView: NibInstantiatable { ... }
let customView = CustomView.instantiate() // create instance from CustomView.Xib
```

### CaseIterable
```swift
enum License: CaseIterable {
    case free
    case enterprise
}

print(License.allCases) // [License.free, License.enterprise]
```

## License
SwiftExtensions is available under the MIT license. See the [LICENSE file](https://github.com/atsushi130/SwiftExtensions/blob/master/license).
