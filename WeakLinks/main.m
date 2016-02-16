//
//  main.m
//  WeakLinks
//
//  Created by Alex Gray on 2/16/16.
//  Copyright © 2016 MrGray.com, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

extern int MyWeakLinkedFunction() __attribute__((weak_import));

int main(int argc, const char * argv[]) {
	@autoreleasepool {

    if (MyWeakLinkedFunction != NULL)
        return MyWeakLinkedFunction();
	}
    return 0;
}

