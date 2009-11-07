#import <Foundation/Foundation.h>
#import "parser.h"

@implementation Parser

  -(id)initWithFile:(NSString*)file {
    [super init];
    
    NSString *program = [NSString stringWithContentsOfFile:file
      encoding:NSASCIIStringEncoding 
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
    return L_COMMAND;
  }
  
  -(NSString*)symbol {
    return @"test";
  }
  
  -(NSString*)dest {
    return @"test";
  }
  
  -(NSString*)comp {
    return @"test";
  }
  
  -(NSString*)jump {
    return @"test";
  }

@end