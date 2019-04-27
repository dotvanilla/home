(module ;; Module base64

    ;; Auto-Generated VisualBasic.NET WebAssembly Code
    ;;
    ;; WASM for VisualBasic.NET
    ;; 
    ;; version: 1.3.0.22
    ;; build: 4/27/2019 9:37:32 PM
    ;; 
    ;; Want to know how it works? please visit https://vanillavb.app/#compiler_design_notes

    ;; imports must occur before all non-import definitions

    ;; Declare Function isNaN Lib "Math" Alias "isNaN" (x As i32) As boolean
    (func $isNaN (import "Math" "isNaN") (param $x i32) (result i32))
    ;; Declare Function print Lib "console" Alias "log" (obj As any) As void
    (func $print (import "console" "log") (param $obj i32) )
    ;; Declare Function string_replace Lib "string" Alias "replace" (input As string, find As intptr, replacement As string) As string
    (func $string_replace (import "string" "replace") (param $input i32) (param $find i32) (param $replacement i32) (result i32))
    ;; Declare Function string_add Lib "string" Alias "add" (a As string, b As string) As string
    (func $string_add (import "string" "add") (param $a i32) (param $b i32) (result i32))
    ;; Declare Function string_length Lib "string" Alias "length" (text As string) As i32
    (func $string_length (import "string" "length") (param $text i32) (result i32))
    ;; Declare Function string_indexOf Lib "string" Alias "indexOf" (input As string, find As string) As i32
    (func $string_indexOf (import "string" "indexOf") (param $input i32) (param $find i32) (result i32))
    ;; Declare Function regexp Lib "RegExp" Alias "regexp" (pattern As string, flag As string) As string
    (func $regexp (import "RegExp" "regexp") (param $pattern i32) (param $flag i32) (result i32))
    ;; Declare Function fromCharCode Lib "string" Alias "fromCharCode" (c As i32) As string
    (func $fromCharCode (import "string" "fromCharCode") (param $c i32) (result i32))
    ;; Declare Function charCodeAt Lib "string" Alias "charCodeAt" (text As string, index As i32) As i32
    (func $charCodeAt (import "string" "charCodeAt") (param $text i32) (param $index i32) (result i32))
    ;; Declare Function charAt Lib "string" Alias "charAt" (text As string, index As i32) As string
    (func $charAt (import "string" "charAt") (param $text i32) (param $index i32) (result i32))
    ;; Declare Function Join Lib "string" Alias "join" (array As list, delimiter As string) As string
    (func $Join (import "string" "join") (param $array i32) (param $delimiter i32) (result i32))
    ;; Declare Function i32_toString Lib "string" Alias "toString" (x As i32) As string
    (func $i32_toString (import "string" "toString") (param $x i32) (result i32))
    ;; Declare Function array_new Lib "Array" Alias "create" (size As i32) As array
    (func $array_new (import "Array" "create") (param $size i32) (result i32))
    ;; Declare Function array_push Lib "Array" Alias "push" (array As array, element As any) As array
    (func $array_push (import "Array" "push") (param $array i32) (param $element i32) (result i32))
    ;; Declare Function array_get Lib "Array" Alias "get" (array As array, index As i32) As any
    (func $array_get (import "Array" "get") (param $array i32) (param $index i32) (result i32))
    ;; Declare Function array_length Lib "Array" Alias "length" (array As array) As i32
    (func $array_length (import "Array" "length") (param $array i32) (result i32))
    
    ;; Only allows one memory block in each module
    (memory (import "env" "bytechunks") 1)

    ;; Memory data for string constant
    
    ;; String from 1 with 65 bytes in memory
    (data (i32.const 1) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=\00")

    ;; String from 67 with 16 bytes in memory
    (data (i32.const 67) "raw text input: \00")

    ;; String from 84 with 20 bytes in memory
    (data (i32.const 84) "utf8 encode result: \00")

    ;; String from 105 with 0 bytes in memory
    (data (i32.const 105) "\00")

    ;; String from 106 with 0 bytes in memory
    (data (i32.const 106) "\00")

    ;; String from 107 with 15 bytes in memory
    (data (i32.const 107) "[^A-Za-z0-9+/=]\00")

    ;; String from 123 with 1 bytes in memory
    (data (i32.const 123) "g\00")

    ;; String from 125 with 0 bytes in memory
    (data (i32.const 125) "\00")

    ;; String from 126 with 2 bytes in memory
    (data (i32.const 126) "rn\00")

    ;; String from 129 with 1 bytes in memory
    (data (i32.const 129) "g\00")

    ;; String from 131 with 1 bytes in memory
    (data (i32.const 131) "n\00")

    ;; String from 133 with 12 bytes in memory
    (data (i32.const 133) "text length=\00")

    ;; String from 146 with 29 bytes in memory
    (data (i32.const 146) "View chars after utf8 encode:\00")

    ;; String from 176 with 0 bytes in memory
    (data (i32.const 176) "\00")

    ;; String from 177 with 0 bytes in memory
    (data (i32.const 177) "\00")

    ;; String from 178 with 14 bytes in memory
    (data (i32.const 178) "base64 Encoder\00")

    ;; String from 193 with 53 bytes in memory
    (data (i32.const 193) "base64 Encoder written in VisualBasic.NET WebAssembly\00")

    ;; String from 247 with 3 bytes in memory
    (data (i32.const 247) "MIT\00")

    ;; String from 251 with 6 bytes in memory
    (data (i32.const 251) "base64\00")

    ;; String from 258 with 32 bytes in memory
    (data (i32.const 258) "Copyright © I@xieguigang.me 2019\00")

    ;; String from 291 with 19 bytes in memory
    (data (i32.const 291) "VisualBasic.wasm.js\00")

    ;; String from 311 with 36 bytes in memory
    (data (i32.const 311) "e9ba6299-1032-42ab-a760-25f246506c5b\00")

    ;; String from 348 with 12 bytes in memory
    (data (i32.const 348) "2.0.344.4444\00")

    ;; String from 361 with 10 bytes in memory
    (data (i32.const 361) "1.12.0.235\00")
    
    (global $keyStr (mut i32) (i32.const 1))

    ;; export from [base64Encoder]
    
    (export "encode" (func $encode))
    (export "decode" (func $decode))
    
    
    ;; export from [utf8]
    
    (export "utf8_encode" (func $utf8_encode))
    (export "utf8_decode" (func $utf8_decode))
    
    
    ;; export from [AssemblyInfo]
    
    (export "AssemblyTitle" (func $AssemblyTitle))
    (export "AssemblyDescription" (func $AssemblyDescription))
    (export "AssemblyCompany" (func $AssemblyCompany))
    (export "AssemblyProduct" (func $AssemblyProduct))
    (export "AssemblyCopyright" (func $AssemblyCopyright))
    (export "AssemblyTrademark" (func $AssemblyTrademark))
    (export "Guid" (func $Guid))
    (export "AssemblyVersion" (func $AssemblyVersion))
    (export "AssemblyFileVersion" (func $AssemblyFileVersion))
    
     

    ;; functions in [base64Encoder]
    
    (func $encode (param $text i32) (result i32)
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
    (set_local $base64 (call $array_new (i32.const -1)))
    (set_local $f (i32.const 0))
    (call $print (call $string_add (i32.const 67) (call $i32_toString (get_local $text))))
    (set_local $text (call $utf8_encode (get_local $text)))
    (call $print (call $string_add (i32.const 84) (call $i32_toString (get_local $text))))
    ;; Do While (f < text.Length)
    ;; Start Do While Block block_9a020000
    
    (block $block_9a020000 
        (loop $loop_9b020000
    
                    (br_if $block_9a020000 (i32.eqz (i32.lt_s (get_local $f) (call $string_length (get_local $text)))))
            (set_local $n (call $charCodeAt (get_local $text) (get_local $f)))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $r (call $charCodeAt (get_local $text) (get_local $f)))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $i (call $charCodeAt (get_local $text) (get_local $f)))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $s (i32.shr_s (get_local $n) (i32.const 2)))
            (set_local $o (i32.or (i32.shl (i32.and (get_local $n) (i32.const 3)) (i32.const 4)) (i32.shr_s (get_local $r) (i32.const 4))))
            (set_local $u (i32.or (i32.shl (i32.and (get_local $r) (i32.const 15)) (i32.const 2)) (i32.shr_s (get_local $i) (i32.const 6))))
            (set_local $a (i32.and (get_local $i) (i32.const 63)))
            
    (if (call $isNaN (get_local $r)) 
        (then
                    (set_local $a (i32.const 64))
            (set_local $u (get_local $a))
        ) 
    )
            (drop (call $array_push (get_local $base64) (call $charAt (get_global $keyStr) (get_local $s))))
            (drop (call $array_push (get_local $base64) (call $charAt (get_global $keyStr) (get_local $o))))
            (drop (call $array_push (get_local $base64) (call $charAt (get_global $keyStr) (get_local $u))))
            (drop (call $array_push (get_local $base64) (call $charAt (get_global $keyStr) (get_local $a))))
            (br $loop_9b020000)
    
        )
    )
    ;; End Loop loop_9b020000
    (return (call $Join (get_local $base64) (i32.const 105)))
    )
    (func $decode (param $base64 i32) (result i32)
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
    (set_local $text (i32.const 106))
    (set_local $f (i32.const 0))
    (set_local $symbolsNotallowed (call $regexp (i32.const 107) (i32.const 123)))
    (set_local $base64 (call $string_replace (get_local $base64) (get_local $symbolsNotallowed) (i32.const 125)))
    ;; Do While (f < base64.Length)
    ;; Start Do While Block block_9c020000
    
    (block $block_9c020000 
        (loop $loop_9d020000
    
                    (br_if $block_9c020000 (i32.eqz (i32.lt_s (get_local $f) (call $string_length (get_local $base64)))))
            (set_local $s (call $string_indexOf (get_global $keyStr) (call $charAt (get_local $base64) (get_local $f))))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $o (call $string_indexOf (get_global $keyStr) (call $charAt (get_local $base64) (get_local $f))))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $u (call $string_indexOf (get_global $keyStr) (call $charAt (get_local $base64) (get_local $f))))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $a (call $string_indexOf (get_global $keyStr) (call $charAt (get_local $base64) (get_local $f))))
            (set_local $f (i32.add (get_local $f) (i32.const 1)))
            (set_local $n (i32.or (i32.shl (get_local $s) (i32.const 2)) (i32.shr_s (get_local $o) (i32.const 4))))
            (set_local $r (i32.or (i32.shl (i32.and (get_local $o) (i32.const 15)) (i32.const 4)) (i32.shr_s (get_local $u) (i32.const 2))))
            (set_local $i (i32.or (i32.shl (i32.and (get_local $u) (i32.const 3)) (i32.const 6)) (get_local $a)))
            (set_local $text (call $string_add (get_local $text) (call $fromCharCode (get_local $n))))
            
    (if (i32.ne (get_local $u) (i32.const 64)) 
        (then
                    (set_local $text (call $string_add (get_local $text) (call $fromCharCode (get_local $r))))
        ) 
    )
            
    (if (i32.ne (get_local $a) (i32.const 64)) 
        (then
                    (set_local $text (call $string_add (get_local $text) (call $fromCharCode (get_local $i))))
        ) 
    )
            (br $loop_9d020000)
    
        )
    )
    ;; End Loop loop_9d020000
    (set_local $text (call $utf8_decode (get_local $text)))
    (return (get_local $text))
    )
    
    
    ;; functions in [utf8]
    
    (func $utf8_encode (param $text i32) (result i32)
        ;; Public Function utf8_encode(text As string) As string
        (local $chars i32)
    (local $n i32)
    (local $r i32)
    (set_local $chars (call $array_new (i32.const -1)))
    (set_local $text (call $string_replace (get_local $text) (call $regexp (i32.const 126) (i32.const 129)) (i32.const 131)))
    (call $print (call $string_add (i32.const 133) (call $i32_toString (call $string_length (get_local $text)))))
    (set_local $n (i32.const 0))
    ;; For n As Integer = 0 To text.Length - 1
    
    (block $block_9e020000 
        (loop $loop_9f020000
    
                    (br_if $block_9e020000 (i32.lt_s (get_local $n) (i32.sub (call $string_length (get_local $text)) (i32.const 1))))
            (set_local $r (call $charCodeAt (get_local $text) (get_local $n)))
            (call $print (get_local $r))
            
    (if (i32.lt_s (get_local $r) (i32.const 128)) 
        (then
                    (drop (call $array_push (get_local $chars) (call $fromCharCode (get_local $r))))
        ) (else
                    (drop (call $array_push (get_local $chars) (call $fromCharCode (i32.or (i32.shr_s (get_local $r) (i32.const 12)) (i32.const 224)))))
            (drop (call $array_push (get_local $chars) (call $fromCharCode (i32.or (i32.and (i32.shr_s (get_local $r) (i32.const 6)) (i32.const 63)) (i32.const 128)))))
            (drop (call $array_push (get_local $chars) (call $fromCharCode (i32.or (i32.and (get_local $r) (i32.const 63)) (i32.const 128)))))
        )
    )
            (set_local $n (i32.add (get_local $n) (i32.const 1)))
            (br $loop_9f020000)
            ;; For Loop Next On loop_9f020000
    
        )
    )
    (call $print (i32.const 146))
    (call $print (get_local $chars))
    (return (call $Join (get_local $chars) (i32.const 176)))
    )
    (func $utf8_decode (param $text i32) (result i32)
        ;; Public Function utf8_decode(text As string) As string
        (local $t i32)
    (local $n i32)
    (local $r i32)
    (local $c2 i32)
    (local $c3 i32)
    (set_local $t (call $array_new (i32.const -1)))
    (set_local $n (i32.const 0))
    (set_local $r (i32.const 0))
    (set_local $c2 (i32.const 0))
    (set_local $c3 (i32.const 0))
    ;; Do While (n < text.Length)
    ;; Start Do While Block block_a0020000
    
    (block $block_a0020000 
        (loop $loop_a1020000
    
                    (br_if $block_a0020000 (i32.eqz (i32.lt_s (get_local $n) (call $string_length (get_local $text)))))
            (set_local $r (call $charCodeAt (get_local $text) (get_local $n)))
            
    (if (i32.lt_s (get_local $r) (i32.const 128)) 
        (then
                    (drop (call $array_push (get_local $t) (call $fromCharCode (get_local $r))))
            (set_local $n (i32.add (get_local $n) (i32.const 1)))
        ) (else
                    (set_local $c2 (call $charCodeAt (get_local $text) (i32.add (get_local $n) (i32.const 1))))
            (set_local $c3 (call $charCodeAt (get_local $text) (i32.add (get_local $n) (i32.const 2))))
            (drop (call $array_push (get_local $t) (call $fromCharCode (i32.or (i32.or (i32.shl (i32.and (get_local $r) (i32.const 15)) (i32.const 12)) (i32.shl (i32.and (get_local $c2) (i32.const 63)) (i32.const 6))) (i32.and (get_local $c3) (i32.const 63))))))
            (set_local $n (i32.add (get_local $n) (i32.const 3)))
        )
    )
            (br $loop_a1020000)
    
        )
    )
    ;; End Loop loop_a1020000
    (return (call $Join (get_local $t) (i32.const 177)))
    )
    
    
    ;; functions in [AssemblyInfo]
    
    (func $AssemblyTitle  (result i32)
        ;; Public Function AssemblyTitle() As string
        
    (return (i32.const 178))
    )
    (func $AssemblyDescription  (result i32)
        ;; Public Function AssemblyDescription() As string
        
    (return (i32.const 193))
    )
    (func $AssemblyCompany  (result i32)
        ;; Public Function AssemblyCompany() As string
        
    (return (i32.const 247))
    )
    (func $AssemblyProduct  (result i32)
        ;; Public Function AssemblyProduct() As string
        
    (return (i32.const 251))
    )
    (func $AssemblyCopyright  (result i32)
        ;; Public Function AssemblyCopyright() As string
        
    (return (i32.const 258))
    )
    (func $AssemblyTrademark  (result i32)
        ;; Public Function AssemblyTrademark() As string
        
    (return (i32.const 291))
    )
    (func $Guid  (result i32)
        ;; Public Function Guid() As string
        
    (return (i32.const 311))
    )
    (func $AssemblyVersion  (result i32)
        ;; Public Function AssemblyVersion() As string
        
    (return (i32.const 348))
    )
    (func $AssemblyFileVersion  (result i32)
        ;; Public Function AssemblyFileVersion() As string
        
    (return (i32.const 361))
    )
    )