//
//  AppController.m
//  DataSourceChallenge
//
//  Created by Bryan Koroleski on 10/10/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (id)init {
    if ((self = [super init])) {
        tasks = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (IBAction)addTask:(id)sender {
    [tasks addObject:[input stringValue]];
    [input setStringValue:@""];
    [table reloadData];
}

- (int)numberOfRowsInTableView:(NSTableView *)tableView {
    return [tasks count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    return [tasks objectAtIndex:row];
    
}

- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    [tasks replaceObjectAtIndex:row withObject:object];
}

- (void)dealloc {
    // Clean-up code here.
    [tasks release];
    [super dealloc];
}

@end
