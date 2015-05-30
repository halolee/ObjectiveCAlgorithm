//
//  Stack.h
//  ObjcLinkedList
//
//  Created by Hao Li on 30/05/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//


/*
 Linked List Stack
 
 Pro
    * No hard size (depth) limit
    * Easy to implement
        No bounds checking
        Empty list = Empty stack
 
 Con
    * Memory allocation on push
    * Per-node memory overhead
    * Potential performance issues
 
 */

#import "LinkedList.h"

@interface Stack : LinkedList

- (void) push:(int)value;
- (int) pop;
- (int) peek;

@end
