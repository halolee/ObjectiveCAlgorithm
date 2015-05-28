//
//  SinglyLinkedList.m
//  ObjcLinkedList
//
//  Created by Halo Lee on 28/05/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import "SinglyLinkedList.h"

@implementation SinglyLinkedList
- (void) showList{
    NSLog(@"\n\nCurrent List is:\n");
    Node *node = self.head;
    while (node != nil) {
        printf("%d ->",node.value);   // Use printf to put all the element on the same line
        node = node.next;
    }
}

- (void) pushToHead:(Node *)newHeadNode {
    if(self.head == nil || self.tail == nil){
        self.head = newHeadNode;
        self.tail = newHeadNode;
        return;
    }
    
    newHeadNode.next = self.head;   // First assign the link from new head to the previous head
    self.head = newHeadNode;        // Reset the pointer in linked list to the new head
    
}

- (void) pushToTail:(Node *)newTailNode {
    if (self.tail == nil || self.head == nil) {
        self.head = newTailNode;
        self.tail = newTailNode;
        return;
    }
    
    self.tail.next = newTailNode; // First assign the link from previous tail to the new one
    self.tail = newTailNode;      // reset the pointer in linked list to the new tail
}


- (Node *) popFromHead
{
    // Empty linked list
    if (self.head == nil) {
        return nil;
    }
    Node *poppedNode = self.head;
    
    // Lst one in the linked list
    if (self.head == self.tail) {
        self.head = nil;
        self.tail = nil;
        return poppedNode;
    }
    
    
    // More than one remain in the linked list
    self.head = self.head.next;
    return poppedNode;
}

- (Node *) popFromTail
{
    // Empty linked list
    if (self.tail == nil) {
        return nil;
    }
    
    // Last one in the linked list
    Node *poppedNode = self.tail;
    if (self.head == self.tail) {
        self.head = nil;
        self.tail = nil;
        return poppedNode;
    }

    // More than one remain in the linked list
    // Loop through List to find one node before last node

    Node *node = self.head;
    while (node.next != self.tail) {
        printf("%d ->",node.value);
        node = node.next;
    }
    printf("%d\n\n\n",node.value);
    self.tail = node;
    
    return poppedNode;
    
}

- (int) count {
    int i = 0;
    Node *node = self.head;
    while (node != nil) {
        node = node.next;
        i++;
    }
    return i;
}

- (void)demo {
    Node *firstNode = [Node new];
    firstNode.value = 1;
    
    Node *secondNode = [Node new];
    secondNode.value = 3;
    
    Node *thirdNode = [Node new];
    thirdNode.value = 5;
    
    Node *forthNode = [Node new];
    forthNode.value = 7;
    
    Node *newHead = [Node new];
    newHead.value =  0;
    
    Node *newNewHead = [Node new];
    newNewHead.value = -1;
    
    
    [self pushToHead:newHead];
    [self pushToHead:newNewHead];
    
    [self showList];
    
    [self pushToTail:firstNode];
    [self pushToTail:secondNode];
    [self pushToTail:thirdNode];
    [self pushToTail:forthNode];
    
    [self showList];
    
    NSLog(@"\n\n\n");
    
    for (int i = 0; i < 6; i ++)
        [self popFromTail];
    
    [self showList];
}

@end