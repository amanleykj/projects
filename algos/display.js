

// Create display() that uses a while loop and a runner to return a 
// string containing all list values. Build what you wish console.log(myList) did! 

class SLLNode {
    constructor(data) {
        this.data = data
        this.next = null
    }
}
class SLL {
    constructor() {
        this.head = null
        }
    addFront(data) {
        var newNode = new SLLNode(data)
        newNode.next = this.head
        this.head = newNode
        return this
    }
    removeFront() {
        var nodeGone = this.head
        this.head = nodeGone.next
        nodeGone.next = null
        return this.head;
    }
    frontValue() {
        var frontValue = this.head;
        if(frontValue == null){
            console.log("The front value is ", frontValue)
            return null
        }
        console.log("The front value is " + frontValue.data)
    }
    display() {
        let runner = this.head;
        var outputList = ""

        while(runner != null) {
            outputList += runner.data + ", "
            runner = runner.next
        }
        outputList = outputList.slice(0, outputList.length - 2)
        console.log(outputList)
    }
}

// Create display() that uses a while loop and a runner to return a 
// string containing all list values. Build what you wish console.log(myList) did! 
var display_test = new SLL()

display_test.addFront(1)
display_test.addFront(2)
display_test.addFront(3)
display_test.addFront(4)
display_test.addFront(8)
display_test.addFront(16)


display_test.display()