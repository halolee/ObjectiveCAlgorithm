//
//  Stack.m
//  ObjcLinkedList
//
//  Created by Hao Li on 30/05/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import "Stack.h"

@implementation Stack

- (void) push:(int)value {
    Node *node = [Node new];
    node.value = value;
    [self pushToHead:node];
}

- (int) pop {
   Node *node = [self popFromHead];
    
    return node==nil?-1:node.value;
}

- (int) peek{
    Node *node = [self popFromHead];
    [self pushToHead:node];
    return node.value;
}

- (void) demo{
    Stack *stack = [Stack new];
    
    [stack push:5];
    [stack push:3];
    [stack push:1];
    
    [stack showList];
    
    [stack peek];
    
    [stack showList];
    
    for (int i = 0; i<10; i++)
        NSLog(@"Pop value %d",[stack pop]);
    
}

@end
