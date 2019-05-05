(module ;; Module base64

    ;; Auto-Generated VisualBasic.NET WebAssembly Code
    ;;
    ;; WASM for VisualBasic.NET
    ;; 
    ;; version: 1.3.0.22
    ;; build: 5/1/2019 5:55:45 PM
    ;; 
    ;; Want to know how it works? please visit https://vanillavb.app/#compiler_design_notes

    ;; imports must occur before all non-import definitions

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
    ;; Declare Function array.new Lib "Array" Alias "create" (size As i32) As array
    (func $array.new (import "Array" "create") (param $size i32) (result i32))
    ;; Declare Function string_array.push Lib "Array" Alias "push" (array As array, element As string) As array
    (func $string_array.push (import "Array" "push") (param $array i32) (param $element i32) (result i32))
    ;; Declare Function string_array.get Lib "Array" Alias "get" (array As array, index As i32) As string
    (func $string_array.get (import "Array" "get") (param $array i32) (param $index i32) (result i32))
    ;; Declare Function string_array.set Lib "Array" Alias "set" (array As array, index As i32, value As string) As void
    (func $string_array.set (import "Array" "set") (param $array i32) (param $index i32) (param $value i32) )
    ;; Declare Function array.length Lib "Array" Alias "length" (array As array) As i32
    (func $array.length (import "Array" "length") (param $array i32) (result i32))
    
    ;; Only allows one memory block in each module
    (memory (import "env" "bytechunks") 1)

    ;; Memory data for string constant
    
    ;; String from 1 with 65 bytes in memory
    (data (i32.const 1) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=\00")

    ;; String from 67 with 0 bytes in memory
    (data (i32.const 67) "\00")

    ;; String from 68 with 0 bytes in memory
    (data (i32.const 68) "\00")

    ;; String from 69 with 15 bytes in memory
    (data (i32.const 69) "[^A-Za-z0-9+/=]\00")

    ;; String from 85 with 1 bytes in memory
    (data (i32.const 85) "g\00")

    ;; String from 87 with 0 bytes in memory
    (data (i32.const 87) "\00")

    ;; String from 88 with 2 bytes in memory
    (data (i32.const 88) "rn\00")

    ;; String from 91 with 1 bytes in memory
    (data (i32.const 91) "g\00")

    ;; String from 93 with 1 bytes in memory
    (data (i32.const 93) "n\00")

    ;; String from 95 with 0 bytes in memory
    (data (i32.const 95) "\00")

    ;; String from 96 with 0 bytes in memory
    (data (i32.const 96) "\00")

    ;; String from 97 with 14 bytes in memory
    (data (i32.const 97) "base64 Encoder\00")

    ;; String from 112 with 53 bytes in memory
    (data (i32.const 112) "base64 Encoder written in VisualBasic.NET WebAssembly\00")

    ;; String from 166 with 3 bytes in memory
    (data (i32.const 166) "MIT\00")

    ;; String from 170 with 6 bytes in memory
    (data (i32.const 170) "base64\00")

    ;; String from 177 with 34 bytes in memory
    (data (i32.const 177) "Copyright (c) I@xieguigang.me 2019\00")

    ;; String from 212 with 19 bytes in memory
    (data (i32.const 212) "VisualBasic.wasm.js\00")

    ;; String from 232 with 36 bytes in memory
    (data (i32.const 232) "e9ba6299-1032-42ab-a760-25f246506c5b\00")

    ;; String from 269 with 12 bytes in memory
    (data (i32.const 269) "2.0.344.4444\00")

    ;; String from 282 with 10 bytes in memory
    (data (i32.const 282) "1.12.0.235\00")
    
    (global $base64Encoder.keyStr (mut i32) (i32.const 1))

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
            (set_local $o (i32.or (i32.shl (i32.and (get_local $n) (i32.const 3)) (i32.const 4)) (i32.shr_s (get_local $r) (i32.const 4))))
            (set_local $u (i32.or (i32.shl (i32.and (get_local $r) (i32.const 15)) (i32.const 2)) (i32.shr_s (get_local $i) (i32.const 6))))
            (set_local $a (i32.and (get_local $i) (i32.const 63)))
            
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
    (return (call $stringHelpers.Join (get_local $base64) (i32.const 67)))
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
    (set_local $text (i32.const 68))
    (set_local $f (i32.const 0))
    (set_local $symbolsNotallowed (call $stringHelpers.regexp (i32.const 69) (i32.const 85)))
    (set_local $base64 (call $string.replace (get_local $base64) (get_local $symbolsNotallowed) (i32.const 87)))
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
            (set_local $n (i32.or (i32.shl (get_local $s) (i32.const 2)) (i32.shr_s (get_local $o) (i32.const 4))))
            (set_local $r (i32.or (i32.shl (i32.and (get_local $o) (i32.const 15)) (i32.const 4)) (i32.shr_s (get_local $u) (i32.const 2))))
            (set_local $i (i32.or (i32.shl (i32.and (get_local $u) (i32.const 3)) (i32.const 6)) (get_local $a)))
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
    (set_local $text (call $string.replace (get_local $text) (call $stringHelpers.regexp (i32.const 88) (i32.const 91)) (i32.const 93)))
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
                    (drop (call $string_array.push (get_local $chars) (call $stringHelpers.fromCharCode (i32.or (i32.shr_s (get_local $r) (i32.const 12)) (i32.const 224)))))
            (drop (call $string_array.push (get_local $chars) (call $stringHelpers.fromCharCode (i32.or (i32.and (i32.shr_s (get_local $r) (i32.const 6)) (i32.const 63)) (i32.const 128)))))
            (drop (call $string_array.push (get_local $chars) (call $stringHelpers.fromCharCode (i32.or (i32.and (get_local $r) (i32.const 63)) (i32.const 128)))))
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $n (i32.add (get_local $n) (i32.const 1)))
            (br $loop_9f020000)
            ;; For Loop Next On loop_9f020000
    
        )
    )
    (return (call $stringHelpers.Join (get_local $chars) (i32.const 95)))
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
            (drop (call $string_array.push (get_local $t) (call $stringHelpers.fromCharCode (i32.or (i32.or (i32.shl (i32.and (get_local $r) (i32.const 15)) (i32.const 12)) (i32.shl (i32.and (get_local $c2) (i32.const 63)) (i32.const 6))) (i32.and (get_local $c3) (i32.const 63))))))
            (set_local $n (i32.add (get_local $n) (i32.const 3)))
        )
    )
            (br $loop_a1020000)
    
        )
    )
    ;; End Loop loop_a1020000
    (return (call $stringHelpers.Join (get_local $t) (i32.const 96)))
    )
    
    
    ;; functions in [AssemblyInfo]
    
    (func $AssemblyInfo.AssemblyTitle  (result i32)
        ;; Public Function AssemblyTitle() As string
        
    (return (i32.const 97))
    )
    (func $AssemblyInfo.AssemblyDescription  (result i32)
        ;; Public Function AssemblyDescription() As string
        
    (return (i32.const 112))
    )
    (func $AssemblyInfo.AssemblyCompany  (result i32)
        ;; Public Function AssemblyCompany() As string
        
    (return (i32.const 166))
    )
    (func $AssemblyInfo.AssemblyProduct  (result i32)
        ;; Public Function AssemblyProduct() As string
        
    (return (i32.const 170))
    )
    (func $AssemblyInfo.AssemblyCopyright  (result i32)
        ;; Public Function AssemblyCopyright() As string
        
    (return (i32.const 177))
    )
    (func $AssemblyInfo.AssemblyTrademark  (result i32)
        ;; Public Function AssemblyTrademark() As string
        
    (return (i32.const 212))
    )
    (func $AssemblyInfo.Guid  (result i32)
        ;; Public Function Guid() As string
        
    (return (i32.const 232))
    )
    (func $AssemblyInfo.AssemblyVersion  (result i32)
        ;; Public Function AssemblyVersion() As string
        
    (return (i32.const 269))
    )
    (func $AssemblyInfo.AssemblyFileVersion  (result i32)
        ;; Public Function AssemblyFileVersion() As string
        
    (return (i32.const 282))
    )
    )