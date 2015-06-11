//
//  QueueArray.h
//  ObjcLinkedList
//
//  Created by Hao Li on 11/06/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QueueArray : NSObject;

- (id)peek;
- (void)enqueue:(id)value;
- (id)dequeue;

- (void)demo;
@end
