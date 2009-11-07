#import <Foundation/Foundation.h>
#import "parser.h"

// These constants come from the parser.h file
extern const A_COMMAND;
extern const C_COMMAND;
extern const L_COMMAND;  

int main(void*i) {
    
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  Parser *parser = [[Parser alloc] initWithFile:@"filename"];
  
  while ( [parser hasMoreCommands] == true ) {
    [parser advance];
    
    if ( [parser commandType] == A_COMMAND ) {
      
    } else if ( [parser commandType] == C_COMMAND ) {
      
    }
    
  }
  
  [pool release];
  
  return 0;
}
