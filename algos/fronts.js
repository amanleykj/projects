// Add Front

// Write a method that accepts a value and create a new node, assign it to the list head, 
// and return a pointer to the new head node.

// Remove Front

// Write a method to remove the head node and return the new list head node. If the list is empty, return null.



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
        console.log("The front value is" + frontValue.data)
    }
}

var test1 = new SLL()
test1.addFront(15)
test1.addFront(12)
test1.addFront(2)
test1.addFront(99)

test1.removeFront()
test1.removeFront()
test1.removeFront()
test1.removeFront()

test1.frontValue()
test1.addFront(15)
test1.frontValue()

// Front

// Write a method to return the value (not the node) at the head of the list. If the list is empty, return null.

// Examples:

// SLL1.front() => 18
// SLL1.removeFront() => null
// SLL1.front() => null