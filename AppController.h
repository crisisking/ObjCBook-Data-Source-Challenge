//
//  AppController.h
//  DataSourceChallenge
//
//  Created by Bryan Koroleski on 10/10/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface AppController : NSObject {
    
    IBOutlet NSTextField *input;
    IBOutlet NSTableView *table;
    NSMutableArray *tasks;
    
}

- (IBAction)addTask:(id)sender;

@end
