#import <Foundation/Foundation.h>
#import "parser.h"

@implementation Parser

  -(id)initWithFile:(NSString*)file {
    [super init];
    
    NSString *program = [NSString stringWithContentsOfFile:file
      encoding:NSUTF8StringEncoding 
      error:NULL];
      
    commands = [program componentsSeparatedByString:@"\n"];
    commands_index = 0;
    
    return self;
  }
  
  -(bool)hasMoreCommands {
    
    if ( [commands count] == commands_index ) {
      return false;
    } else {
      return true;
    }
    
  }
  
  -(void)advance {
    commands_index++;
  }
  
  -(COMMAND)commandType {
    
    NSString *command = [commands objectAtIndex:commands_index];
    NSString *first   = [command substringToIndex:1];
    
    if ( [first isEqualToString:@"@"] ) {
      return A_COMMAND;
    } else if ( [first isEqualToString:@"("] ) {
      return L_COMMAND;
    } else {
      return C_COMMAND;
    }  
  }

  // Returns the symbol in @xxx or (xxx)
  // Only valid for L commands and A commands

  -(NSString*)symbol {
    
    NSString *command = [commands objectAtIndex:commands_index];
    NSString *symbol;
    
    if ( [self commandType] == L_COMMAND ) {
      NSRange range  = NSMakeRange( 1, [command length] - 2 );
      symbol = [command substringWithRange:range];
    } else if ( [self commandType] == A_COMMAND ) {
      symbol = [command substringFromIndex:1];
    }

    return symbol;
    
  }
  
  -(NSString*)dest {
    
  }
  
  -(NSString*)comp {
    return @"test";
  }
  
  -(NSString*)jump {
    return @"test";
  }

@end