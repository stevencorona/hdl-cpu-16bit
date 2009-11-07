#import <Foundation/Foundation.h>
#import "parser.h"

// These constants come from the parser.h file
extern const A_COMMAND;
extern const C_COMMAND;
extern const L_COMMAND;  

int main( int argc, const char *argv[] ) {
    
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  NSString *filename = [NSString stringWithUTF8String:argv[1]];
  Parser *parser = [[Parser alloc] initWithFile:filename];
  
  // Loop until the parser runs out of assembly commands
  while ( [parser hasMoreCommands] == true ) {
    [parser advance];
    NSLog(@"advancing\n");
    if ( [parser commandType] == A_COMMAND ) {
      
    } else if ( [parser commandType] == C_COMMAND ) {
      
    }
    
  }
  
  [pool release];
  
  return 0;
}
