package react.native.parsedtext;

import react.ReactComponent;

import js.lib.RegExp;
import react.native.component.props.TextProps;
import react.native.component.props.TextStyle;

typedef ParseText = {
    ?type: String,
    ?pattern: RegExp,
    ?style: TextStyle,
    ?onPress: (matched:String, matchIndex:Int)->Void,
    ?renderText: (matching:String, matches:Array<String>)->String,
}

typedef ParsedTextProps = {
    > TextProps,
    ?parse: Array<ParseText>,
    ?renderText: (matchingString:String, matches:Array<String>)->String,
    ?childrenProps: TextProps
}

@:jsRequire('react-native-parsed-text','default')
extern class ParsedText extends ReactComponentOfProps<ParsedTextProps> {}
