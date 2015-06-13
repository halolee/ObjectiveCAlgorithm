//
//  QueuePriority.h
//  ObjcLinkedList
//
//  Created by Hao Li on 13/06/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import "LinkedList.h"

@interface QueuePriority : LinkedList
- (id)peek;
- (void)enqueue:(id)value;
- (id)dequeue;

- (void)demo;
@end
