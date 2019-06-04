(module ;; Module base64

    ;; Auto-Generated VisualBasic.NET WebAssembly Code
    ;;
    ;; WASM for VisualBasic.NET
    ;; 
    ;; version: 1.3.0.22
    ;; build: 6/4/2019 7:30:38 PM
    ;; 
    ;; Want to know how it works? please visit https://vanillavb.app/#compiler_design_notes

    ;; imports must occur before all non-import definitions

    ;; Declare Function Math.pow Lib "Math" Alias "pow" (a As f64, b As f64) As f64
    (func $Math.pow (import "Math" "pow") (param $a f64) (param $b f64) (result f64))
;; Declare Function Math.sqrt Lib "Math" Alias "sqrt" (a As f64) As f64
    (func $Math.sqrt (import "Math" "sqrt") (param $a f64) (result f64))
;; Declare Function Math.exp Lib "Math" Alias "exp" (x As f64) As f64
    (func $Math.exp (import "Math" "exp") (param $x f64) (result f64))
;; Declare Function Math.cos Lib "Math" Alias "cos" (x As f64) As f64
    (func $Math.cos (import "Math" "cos") (param $x f64) (result f64))
;; Declare Function Math.random Lib "Math" Alias "random" () As f64
    (func $Math.random (import "Math" "random")  (result f64))
;; Declare Function Math.ceil Lib "Math" Alias "ceil" (x As f64) As f64
    (func $Math.ceil (import "Math" "ceil") (param $x f64) (result f64))
;; Declare Function Math.floor Lib "Math" Alias "floor" (x As f64) As f64
    (func $Math.floor (import "Math" "floor") (param $x f64) (result f64))
;; Declare Function GC.addObject Lib "GC" Alias "addObject" (offset As i32, class_id As i32) As void
    (func $GC.addObject (import "GC" "addObject") (param $offset i32) (param $class_id i32) )
;; Declare Function isNaN Lib "Math" Alias "isNaN" (x As i32) As boolean
    (func $base64Encoder.isNaN (import "Math" "isNaN") (param $x i32) (result i32))
;; Declare Function string.replace Lib "string" Alias "replace" (input As string, find As intptr, replacement As string) As string
    (func $string.replace (import "string" "replace") (param $input i32) (param $find i32) (param $replacement i32) (result i32))
;; Declare Function string.add Lib "string" Alias "add" (a As string, b As string) As string
    (func $string.add (import "string" "add") (param $a i32) (param $b i32) (result i32))
;; Declare Function string.length Lib "string" Alias "length" (text As string) As i32
    (func $string.length (import "string" "length") (param $text i32) (result i32))
;; Declare Function string.indexOf Lib "string" Alias "indexOf" (input As string, find As string) As i32
    (func $string.indexOf (import "string" "indexOf") (param $input i32) (param $find i32) (result i32))
;; Declare Function regexp Lib "RegExp" Alias "regexp" (pattern As string, flag As string) As string
    (func $stringHelpers.regexp (import "RegExp" "regexp") (param $pattern i32) (param $flag i32) (result i32))
;; Declare Function fromCharCode Lib "string" Alias "fromCharCode" (c As i32) As string
    (func $stringHelpers.fromCharCode (import "string" "fromCharCode") (param $c i32) (result i32))
;; Declare Function charCodeAt Lib "string" Alias "charCodeAt" (text As string, index As i32) As i32
    (func $stringHelpers.charCodeAt (import "string" "charCodeAt") (param $text i32) (param $index i32) (result i32))
;; Declare Function charAt Lib "string" Alias "charAt" (text As string, index As i32) As string
    (func $stringHelpers.charAt (import "string" "charAt") (param $text i32) (param $index i32) (result i32))
;; Declare Function Join Lib "string" Alias "join" (array As list, delimiter As string) As string
    (func $stringHelpers.Join (import "string" "join") (param $array i32) (param $delimiter i32) (result i32))
;; Declare Function array.new Lib "Array" Alias "create" (size As i32) As list
    (func $array.new (import "Array" "create") (param $size i32) (result i32))
;; Declare Function string_array.push Lib "Array" Alias "push" (array As list, element As string) As list
    (func $string_array.push (import "Array" "push") (param $array i32) (param $element i32) (result i32))
;; Declare Function string_array.get Lib "Array" Alias "get" (array As list, index As i32) As string
    (func $string_array.get (import "Array" "get") (param $array i32) (param $index i32) (result i32))
;; Declare Function string_array.set Lib "Array" Alias "set" (array As list, index As i32, value As string) As void
    (func $string_array.set (import "Array" "set") (param $array i32) (param $index i32) (param $value i32) )
;; Declare Function array.length Lib "Array" Alias "length" (array As list) As i32
    (func $array.length (import "Array" "length") (param $array i32) (result i32))
;; Declare Function list_array.push Lib "Array" Alias "push" (array As list, element As list(Of string)) As list
    (func $list_array.push (import "Array" "push") (param $array i32) (param $element i32) (result i32))
;; Declare Function list_array.get Lib "Array" Alias "get" (array As list, index As i32) As list(Of string)
    (func $list_array.get (import "Array" "get") (param $array i32) (param $index i32) (result i32))
;; Declare Function list_array.set Lib "Array" Alias "set" (array As list, index As i32, value As list(Of string)) As void
    (func $list_array.set (import "Array" "set") (param $array i32) (param $index i32) (param $value i32) )
    
    ;; Only allows one memory block in each module
    (memory (import "env" "bytechunks") 1)

    ;; A global object manager for create user object in WebAssembly
    ;; Its initialize value is the total size of the string data
    ;; of this webassembly module
    (global $global.ObjectManager (mut i32) (i32.const 392))

    ;; memory allocate in javascript runtime
    (func $global.ObjectManager.Allocate (param $sizeof i32) (param $class_id i32) (result i32)
    ;; Public Function ObjectManager.Allocate(sizeof As i32, class_id As i32) As i32
    
(local $offset i32)

(set_local $offset (get_global $global.ObjectManager))
(set_global $global.ObjectManager (i32.add (get_local $offset) (get_local $sizeof)))
(call $GC.addObject (get_local $offset) (get_local $class_id))
(return (get_local $offset))
)
    (func $global.GetMemorySize  (result i32)
    ;; Public Function GetMemorySize() As i32
    


(return (get_global $global.ObjectManager))
)

    ;; Memory data for string constant
        
    ;; String from 13 with 65 bytes in memory
    (data (i32.const 13) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=\00")
    
    ;; String from 80 with 0 bytes in memory
    (data (i32.const 80) "\00")
    
    ;; String from 88 with 0 bytes in memory
    (data (i32.const 88) "\00")
    
    ;; String from 96 with 15 bytes in memory
    (data (i32.const 96) "[^A-Za-z0-9+/=]\00")
    
    ;; String from 112 with 1 bytes in memory
    (data (i32.const 112) "g\00")
    
    ;; String from 120 with 0 bytes in memory
    (data (i32.const 120) "\00")
    
    ;; String from 128 with 2 bytes in memory
    (data (i32.const 128) "rn\00")
    
    ;; String from 136 with 1 bytes in memory
    (data (i32.const 136) "g\00")
    
    ;; String from 144 with 1 bytes in memory
    (data (i32.const 144) "n\00")
    
    ;; String from 152 with 0 bytes in memory
    (data (i32.const 152) "\00")
    
    ;; String from 160 with 0 bytes in memory
    (data (i32.const 160) "\00")
    
    ;; String from 168 with 14 bytes in memory
    (data (i32.const 168) "base64 Encoder\00")
    
    ;; String from 184 with 53 bytes in memory
    (data (i32.const 184) "base64 Encoder written in VisualBasic.NET WebAssembly\00")
    
    ;; String from 240 with 3 bytes in memory
    (data (i32.const 240) "MIT\00")
    
    ;; String from 248 with 6 bytes in memory
    (data (i32.const 248) "base64\00")
    
    ;; String from 256 with 34 bytes in memory
    (data (i32.const 256) "Copyright (c) I@xieguigang.me 2019\00")
    
    ;; String from 296 with 19 bytes in memory
    (data (i32.const 296) "VisualBasic.wasm.js\00")
    
    ;; String from 320 with 36 bytes in memory
    (data (i32.const 320) "e9ba6299-1032-42ab-a760-25f246506c5b\00")
    
    ;; String from 360 with 12 bytes in memory
    (data (i32.const 360) "2.0.344.4444\00")
    
    ;; String from 376 with 10 bytes in memory
    (data (i32.const 376) "1.12.0.235\00")
    
    ;; Memory data for user defined class object its meta data
    ;; all of these string is base64 encoded json object
    

    ;; Pre-defined constant values
    (global $Math.E (mut f64) (f64.const 2.7182818284590451))
(global $Math.PI (mut f64) (f64.const 3.1415926535897931))
(global $Integer.MaxValue (mut i32) (i32.const 2147483647))
(global $Long.MaxValue (mut i64) (i64.const 9223372036854775807))
(global $Single.MaxValue (mut f32) (f32.const 3.40282347e+38))
(global $Double.MaxValue (mut f64) (f64.const 1.7976931348623157e+308))
(global $Integer.MinValue (mut i32) (i32.const -2147483648))
(global $Long.MinValue (mut i64) (i64.const -9223372036854775808))
(global $Single.MinValue (mut f32) (f32.const -3.40282347e+38))
(global $Double.MinValue (mut f64) (f64.const -1.7976931348623157e+308))

    ;; Global variables in this module
    (global $base64Encoder.keyStr (mut i32) (i32.const 13))

    ;; Export methods of this module
    (export "global.GetMemorySize" (func $global.GetMemorySize))

    ;; export from VB.NET module: [base64Encoder]
    
    (export "base64Encoder.encode" (func $base64Encoder.encode))
    (export "base64Encoder.decode" (func $base64Encoder.decode))
    
    
    ;; export from VB.NET module: [utf8]
    
    (export "utf8.utf8_encode" (func $utf8.utf8_encode))
    (export "utf8.utf8_decode" (func $utf8.utf8_decode))
    
    
    ;; export from VB.NET module: [AssemblyInfo]
    
    (export "AssemblyInfo.AssemblyTitle" (func $AssemblyInfo.AssemblyTitle))
    (export "AssemblyInfo.AssemblyDescription" (func $AssemblyInfo.AssemblyDescription))
    (export "AssemblyInfo.AssemblyCompany" (func $AssemblyInfo.AssemblyCompany))
    (export "AssemblyInfo.AssemblyProduct" (func $AssemblyInfo.AssemblyProduct))
    (export "AssemblyInfo.AssemblyCopyright" (func $AssemblyInfo.AssemblyCopyright))
    (export "AssemblyInfo.AssemblyTrademark" (func $AssemblyInfo.AssemblyTrademark))
    (export "AssemblyInfo.Guid" (func $AssemblyInfo.Guid))
    (export "AssemblyInfo.AssemblyVersion" (func $AssemblyInfo.AssemblyVersion))
    (export "AssemblyInfo.AssemblyFileVersion" (func $AssemblyInfo.AssemblyFileVersion))
    
     

    ;; functions in [base64Encoder]
    
    (func $base64Encoder.encode (param $text i32) (result i32)
        ;; Public Function encode(text As string) As string
        
    (local $base64 i32)
    (local $n i32)
    (local $r i32)
    (local $i i32)
    (local $s i32)
    (local $o i32)
    (local $u i32)
    (local $a i32)
    (local $f i32)
    
    (set_local $base64 (call $array.new (i32.const -1)))
    (set_local $n (i32.const 0))
    (set_local $r (i32.const 0))
    (set_local $i (i32.const 0))
    (set_local $s (i32.const 0))
    (set_local $o (i32.const 0))
    (set_local $u (i32.const 0))
    (set_local $a (i32.const 0))
    (set_local $f (i32.const 0))
    (set_local $text (call $utf8.utf8_encode (get_local $text)))
    ;; Do While (f < text.Length)
    ;; Start Do While Block block_9a020000
    
    (block $block_9a020000 
        (loop $loop_9b020000
    
                    (br_if $block_9a020000 (i32.eqz (i32.lt_s (get_local $f) (call $string.length (get_local $text)))))
            (set_local $n (call $stringHelpers.charCodeAt (get_local $text) (get_local $f)))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $r (call $stringHelpers.charCodeAt (get_local $text) (get_local $f)))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $i (call $stringHelpers.charCodeAt (get_local $text) (get_local $f)))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $s (i32.shr_s (get_local $n) (i32.const 2)))
            (set_local $o (i32.add (i32.shl (i32.mul (get_local $n) (i32.const 3)) (i32.const 4)) (i32.shr_s (get_local $r) (i32.const 4))))
            (set_local $u (i32.add (i32.shl (i32.mul (get_local $r) (i32.const 15)) (i32.const 2)) (i32.shr_s (get_local $i) (i32.const 6))))
            (set_local $a (i32.mul (get_local $i) (i32.const 63)))
            
    (if (call $base64Encoder.isNaN (get_local $r)) 
        (then
                    (set_local $a (i32.const 64))
            (set_local $u (get_local $a))
        ) 
    )
            (drop (call $string_array.push (get_local $base64) (call $stringHelpers.charAt (get_global $base64Encoder.keyStr) (get_local $s))))
            (drop (call $string_array.push (get_local $base64) (call $stringHelpers.charAt (get_global $base64Encoder.keyStr) (get_local $o))))
            (drop (call $string_array.push (get_local $base64) (call $stringHelpers.charAt (get_global $base64Encoder.keyStr) (get_local $u))))
            (drop (call $string_array.push (get_local $base64) (call $stringHelpers.charAt (get_global $base64Encoder.keyStr) (get_local $a))))
            (br $loop_9b020000)
    
        )
    )
    ;; End Loop loop_9b020000
    (return (call $stringHelpers.Join (get_local $base64) (i32.const 80)))
    )
    
    
    (func $base64Encoder.decode (param $base64 i32) (result i32)
        ;; Public Function decode(base64 As string) As string
        
    (local $text i32)
    (local $n i32)
    (local $r i32)
    (local $i i32)
    (local $s i32)
    (local $o i32)
    (local $u i32)
    (local $a i32)
    (local $f i32)
    (local $symbolsNotallowed i32)
    
    (set_local $text (i32.const 88))
    (set_local $n (i32.const 0))
    (set_local $r (i32.const 0))
    (set_local $i (i32.const 0))
    (set_local $s (i32.const 0))
    (set_local $o (i32.const 0))
    (set_local $u (i32.const 0))
    (set_local $a (i32.const 0))
    (set_local $f (i32.const 0))
    (set_local $symbolsNotallowed (call $stringHelpers.regexp (i32.const 96) (i32.const 112)))
    (set_local $base64 (call $string.replace (get_local $base64) (get_local $symbolsNotallowed) (i32.const 120)))
    ;; Do While (f < base64.Length)
    ;; Start Do While Block block_9c020000
    
    (block $block_9c020000 
        (loop $loop_9d020000
    
                    (br_if $block_9c020000 (i32.eqz (i32.lt_s (get_local $f) (call $string.length (get_local $base64)))))
            (set_local $s (call $string.indexOf (get_global $base64Encoder.keyStr) (call $stringHelpers.charAt (get_local $base64) (get_local $f))))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $o (call $string.indexOf (get_global $base64Encoder.keyStr) (call $stringHelpers.charAt (get_local $base64) (get_local $f))))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $u (call $string.indexOf (get_global $base64Encoder.keyStr) (call $stringHelpers.charAt (get_local $base64) (get_local $f))))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $a (call $string.indexOf (get_global $base64Encoder.keyStr) (call $stringHelpers.charAt (get_local $base64) (get_local $f))))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $n (i32.add (i32.shl (get_local $s) (i32.const 2)) (i32.shr_s (get_local $o) (i32.const 4))))
            (set_local $r (i32.add (i32.shl (i32.mul (get_local $o) (i32.const 15)) (i32.const 4)) (i32.shr_s (get_local $u) (i32.const 2))))
            (set_local $i (i32.add (i32.shl (i32.mul (get_local $u) (i32.const 3)) (i32.const 6)) (get_local $a)))
            (set_local $text (call $string.add (get_local $text) (call $stringHelpers.fromCharCode (get_local $n))))
            
    (if (i32.ne (get_local $u) (i32.const 64)) 
        (then
                    (set_local $text (call $string.add (get_local $text) (call $stringHelpers.fromCharCode (get_local $r))))
        ) 
    )
            
    (if (i32.ne (get_local $a) (i32.const 64)) 
        (then
                    (set_local $text (call $string.add (get_local $text) (call $stringHelpers.fromCharCode (get_local $i))))
        ) 
    )
            (br $loop_9d020000)
    
        )
    )
    ;; End Loop loop_9d020000
    (set_local $text (call $utf8.utf8_decode (get_local $text)))
    (return (get_local $text))
    )
    
    
    
    
    ;; functions in [utf8]
    
    (func $utf8.utf8_encode (param $text i32) (result i32)
        ;; Public Function utf8_encode(text As string) As string
        
    (local $chars i32)
    (local $n i32)
    (local $r i32)
    
    (set_local $chars (call $array.new (i32.const -1)))
    (set_local $text (call $string.replace (get_local $text) (call $stringHelpers.regexp (i32.const 128) (i32.const 136)) (i32.const 144)))
    (set_local $n (i32.const 0))
    ;; For n As Integer = 0 To text.Length - 1
    
    (block $block_9e020000 
        (loop $loop_9f020000
    
                    (br_if $block_9e020000 (i32.gt_s (get_local $n) (i32.sub (call $string.length (get_local $text)) (i32.const 1))))
            (set_local $r (call $stringHelpers.charCodeAt (get_local $text) (get_local $n)))
            
    (if (i32.lt_s (get_local $r) (i32.const 128)) 
        (then
                    (drop (call $string_array.push (get_local $chars) (call $stringHelpers.fromCharCode (get_local $r))))
        ) (else
                    (drop (call $string_array.push (get_local $chars) (call $stringHelpers.fromCharCode (i32.add (i32.shr_s (get_local $r) (i32.const 12)) (i32.const 224)))))
            (drop (call $string_array.push (get_local $chars) (call $stringHelpers.fromCharCode (i32.add (i32.mul (i32.shr_s (get_local $r) (i32.const 6)) (i32.const 63)) (i32.const 128)))))
            (drop (call $string_array.push (get_local $chars) (call $stringHelpers.fromCharCode (i32.add (i32.mul (get_local $r) (i32.const 63)) (i32.const 128)))))
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $n (i32.add (get_local $n) (i32.const 1)))
            (br $loop_9f020000)
            ;; For Loop Next On loop_9f020000
    
        )
    )
    (return (call $stringHelpers.Join (get_local $chars) (i32.const 152)))
    )
    
    
    (func $utf8.utf8_decode (param $text i32) (result i32)
        ;; Public Function utf8_decode(text As string) As string
        
    (local $t i32)
    (local $n i32)
    (local $r i32)
    (local $c2 i32)
    (local $c3 i32)
    
    (set_local $t (call $array.new (i32.const -1)))
    (set_local $n (i32.const 0))
    (set_local $r (i32.const 0))
    (set_local $c2 (i32.const 0))
    (set_local $c3 (i32.const 0))
    ;; Do While (n < text.Length)
    ;; Start Do While Block block_a0020000
    
    (block $block_a0020000 
        (loop $loop_a1020000
    
                    (br_if $block_a0020000 (i32.eqz (i32.lt_s (get_local $n) (call $string.length (get_local $text)))))
            (set_local $r (call $stringHelpers.charCodeAt (get_local $text) (get_local $n)))
            
    (if (i32.lt_s (get_local $r) (i32.const 128)) 
        (then
                    (drop (call $string_array.push (get_local $t) (call $stringHelpers.fromCharCode (get_local $r))))
            (set_local $n (i32.add (get_local $n) (i32.const 1)))
        ) (else
                    (set_local $c2 (call $stringHelpers.charCodeAt (get_local $text) (i32.add (get_local $n) (i32.const 1))))
            (set_local $c3 (call $stringHelpers.charCodeAt (get_local $text) (i32.add (get_local $n) (i32.const 2))))
            (drop (call $string_array.push (get_local $t) (call $stringHelpers.fromCharCode (i32.add (i32.add (i32.shl (i32.mul (get_local $r) (i32.const 15)) (i32.const 12)) (i32.shl (i32.mul (get_local $c2) (i32.const 63)) (i32.const 6))) (i32.mul (get_local $c3) (i32.const 63))))))
            (set_local $n (i32.add (get_local $n) (i32.const 3)))
        )
    )
            (br $loop_a1020000)
    
        )
    )
    ;; End Loop loop_a1020000
    (return (call $stringHelpers.Join (get_local $t) (i32.const 160)))
    )
    
    
    
    
    ;; functions in [AssemblyInfo]
    
    (func $AssemblyInfo.AssemblyTitle  (result i32)
        ;; Public Function AssemblyTitle() As string
        
    
    
    (return (i32.const 168))
    )
    
    
    (func $AssemblyInfo.AssemblyDescription  (result i32)
        ;; Public Function AssemblyDescription() As string
        
    
    
    (return (i32.const 184))
    )
    
    
    (func $AssemblyInfo.AssemblyCompany  (result i32)
        ;; Public Function AssemblyCompany() As string
        
    
    
    (return (i32.const 240))
    )
    
    
    (func $AssemblyInfo.AssemblyProduct  (result i32)
        ;; Public Function AssemblyProduct() As string
        
    
    
    (return (i32.const 248))
    )
    
    
    (func $AssemblyInfo.AssemblyCopyright  (result i32)
        ;; Public Function AssemblyCopyright() As string
        
    
    
    (return (i32.const 256))
    )
    
    
    (func $AssemblyInfo.AssemblyTrademark  (result i32)
        ;; Public Function AssemblyTrademark() As string
        
    
    
    (return (i32.const 296))
    )
    
    
    (func $AssemblyInfo.Guid  (result i32)
        ;; Public Function Guid() As string
        
    
    
    (return (i32.const 320))
    )
    
    
    (func $AssemblyInfo.AssemblyVersion  (result i32)
        ;; Public Function AssemblyVersion() As string
        
    
    
    (return (i32.const 360))
    )
    
    
    (func $AssemblyInfo.AssemblyFileVersion  (result i32)
        ;; Public Function AssemblyFileVersion() As string
        
    
    
    (return (i32.const 376))
    )
    
    
    


    ;; Application Initialize
    ;; 
    ;; Sub New
    (func $Application_SubNew
        ;; call of the global variable initialize
        (call $global.initializer )

        (call $base64Encoder.constructor )

(call $utf8.constructor )

(call $stringHelpers.constructor )
    )

    ;; Initializer for global variables if it is not a primitive abstract type
    (func $global.initializer  
    ;; Public Function initializer() As void
    



)

    (func $base64Encoder.constructor  
    ;; Public Function constructor() As void
    



)

(func $utf8.constructor  
    ;; Public Function constructor() As void
    



)

(func $stringHelpers.constructor  
    ;; Public Function constructor() As void
    



)

    (start $Application_SubNew)
)