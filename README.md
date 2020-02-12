# XiB and NIB Files : 

### Description:  

Create a view instance with XIB File and create a View with outlet reference  

Steps:

1. Create a Generic XIb and Controller
2. Asign File owner
3. Load the Nib (Generic Xib ) in the File Owner

Call the generic xib file in the init frame method and init aDecoder method  


```swift

class GenericFileOwner: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        addGeneriView()  // creates two instance if in the IBOutlet uiview
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame) // programatically Instance NIB
        addGeneriView()
        print("super.init(frame: frame)")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder) // programatically Instance NIB
        addGeneriView()
        print("super.init(coder: aDecoder) ")
    }
    
    ...
}
```
![workflow](https://github.com/viktorHbenitez/CustomView---XIB/blob/master/Sketch/sketch1.png)  
