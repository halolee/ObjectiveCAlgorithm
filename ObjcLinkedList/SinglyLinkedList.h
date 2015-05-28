//
//  SinglyLinkedList.h
//  ObjcLinkedList
//
//  Created by Halo Lee on 28/05/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface SinglyLinkedList:NSObject
@property (nonatomic, strong) Node *head;
@property (nonatomic, strong) Node *tail;

- (int) count;

- (void) demo;

- (void) showList;

- (void) pushToHead:(Node *) newHeadNode;
- (void) pushToTail:(Node *) newTailNode;

- (Node *) popFromHead;
- (Node *) popFromTail;

@end