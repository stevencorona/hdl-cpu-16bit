#import <Foundation/Foundation.h>
#import "parser.h"

int main( int argc, const char *argv[] ) {
    
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  NSString *filename = [NSString stringWithUTF8String:argv[1]];
  Parser *parser = [[Parser alloc] initWithFile:filename];
  
  NSMutableArray *compiled = [[NSMutableArray alloc] init];
  bool command[16];
  
  // Loop until the parser runs out of assembly commands
  while ( [parser hasMoreCommands] == true ) {

    if ( [parser commandType] == A_COMMAND ) {
      command[15] = 0;
      
      [compiled addObject:binaryCommand];
      
    } else if ( [parser commandType] == L_COMMAND ) {
    
    
      
    } else if ( [parser commandType] == C_COMMAND ) {
      
    }   
    
    [parser advance];
    
  }
  
  
  [pool release];
    
  return 0;
}
