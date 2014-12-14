#import <stdio.h>
#import <stdlib.h>
#import <Foundation/Foundation.h>

int main(int argc, const char* argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSArray *messages = [NSArray arrayWithObjects:@"One", @"Two", @"Three", @"Four"];
    srand(time(NULL));
    NSUInteger randomIndex = rand() % [messages count]; 
    NSLog(@"%@", [messages objectAtIndex:randomIndex]);
    [pool drain];
    return 0;
}
