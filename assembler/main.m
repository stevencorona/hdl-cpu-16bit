#import <Foundation/Foundation.h>
#import "parser.h"

int main( int argc, const char *argv[] ) {
    
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  NSString *filename = [NSString stringWithUTF8String:argv[1]];
  Parser *parser = [[Parser alloc] initWithFile:filename];
  
  // Loop until the parser runs out of assembly commands
  while ( [parser hasMoreCommands] == true ) {
    [parser advance];
    NSLog(@"advancing\n");
    if ( [parser commandType] == A_COMMAND ) {
      
    } else if ( [parser commandType] == L_COMMAND ) {
      NSLog(@"here\n");
    }
    
  }
  
  [pool release];
  
  return 0;
}
