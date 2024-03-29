#include <UIKit/UIKit.h>
#import <dlfcn.h>

%ctor {
    @autoreleasepool {
    	NSString *libraryPath = @"/var/jb/Library/Application Support/RevealLoader/RevealServer";

    	if ([[NSFileManager defaultManager] fileExistsAtPath:libraryPath]) {
    		void *handle = dlopen([libraryPath UTF8String], RTLD_NOW);
			if (handle) {
				NSLog(@"[MIKEJING RevealLoader] open success!");
				[[NSNotificationCenter defaultCenter] postNotificationName:@"IBARevealRequestStart" object:nil];
			} else {
				NSLog(@"[MIKEJING RevealLoader] open failed!");
			}
    	} else {
			NSLog(@"[MIKEJING RevealLoader] file not found!");
    	}

		
    }
}


// #include <dlfcn.h>
// #include <UIKit/UIKit.h>
// %ctor 
// {
// 	NSString *libraryPath = @"/Library/Frameworks/RevealServer.framework/RevealServer";
//         if ([[NSFileManager defaultManager] fileExistsAtPath:libraryPath])
//         {
//             void *addr = dlopen([libraryPath UTF8String], RTLD_NOW);
//             if (addr)
//             {
//                 [[NSNotificationCenter defaultCenter] postNotificationName:@"IBARevealRequestStart" object:nil];
//                 NSLog(@"[MIKEJING RevealLoader]: loaded %@ successful, address %p", libraryPath, addr);
//             }
//             else
//             {
//                 NSLog(@"[MIKEJING RevealLoader]: loaded %@ failed, address %p", libraryPath,addr);
//             }
//         } else {
//             NSLog(@"[MIKEJING RevealLoader]: file not found %@", libraryPath);
//         }
// }
