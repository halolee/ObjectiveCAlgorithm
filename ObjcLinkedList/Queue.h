//
//  Queue.h
//  ObjcLinkedList
//
//  Created by Hao Li on 11/06/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

/*
    Data items stored in LinkedList <T>
    Enqueu with AddLast
    LinkedList Head is Queue Head
    Dequeue with Remove First
 
 */

#import "LinkedList.h"

@interface Queue : LinkedList

- (id)peek;
- (void)enqueue:(id)value;
- (id)dequeue;

- (void)demo;
@end
