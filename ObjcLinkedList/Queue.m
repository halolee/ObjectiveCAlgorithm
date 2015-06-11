//
//  Queue.m
//  ObjcLinkedList
//
//  Created by Hao Li on 11/06/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import "Queue.h"

@implementation Queue
- (id)peek{
    return self.tail.value;
}

- (void)enqueue:(id)value{
    Node *node = [Node new];
    node.value = value;
    [self pushToHead:node];
}

- (id)dequeue{
    Node *node = [self popFromHead];
    return node.value;
}

- (void) demo {
    Queue *queue = [Queue new];
    
    [queue enqueue:@1];
    [queue enqueue:@2];
    [queue enqueue:@3];
    
    [queue showList];
    
    NSLog(@"%@",[queue peek]);
    
    [queue enqueue:@4];
    [queue enqueue:@5];
    
    [queue showList];
    
    NSLog(@"%@",[queue peek]);
    
    for (int i = 0; i < 5 ;i ++)
        NSLog(@"%@",[queue dequeue]);
    
    
}
@end
