//
//  main.m
//  WeakLinks
//
//  Created by Alex Gray on 2/16/16.
//  Copyright © 2016 MrGray.com, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

/*! @note This (checking of weakly typed functions) works...

	because of the flag in compiler's settings...

	OTHER_LDFLAGS = -undefined dynamic_lookup

	per algoholic's sduggestion @ http://stackoverflow.com/a/35425700/547214

*/

extern int MyWeakLinkedFunction() __attribute__((weak));

int main() { return MyWeakLinkedFunction != NULL ? MyWeakLinkedFunction() : 1; }

