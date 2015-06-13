//
//  QueuePriority.m
//  ObjcLinkedList
//
//  Created by Hao Li on 13/06/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import "QueuePriority.h"

@implementation QueuePriority
- (id)peek{
    return self.head.value;
}

- (void)enqueue:(id)value{
    // if the list is empty, just add the item
    if (self.count == 0){
        Node *item = [Node new];
        item.value = value;
        [self pushToTail:item];
    }
    else {
        // find the proper insert point
        Node *current = self.head;
        Node *item = [Node new];
        item.value = value;
        
        // while we're not at the end of the list and the current value is larger than the value being inserted ...
        while (current != nil && current.value > value){
            current = current.next;
        }
        
        if (current == nil) {
            // we made it to the end of the list
            [self pushToTail:item];
        }
        else {
            // the current item is <= the one being added so add the item before it
            [self addNodeBeforeNode:current forItem:item];
        }
    }
}


- (id)dequeue{
    Node *node = [self popFromHead];
    return node.value;
}

- (void) demo {
    QueuePriority *queue = [QueuePriority new];
    
    [queue enqueue:@2];
    [queue enqueue:@1];
    [queue enqueue:@3];
    
    [queue showList];
    
    NSLog(@"%@\n",[queue peek]);
    
    [queue enqueue:@4];
    [queue enqueue:@5];
    
    [queue showList];
    
    NSLog(@"%@\n",[queue peek]);
    
    for (int i = 0; i < 5 ;i ++)
        NSLog(@"%@\n",[queue dequeue]);
    
    
    for (int i = 0; i < 3; i ++) {
        
        // Enqueue 6 random number
        for (int i = 0; i < 6; i++) {
            [queue enqueue:[NSNumber numberWithInt:rand()%200]];
            [queue showList];
        }
        
        // Deque 2 random number
        for (int i = 0; i < 2; i ++) {
           NSLog(@"Deque %@\n",[queue dequeue]);
            [queue showList];
        }
        
    }
    
}
@end
