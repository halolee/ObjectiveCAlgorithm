//
//  Stack.m
//  ObjcLinkedList
//
//  Created by Hao Li on 30/05/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import "Stack.h"

@implementation Stack

- (void) push:(id)value {
    Node *node = [Node new];
    node.value = value ;
    [self pushToHead:node];
}

- (id) pop {
   Node *node = [self popFromHead];
    
    return node.value;
}

- (id) peek{
    return self.head.value;
}

- (void) demo{
    Stack *stack = [Stack new];
    
    [stack push:@5];
    [stack push:@3];
    [stack push:@1];
    
    [stack showList];
    
    [stack peek];
    
    [stack showList];
    
    for (int i = 0; i<10; i++){
        id value = [stack pop];
        NSLog(@"Pop value %d",value == nil? INT_MIN:[value intValue]);
    }
    
}

@end
