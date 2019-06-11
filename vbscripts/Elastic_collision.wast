(module ;; Module WebGL_Demo

    ;; Auto-Generated VisualBasic.NET WebAssembly Code
    ;;
    ;; WASM for VisualBasic.NET
    ;; 
    ;; version: 1.3.0.22
    ;; build: 6/11/2019 11:16:54 PM
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
;; Declare Function println Lib "console" Alias "log" (info As string) As void
    (func $Debugger.println (import "console" "log") (param $info i32) )
;; Declare Function string.replace Lib "string" Alias "replace" (input As string, find As intptr, replacement As string) As string
    (func $string.replace (import "string" "replace") (param $input i32) (param $find i32) (param $replacement i32) (result i32))
;; Declare Function string.add Lib "string" Alias "add" (a As string, b As string) As string
    (func $string.add (import "string" "add") (param $a i32) (param $b i32) (result i32))
;; Declare Function string.length Lib "string" Alias "length" (text As string) As i32
    (func $string.length (import "string" "length") (param $text i32) (result i32))
;; Declare Function string.indexOf Lib "string" Alias "indexOf" (input As string, find As string) As i32
    (func $string.indexOf (import "string" "indexOf") (param $input i32) (param $find i32) (result i32))
;; Declare Function i32.toString Lib "string" Alias "toString" (x As i32) As string
    (func $i32.toString (import "string" "toString") (param $x i32) (result i32))
    
    ;; Only allows one memory block in each module
    (memory (import "env" "bytechunks") 1)

    ;; A global object manager for create user object in WebAssembly
    ;; Its initialize value is the total size of the string data
    ;; of this webassembly module
    (global $global.ObjectManager (mut i32) (i32.const 1336))

    ;; memory allocate in javascript runtime
    (func $global.ObjectManager.Allocate (param $sizeof i32) (param $class_id i32) (result i32)
    ;; Public Function ObjectManager.Allocate(sizeof As i32, class_id As i32) As i32
    
(local $offset i32)
(local $padding i32)

(set_local $offset (get_global $global.ObjectManager))
(set_global $global.ObjectManager (i32.add (get_local $offset) (get_local $sizeof)))
(set_local $padding (i32.rem_s (get_global $global.ObjectManager) (i32.const 8)))

(if (get_local $padding) 
    (then
                (set_local $padding (i32.sub (i32.const 8) (get_local $padding)))
        (set_global $global.ObjectManager (i32.add (get_global $global.ObjectManager) (get_local $padding)))
    ) (else
                (set_global $global.ObjectManager (i32.add (get_global $global.ObjectManager) (i32.const 8)))
    )
)
(call $GC.addObject (get_local $offset) (get_local $class_id))
(return (get_local $offset))
)
    (func $global.GetMemorySize  (result i32)
    ;; Public Function GetMemorySize() As i32
    


(return (get_global $global.ObjectManager))
)

    ;; Memory data for string constant
        
    ;; String from 904 with 20 bytes in memory
    (data (i32.const 904) "array(of circle) = &\00")
    
    ;; String from 928 with 10 bytes in memory
    (data (i32.const 928) "circle = #\00")
    
    ;; String from 944 with 3 bytes in memory
    (data (i32.const 944) " (&\00")
    
    ;; String from 952 with 1 bytes in memory
    (data (i32.const 952) ")\00")
    
    ;; String from 960 with 11 bytes in memory
    (data (i32.const 960) "circleV = &\00")
    
    ;; String from 976 with 22 bytes in memory
    (data (i32.const 976) "Initialize application\00")
    
    ;; String from 1000 with 5 bytes in memory
    (data (i32.const 1000) "row #\00")
    
    ;; String from 1008 with 4 bytes in memory
    (data (i32.const 1008) " = &\00")
    
    ;; String from 1016 with 16 bytes in memory
    (data (i32.const 1016) "circlevdata => &\00")
    
    ;; String from 1040 with 16 bytes in memory
    (data (i32.const 1040) "cellcircles => &\00")
    
    ;; String from 1064 with 10 bytes in memory
    (data (i32.const 1064) "WebGL-Demo\00")
    
    ;; String from 1080 with 80 bytes in memory
    (data (i32.const 1080) "WebAssembly conversion demonstrating the faster-performing grid of linked-lists.\00")
    
    ;; String from 1168 with 3 bytes in memory
    (data (i32.const 1168) "MIT\00")
    
    ;; String from 1176 with 10 bytes in memory
    (data (i32.const 1176) "WebGL-Demo\00")
    
    ;; String from 1192 with 69 bytes in memory
    (data (i32.const 1192) "https://github.com/guybedford/wasm-demo/blob/master/native/demo-opt.c\00")
    
    ;; String from 1264 with 13 bytes in memory
    (data (i32.const 1264) "vanillavb.app\00")
    
    ;; String from 1280 with 36 bytes in memory
    (data (i32.const 1280) "83ca2b93-4e57-4d44-b2bc-163252a9305d\00")
    
    ;; String from 1320 with 7 bytes in memory
    (data (i32.const 1320) "1.0.0.0\00")
    
    ;; String from 1328 with 7 bytes in memory
    (data (i32.const 1328) "1.0.0.0\00")
    
    ;; Memory data for user defined class object its meta data
    ;; all of these string is base64 encoded json object
        
    ;; String from 13 with 252 bytes in memory
    ;;
    ;; class [13] CircleV
    ;;
    (data (i32.const 13) "eyJjb21tZW50IjpudWxsLCJjbGFzcyI6IkNpcmNsZVYiLCJjbGFzc19pZCI6MTMsImZpZWxkcyI6eyJ2eCI6eyJnZW5lcmljIjpbXSwicmF3IjoiZjMyIiwidHlwZSI6M30sInZ5Ijp7ImdlbmVyaWMiOltdLCJyYXciOiJmMzIiLCJ0eXBlIjozfX0sImlzU3RydWN0IjpmYWxzZSwibWV0aG9kcyI6e30sIm5hbWVzcGFjZSI6bnVsbH0=\00")
    
    ;; String from 272 with 288 bytes in memory
    ;;
    ;; class [272] CellCircle
    ;;
    (data (i32.const 272) "eyJjb21tZW50IjpudWxsLCJjbGFzcyI6IkNlbGxDaXJjbGUiLCJjbGFzc19pZCI6MjcyLCJmaWVsZHMiOnsibmV4dCI6eyJnZW5lcmljIjpbXSwicmF3IjoiWzI3Ml1DZWxsQ2lyY2xlIiwidHlwZSI6MTB9LCJjaXJjbGVJbmRleCI6eyJnZW5lcmljIjpbXSwicmF3IjoiaTMyIiwidHlwZSI6MX19LCJpc1N0cnVjdCI6ZmFsc2UsIm1ldGhvZHMiOnt9LCJuYW1lc3BhY2UiOm51bGx9\00")
    
    ;; String from 600 with 300 bytes in memory
    ;;
    ;; structure [600] Circle
    ;;
    (data (i32.const 600) "eyJjb21tZW50IjpudWxsLCJjbGFzcyI6IkNpcmNsZSIsImNsYXNzX2lkIjo2MDAsImZpZWxkcyI6eyJ5Ijp7ImdlbmVyaWMiOltdLCJyYXciOiJmMzIiLCJ0eXBlIjozfSwieCI6eyJnZW5lcmljIjpbXSwicmF3IjoiZjMyIiwidHlwZSI6M30sInIiOnsiZ2VuZXJpYyI6W10sInJhdyI6ImYzMiIsInR5cGUiOjN9fSwiaXNTdHJ1Y3QiOnRydWUsIm1ldGhvZHMiOnt9LCJuYW1lc3BhY2UiOm51bGx9\00")

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
    (global $defines.GRID_HEIGHT (mut i32) (i32.const 120))
(global $defines.GRID_WIDTH (mut i32) (i32.const 70))
(global $defines.CIRCLE_COUNT (mut i32) (i32.const 10000))
(global $Algorithm.circleData (mut i32) (i32.const 0))
(global $Algorithm.circlevData (mut i32) (i32.const 0))
(global $Algorithm.cellCircles (mut i32) (i32.const 0))
(global $Algorithm.grid (mut i32) (i32.const 0))

    ;; Export methods of this module
    (export "global.GetMemorySize" (func $global.GetMemorySize))

    ;; export from VB.NET module: [Algorithm]
    
    (export "Algorithm.getCircleCount" (func $Algorithm.getCircleCount))
    (export "Algorithm.getCircleDataOffset" (func $Algorithm.getCircleDataOffset))
    (export "Algorithm.init" (func $Algorithm.init))
    (export "Algorithm.timeStep" (func $Algorithm.timeStep))
    
    
    ;; export from VB.NET module: [Math]
    
    (export "Math.detectCircleCollision" (func $Math.detectCircleCollision))
    
    
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
    
     

    ;; functions in [Algorithm]
    
    (func $Algorithm.createGridRow  (result i32)
        ;; Public Function createGridRow() As array(Of intptr)
        
    (local $arrayOffset_P0000b7C3zV i32)
    (local $arrayOffset_C0000cN7Jjc i32)
    (local $arrayOffset_N0000dJN8sU i32)
    (local $arrayOffset_S0000eEp8Cz i32)
    (local $arrayOffset_50000fI6n0H i32)
    
    
    ;; Save (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1)) array element data to memory:
    ;; Array memory block begin at location: (get_local $arrayOffset_50000fI6n0H)
    (set_local $arrayOffset_50000fI6n0H (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1)) (i32.const 4))) (i32.const 7)))
    ;; class_id/typealias_enum i32 data: (i32.const 272)/array(Of intptr)
    (i32.store (get_local $arrayOffset_50000fI6n0H) (i32.const 272))
    (i32.store (i32.add (get_local $arrayOffset_50000fI6n0H) (i32.const 4)) (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1)))
    ;; End of byte marks meta data, start write data blocks
    ;; Assign array memory data to another expression
    (return (get_local $arrayOffset_50000fI6n0H))
    )
    
    
    (func $Algorithm.createCircle  (result i32)
        ;; Public Function createCircle() As intptr
        
    (local $newObject_u0000gUW09O i32)
    
    
    ;; Initialize a object instance of [[272]CellCircle]
    ;; Object memory block begin at location: (get_local $newObject_u0000gUW09O)
    (set_local $newObject_u0000gUW09O (call $global.ObjectManager.Allocate (i32.const 8) (i32.const 272)))
    ;; set field [CellCircle::next]
    (i32.store (i32.add (get_local $newObject_u0000gUW09O) (i32.const 0)) (i32.const 0))
    ;; set field [CellCircle::circleIndex]
    (i32.store (i32.add (get_local $newObject_u0000gUW09O) (i32.const 4)) (i32.const 0))
    ;; Initialize an object memory block with 8 bytes data
    
    (return (get_local $newObject_u0000gUW09O))
    )
    
    
    (func $Algorithm.createMoveVector  (result i32)
        ;; Public Function createMoveVector() As intptr
        
    (local $newObject_O0000hTts7d i32)
    
    
    ;; Initialize a object instance of [[13]CircleV]
    ;; Object memory block begin at location: (get_local $newObject_O0000hTts7d)
    (set_local $newObject_O0000hTts7d (call $global.ObjectManager.Allocate (i32.const 8) (i32.const 13)))
    ;; set field [CircleV::vx]
    (f32.store (i32.add (get_local $newObject_O0000hTts7d) (i32.const 0)) (f32.demote/f64 (call $Math.random )))
    ;; set field [CircleV::vy]
    (f32.store (i32.add (get_local $newObject_O0000hTts7d) (i32.const 4)) (f32.demote/f64 (call $Math.random )))
    ;; Initialize an object memory block with 8 bytes data
    
    (return (get_local $newObject_O0000hTts7d))
    )
    
    
    (func $Algorithm.getCircleCount  (result i32)
        ;; Public Function getCircleCount() As i32
        
    
    
    (return (get_global $defines.CIRCLE_COUNT))
    )
    
    
    (func $Algorithm.getCircleDataOffset  (result i32)
        ;; Public Function getCircleDataOffset() As array(Of intptr)
        
    
    
    (return (get_global $Algorithm.circleData))
    )
    
    
    (func $Algorithm.init (param $displayWidth f32) (param $displayHeight f32) 
        ;; Public Function init(displayWidth As f32, displayHeight As f32) As void
        
    (local $i i32)
    (local $collision i32)
    (local $x f32)
    (local $y f32)
    (local $r f32)
    (local $j i32)
    
    (call $Debugger.println (call $string.add (i32.const 904) (call $i32.toString (get_global $Algorithm.circleData))))
    (set_local $i (i32.const 0))
    ;; For i As Integer = 0 To CIRCLE_COUNT - 1
    
    (block $block_W0000iX3WRV 
        (loop $loop_F0000jUKBBn
    
                    (br_if $block_W0000iX3WRV (i32.gt_s (get_local $i) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1))))
            (set_local $collision (i32.const 0))
            (set_local $x (f32.const 0))
            (set_local $y (f32.const 0))
            (set_local $r (f32.const 0))
            ;; Do ... Loop
            ;; Start Do While Block block_R0000k3f6oY
            
    (block $block_R0000k3f6oY 
        (loop $loop_30000lV8CYD
    
                    (set_local $collision (i32.const 0))
            (set_local $x (f32.demote/f64 (f64.mul (f64.promote/f32 (get_local $displayWidth)) (call $Math.random ))))
            (set_local $y (f32.demote/f64 (f64.mul (f64.promote/f32 (get_local $displayHeight)) (call $Math.random ))))
            (set_local $r (f32.demote/f64 (call $Math.ceil (f64.div (call $Math.exp (f64.mul (call $Math.random ) (f64.convert_s/i32 (i32.const 8)))) (f64.const 23.2887)))))
            
    (if (i32.add (i32.add (i32.add (f32.lt (f32.sub (get_local $displayWidth) (f32.add (get_local $x) (get_local $r))) (f32.convert_s/i32 (i32.const 0))) (f32.lt (f32.sub (get_local $x) (get_local $r)) (f32.convert_s/i32 (i32.const 0)))) (f32.lt (f32.sub (get_local $displayHeight) (f32.add (get_local $y) (get_local $r))) (f32.convert_s/i32 (i32.const 0)))) (f32.lt (f32.sub (get_local $y) (get_local $r)) (f32.convert_s/i32 (i32.const 0)))) 
        (then
                    (set_local $collision (i32.const 1))
        ) (else
                    (set_local $j (i32.const 0))
            ;; For j As Integer = 0 To i - 1
            
    (block $block_R0000mQH82Q 
        (loop $loop_40000n5ej0M
    
                    (br_if $block_R0000mQH82Q (i32.gt_s (get_local $j) (i32.sub (get_local $i) (i32.const 1))))
            
    (if (call $Math.detectCircleCollision (get_local $x) (get_local $y) (get_local $r) (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 12)))) (i32.const 4))) (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 12)))) (i32.const 0))) (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 12)))) (i32.const 8)))) 
        (then
                    (set_local $collision (i32.const 1))
            (br_if $block_R0000k3f6oY (i32.const 1))
        ) 
    )
            ;; For loop control step: (i32.const 1)
            (set_local $j (i32.add (get_local $j) (i32.const 1)))
            (br $loop_40000n5ej0M)
            ;; For Loop Next On loop_40000n5ej0M
    
        )
    )
        )
    )
            (br_if $block_R0000k3f6oY (i32.eqz (get_local $collision)))
            (br $loop_30000lV8CYD)
    
        )
    )
            ;; End Loop loop_30000lV8CYD
            (f32.store (i32.add (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12))) (i32.const 4)) (get_local $x))
            (f32.store (i32.add (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12))) (i32.const 0)) (get_local $y))
            (f32.store (i32.add (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12))) (i32.const 8)) (get_local $r))
            (call $Debugger.println (call $string.add (call $string.add (call $string.add (call $string.add (i32.const 928) (call $i32.toString (get_local $i))) (i32.const 944)) (call $i32.toString (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12)))))) (i32.const 952)))
            (call $Debugger.println (call $string.add (i32.const 960) (call $i32.toString (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0)) (f32.demote/f64 (f64.mul (f64.sub (call $Math.random ) (f64.const 0.5)) (f64.const 0.1))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4)) (f32.demote/f64 (f64.mul (f64.sub (call $Math.random ) (f64.const 0.5)) (f64.const 0.1))))
            ;; For loop control step: (i32.const 1)
            (set_local $i (i32.add (get_local $i) (i32.const 1)))
            (br $loop_F0000jUKBBn)
            ;; For Loop Next On loop_F0000jUKBBn
    
        )
    )
    )
    
    
    (func $Algorithm.reset  
        ;; Public Function reset() As void
        
    (local $p i32)
    (local $row i32)
    (local $q i32)
    
    (set_local $p (i32.const 0))
    ;; For p As Integer = 0 To GRID_WIDTH - 1
    
    (block $block_Y0000oCmYAw 
        (loop $loop_q0000pDbUdV
    
                    (br_if $block_Y0000oCmYAw (i32.gt_s (get_local $p) (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1))))
            (set_local $row (i32.load (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $p) (i32.const 4)))))
            (set_local $q (i32.const 0))
            ;; For q As Integer = 0 To GRID_HEIGHT - 1
            
    (block $block_e0000qOmSKA 
        (loop $loop_c0000rvbEL7
    
                    (br_if $block_e0000qOmSKA (i32.gt_s (get_local $q) (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1))))
            (i32.store (i32.add (i32.add (get_local $row) (i32.const 8)) (i32.mul (get_local $q) (i32.const 4))) (i32.const 0))
            ;; For loop control step: (i32.const 1)
            (set_local $q (i32.add (get_local $q) (i32.const 1)))
            (br $loop_c0000rvbEL7)
            ;; For Loop Next On loop_c0000rvbEL7
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $p (i32.add (get_local $p) (i32.const 1)))
            (br $loop_q0000pDbUdV)
            ;; For Loop Next On loop_q0000pDbUdV
    
        )
    )
    )
    
    
    (func $Algorithm.update (param $displayWidth f32) (param $displayHeight f32) 
        ;; Public Function update(displayWidth As f32, displayHeight As f32) As void
        
    (local $cellCircleCount i32)
    (local $i i32)
    (local $xi f32)
    (local $yi f32)
    (local $ri f32)
    (local $vxi f32)
    (local $vyi f32)
    (local $leftCol i32)
    (local $rightCol i32)
    (local $topRow i32)
    (local $bottomRow i32)
    (local $p2 i32)
    (local $row1 i32)
    (local $q2 i32)
    (local $cellCircle i32)
    
    (set_local $cellCircleCount (i32.const 0))
    (set_local $i (i32.const 0))
    ;; For i As Integer = 0 To CIRCLE_COUNT - 1
    
    (block $block_f0000sFx5yd 
        (loop $loop_G0000ti8XRG
    
                    (br_if $block_f0000sFx5yd (i32.gt_s (get_local $i) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1))))
            (set_local $xi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12)))) (i32.const 4))))
            (set_local $yi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12)))) (i32.const 0))))
            (set_local $ri (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12)))) (i32.const 8))))
            (set_local $vxi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0))))
            (set_local $vyi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4))))
            (set_local $vyi (f32.demote/f64 (f64.add (f64.promote/f32 (get_local $vyi)) (f64.const 0.0001))))
            
    (if (i32.add (i32.mul (f32.lt (f32.sub (get_local $displayWidth) (f32.add (get_local $xi) (get_local $ri))) (f32.convert_s/i32 (i32.const 0))) (f32.gt (get_local $vxi) (f32.convert_s/i32 (i32.const 0)))) (i32.mul (f32.lt (f32.sub (get_local $xi) (get_local $ri)) (f32.convert_s/i32 (i32.const 0))) (f32.lt (get_local $vxi) (f32.convert_s/i32 (i32.const 0))))) 
        (then
                    (set_local $vxi (f32.sub (f32.const 0) (get_local $vxi)))
        ) 
    )
            
    (if (i32.add (i32.mul (f32.lt (f32.sub (get_local $displayHeight) (f32.add (get_local $yi) (get_local $ri))) (f32.convert_s/i32 (i32.const 0))) (f32.gt (get_local $vyi) (f32.convert_s/i32 (i32.const 0)))) (i32.mul (f32.lt (f32.sub (get_local $yi) (get_local $ri)) (f32.convert_s/i32 (i32.const 0))) (f32.lt (get_local $vyi) (f32.convert_s/i32 (i32.const 0))))) 
        (then
                    (set_local $vyi (f32.sub (f32.const 0) (get_local $vyi)))
        ) 
    )
            (f32.store (i32.add (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12))) (i32.const 4)) (f32.add (get_local $xi) (get_local $vxi)))
            (f32.store (i32.add (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12))) (i32.const 0)) (f32.add (get_local $yi) (get_local $vyi)))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0)) (get_local $vxi))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4)) (get_local $vyi))
            (set_local $leftCol (i32.trunc_s/f64 (call $Math.floor (f64.mul (f64.div (f64.promote/f32 (f32.sub (get_local $xi) (get_local $ri))) (f64.promote/f32 (get_local $displayWidth))) (f64.convert_s/i32 (get_global $defines.GRID_WIDTH))))))
            (set_local $rightCol (i32.trunc_s/f64 (call $Math.floor (f64.mul (f64.div (f64.promote/f32 (f32.add (get_local $xi) (get_local $ri))) (f64.promote/f32 (get_local $displayWidth))) (f64.convert_s/i32 (get_global $defines.GRID_WIDTH))))))
            (set_local $topRow (i32.trunc_s/f64 (call $Math.floor (f64.mul (f64.div (f64.promote/f32 (f32.sub (get_local $yi) (get_local $ri))) (f64.promote/f32 (get_local $displayHeight))) (f64.convert_s/i32 (get_global $defines.GRID_HEIGHT))))))
            (set_local $bottomRow (i32.trunc_s/f64 (call $Math.floor (f64.mul (f64.div (f64.promote/f32 (f32.add (get_local $yi) (get_local $ri))) (f64.promote/f32 (get_local $displayHeight))) (f64.convert_s/i32 (get_global $defines.GRID_HEIGHT))))))
            
    (if (i32.lt_s (get_local $leftCol) (i32.const 0)) 
        (then
                    (set_local $leftCol (i32.const 0))
        ) 
    )
            
    (if (i32.ge_s (get_local $rightCol) (get_global $defines.GRID_WIDTH)) 
        (then
                    (set_local $rightCol (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)))
        ) 
    )
            
    (if (i32.lt_s (get_local $topRow) (i32.const 0)) 
        (then
                    (set_local $topRow (i32.const 0))
        ) 
    )
            
    (if (i32.ge_s (get_local $bottomRow) (get_global $defines.GRID_HEIGHT)) 
        (then
                    (set_local $bottomRow (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1)))
        ) 
    )
            (set_local $p2 (get_local $leftCol))
            ;; For p2 As Integer = leftCol To rightCol
            
    (block $block_v0000u3lCX3 
        (loop $loop_p0000vb4Oj2
    
                    (br_if $block_v0000u3lCX3 (i32.gt_s (get_local $p2) (get_local $rightCol)))
            (set_local $row1 (i32.load (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $p2) (i32.const 4)))))
            (set_local $q2 (get_local $topRow))
            ;; For q2 As Integer = topRow To bottomRow
            
    (block $block_M0000w9j8tO 
        (loop $loop_U0000x8M90O
    
                    (br_if $block_M0000w9j8tO (i32.gt_s (get_local $q2) (get_local $bottomRow)))
            (set_local $cellCircle (i32.load (i32.add (i32.add (get_global $Algorithm.cellCircles) (i32.const 8)) (i32.mul (get_local $cellCircleCount) (i32.const 4)))))
            (set_local $cellCircleCount (i32.add (get_local $cellCircleCount) (i32.const 1)))
            (i32.store (i32.add (get_local $cellCircle) (i32.const 4)) (get_local $i))
            (i32.store (i32.add (get_local $cellCircle) (i32.const 0)) (i32.load (i32.add (i32.add (get_local $row1) (i32.const 8)) (i32.mul (get_local $q2) (i32.const 4)))))
            (i32.store (i32.add (i32.add (get_local $row1) (i32.const 8)) (i32.mul (get_local $q2) (i32.const 4))) (get_local $cellCircle))
            ;; For loop control step: (i32.const 1)
            (set_local $q2 (i32.add (get_local $q2) (i32.const 1)))
            (br $loop_U0000x8M90O)
            ;; For Loop Next On loop_U0000x8M90O
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $p2 (i32.add (get_local $p2) (i32.const 1)))
            (br $loop_p0000vb4Oj2)
            ;; For Loop Next On loop_p0000vb4Oj2
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $i (i32.add (get_local $i) (i32.const 1)))
            (br $loop_G0000ti8XRG)
            ;; For Loop Next On loop_G0000ti8XRG
    
        )
    )
    )
    
    
    (func $Algorithm.detectConflicts  
        ;; Public Function detectConflicts() As void
        
    (local $p1 i32)
    (local $row2 i32)
    (local $q1 i32)
    (local $iCellCircle i32)
    (local $index i32)
    (local $xi f32)
    (local $yi f32)
    (local $ri f32)
    (local $vxi f32)
    (local $vyi f32)
    (local $jCellCircle i32)
    (local $j i32)
    (local $xj f32)
    (local $yj f32)
    (local $rj f32)
    (local $vxj f32)
    (local $vyj f32)
    (local $collDx f32)
    (local $collDy f32)
    (local $collLen f64)
    (local $cui f32)
    (local $cuj f32)
    (local $massSum f32)
    (local $massDiff f32)
    (local $cvi f64)
    (local $cvj f64)
    (local $dcvi f64)
    (local $dcvj f64)
    
    (set_local $p1 (i32.const 0))
    ;; For p1 As Integer = 0 To GRID_WIDTH - 1
    
    (block $block_w0000yHCEAV 
        (loop $loop_a0000znETTn
    
                    (br_if $block_w0000yHCEAV (i32.gt_s (get_local $p1) (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1))))
            (set_local $row2 (i32.load (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $p1) (i32.const 4)))))
            (set_local $q1 (i32.const 0))
            ;; For q1 As Integer = 0 To GRID_HEIGHT - 1
            
    (block $block_800010a16Lr 
        (loop $loop_V00011M4P4y
    
                    (br_if $block_800010a16Lr (i32.gt_s (get_local $q1) (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1))))
            (set_local $iCellCircle (i32.load (i32.add (i32.add (get_local $row2) (i32.const 8)) (i32.mul (get_local $q1) (i32.const 4)))))
            ;; Do While Not iCellCircle Is Nothing
            ;; Start Do While Block block_T0001201Vd1
            
    (block $block_T0001201Vd1 
        (loop $loop_s000136B9XZ
    
                    (br_if $block_T0001201Vd1 (i32.eqz (i32.eqz (i32.eq (get_local $iCellCircle) (i32.const 0)))))
            (set_local $index (i32.load (i32.add (get_local $iCellCircle) (i32.const 4))))
            (set_local $xi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 12)))) (i32.const 4))))
            (set_local $yi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 12)))) (i32.const 0))))
            (set_local $ri (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 12)))) (i32.const 8))))
            (set_local $vxi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 0))))
            (set_local $vyi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 4))))
            (set_local $jCellCircle (get_local $iCellCircle))
            (set_local $jCellCircle (i32.load (i32.add (get_local $jCellCircle) (i32.const 0))))
            ;; Do While Not jCellCircle Is Nothing
            ;; Start Do While Block block_200014LVtr3
            
    (block $block_200014LVtr3 
        (loop $loop_B00015nP5UI
    
                    (br_if $block_200014LVtr3 (i32.eqz (i32.eqz (i32.eq (get_local $jCellCircle) (i32.const 0)))))
            (set_local $j (i32.load (i32.add (get_local $jCellCircle) (i32.const 4))))
            (set_local $xj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 12)))) (i32.const 4))))
            (set_local $yj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 12)))) (i32.const 0))))
            (set_local $rj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 12)))) (i32.const 8))))
            
    (if (call $Math.detectCircleCollision (get_local $xi) (get_local $yi) (get_local $ri) (get_local $xj) (get_local $yj) (get_local $rj)) 
        (then
                    (set_local $vxj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 0))))
            (set_local $vyj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 4))))
            (set_local $collDx (f32.sub (get_local $xj) (get_local $xi)))
            (set_local $collDy (f32.sub (get_local $yj) (get_local $yi)))
            (set_local $collLen (call $Math.sqrt (f64.promote/f32 (f32.add (f32.mul (get_local $collDx) (get_local $collDx)) (f32.mul (get_local $collDy) (get_local $collDy))))))
            (set_local $collDx (f32.demote/f64 (f64.div (f64.promote/f32 (get_local $collDx)) (get_local $collLen))))
            (set_local $collDy (f32.demote/f64 (f64.div (f64.promote/f32 (get_local $collDy)) (get_local $collLen))))
            (set_local $cui (f32.add (f32.mul (get_local $collDx) (get_local $vxi)) (f32.mul (get_local $collDy) (get_local $vyi))))
            (set_local $cuj (f32.add (f32.mul (get_local $collDx) (get_local $vxj)) (f32.mul (get_local $collDy) (get_local $vyj))))
            
    (if (i32.eqz (f32.le (f32.sub (get_local $cui) (get_local $cuj)) (f32.convert_s/i32 (i32.const 0)))) 
        (then
                    (set_local $massSum (f32.add (get_local $ri) (get_local $rj)))
            (set_local $massDiff (f32.sub (get_local $ri) (get_local $rj)))
            (set_local $cvi (f64.div (f64.promote/f32 (f32.add (f32.mul (get_local $cui) (get_local $massDiff)) (f32.mul (f32.mul (f32.convert_s/i32 (i32.const 2)) (get_local $rj)) (get_local $cuj)))) (f64.promote/f32 (get_local $massSum))))
            (set_local $cvj (f64.div (f64.promote/f32 (f32.sub (f32.mul (f32.mul (f32.convert_s/i32 (i32.const 2)) (get_local $ri)) (get_local $cui)) (f32.mul (get_local $cuj) (get_local $massDiff)))) (f64.promote/f32 (get_local $massSum))))
            (set_local $dcvi (f64.sub (get_local $cvi) (f64.promote/f32 (get_local $cui))))
            (set_local $dcvj (f64.sub (get_local $cvj) (f64.promote/f32 (get_local $cuj))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 0)) (f32.demote/f64 (f64.add (f64.promote/f32 (get_local $vxi)) (f64.mul (f64.promote/f32 (get_local $collDx)) (get_local $dcvi)))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 4)) (f32.demote/f64 (f64.add (f64.promote/f32 (get_local $vyi)) (f64.mul (f64.promote/f32 (get_local $collDy)) (get_local $dcvi)))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 0)) (f32.demote/f64 (f64.add (f64.promote/f32 (get_local $vxj)) (f64.mul (f64.promote/f32 (get_local $collDx)) (get_local $dcvj)))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 4)) (f32.demote/f64 (f64.add (f64.promote/f32 (get_local $vyj)) (f64.mul (f64.promote/f32 (get_local $collDy)) (get_local $dcvj)))))
            (set_local $jCellCircle (i32.load (i32.add (get_local $jCellCircle) (i32.const 0))))
        ) 
    )
        ) (else
                    (set_local $jCellCircle (i32.load (i32.add (get_local $jCellCircle) (i32.const 0))))
        )
    )
            (br $loop_B00015nP5UI)
    
        )
    )
            ;; End Loop loop_B00015nP5UI
            (set_local $iCellCircle (i32.load (i32.add (get_local $iCellCircle) (i32.const 0))))
            (br $loop_s000136B9XZ)
    
        )
    )
            ;; End Loop loop_s000136B9XZ
            ;; For loop control step: (i32.const 1)
            (set_local $q1 (i32.add (get_local $q1) (i32.const 1)))
            (br $loop_V00011M4P4y)
            ;; For Loop Next On loop_V00011M4P4y
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $p1 (i32.add (get_local $p1) (i32.const 1)))
            (br $loop_a0000znETTn)
            ;; For Loop Next On loop_a0000znETTn
    
        )
    )
    )
    
    
    (func $Algorithm.timeStep (param $displayWidth f32) (param $displayHeight f32) 
        ;; Public Function timeStep(displayWidth As f32, displayHeight As f32) As void
        
    
    
    (call $Algorithm.reset )
    (call $Algorithm.update (get_local $displayWidth) (get_local $displayHeight))
    (call $Algorithm.detectConflicts )
    )
    
    
    
    
    ;; functions in [Math]
    
    (func $Math.detectCircleCollision (param $x1 f32) (param $y1 f32) (param $r1 f32) (param $x2 f32) (param $y2 f32) (param $r2 f32) (result i32)
        ;; Public Function detectCircleCollision(x1 As f32, y1 As f32, r1 As f32, x2 As f32, y2 As f32, r2 As f32) As boolean
        
    (local $row i32)
    (local $i i32)
    (local $z i32)
    (local $j i32)
    (local $l i32)
    
    
    (if (i32.add (i32.add (i32.add (f32.lt (f32.add (get_local $x1) (get_local $r1)) (f32.sub (get_local $x2) (get_local $r2))) (f32.gt (f32.sub (get_local $x1) (get_local $r1)) (f32.add (get_local $x2) (get_local $r2)))) (f32.lt (f32.add (get_local $y1) (get_local $r1)) (f32.sub (get_local $y2) (get_local $r2)))) (f32.gt (f32.sub (get_local $y1) (get_local $r1)) (f32.add (get_local $y2) (get_local $r2)))) 
        (then
                    (return (i32.const 0))
        ) 
    )
    (return (f64.le (call $Math.sqrt (f64.add (call $Math.pow (f64.promote/f32 (f32.sub (get_local $x2) (get_local $x1))) (f64.promote/f32 (f32.convert_s/i32 (i32.const 2)))) (call $Math.pow (f64.promote/f32 (f32.sub (get_local $y2) (get_local $y1))) (f64.promote/f32 (f32.convert_s/i32 (i32.const 2)))))) (f64.promote/f32 (f32.add (get_local $r1) (get_local $r2)))))
    )
    
    
    
    
    ;; functions in [AssemblyInfo]
    
    (func $AssemblyInfo.AssemblyTitle  (result i32)
        ;; Public Function AssemblyTitle() As string
        
    
    
    (return (i32.const 1064))
    )
    
    
    (func $AssemblyInfo.AssemblyDescription  (result i32)
        ;; Public Function AssemblyDescription() As string
        
    
    
    (return (i32.const 1080))
    )
    
    
    (func $AssemblyInfo.AssemblyCompany  (result i32)
        ;; Public Function AssemblyCompany() As string
        
    
    
    (return (i32.const 1168))
    )
    
    
    (func $AssemblyInfo.AssemblyProduct  (result i32)
        ;; Public Function AssemblyProduct() As string
        
    
    
    (return (i32.const 1176))
    )
    
    
    (func $AssemblyInfo.AssemblyCopyright  (result i32)
        ;; Public Function AssemblyCopyright() As string
        
    
    
    (return (i32.const 1192))
    )
    
    
    (func $AssemblyInfo.AssemblyTrademark  (result i32)
        ;; Public Function AssemblyTrademark() As string
        
    
    
    (return (i32.const 1264))
    )
    
    
    (func $AssemblyInfo.Guid  (result i32)
        ;; Public Function Guid() As string
        
    
    
    (return (i32.const 1280))
    )
    
    
    (func $AssemblyInfo.AssemblyVersion  (result i32)
        ;; Public Function AssemblyVersion() As string
        
    
    
    (return (i32.const 1320))
    )
    
    
    (func $AssemblyInfo.AssemblyFileVersion  (result i32)
        ;; Public Function AssemblyFileVersion() As string
        
    
    
    (return (i32.const 1328))
    )
    
    
    


    ;; Application Initialize
    ;; 
    ;; Sub New
    (func $Application_SubNew
        ;; call of the global variable initialize
        (call $global.initializer )

        (call $defines.constructor )

(call $Algorithm.constructor )

(call $Math.constructor )

(call $Debugger.constructor )
    )

    ;; Initializer for global variables if it is not a primitive abstract type
    (func $global.initializer  
    ;; Public Function initializer() As void
    
(local $arrayOffset_P0000b7C3zV i32)
(local $arrayOffset_C0000cN7Jjc i32)
(local $arrayOffset_N0000dJN8sU i32)
(local $arrayOffset_S0000eEp8Cz i32)


;; Save (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_local $arrayOffset_P0000b7C3zV)
(set_local $arrayOffset_P0000b7C3zV (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) (i32.const 12))) (i32.const 7)))
;; class_id/typealias_enum i32 data: (i32.const 600)/array(Of intptr)
(i32.store (get_local $arrayOffset_P0000b7C3zV) (i32.const 600))
(i32.store (i32.add (get_local $arrayOffset_P0000b7C3zV) (i32.const 4)) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Assign array memory data to another expression
(set_global $Algorithm.circleData (get_local $arrayOffset_P0000b7C3zV))

;; Save (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_local $arrayOffset_C0000cN7Jjc)
(set_local $arrayOffset_C0000cN7Jjc (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) (i32.const 4))) (i32.const 7)))
;; class_id/typealias_enum i32 data: (i32.const 13)/array(Of intptr)
(i32.store (get_local $arrayOffset_C0000cN7Jjc) (i32.const 13))
(i32.store (i32.add (get_local $arrayOffset_C0000cN7Jjc) (i32.const 4)) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Assign array memory data to another expression
(set_global $Algorithm.circlevData (get_local $arrayOffset_C0000cN7Jjc))

;; Save (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_local $arrayOffset_N0000dJN8sU)
(set_local $arrayOffset_N0000dJN8sU (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)) (i32.const 4))) (i32.const 7)))
;; class_id/typealias_enum i32 data: (i32.const 272)/array(Of intptr)
(i32.store (get_local $arrayOffset_N0000dJN8sU) (i32.const 272))
(i32.store (i32.add (get_local $arrayOffset_N0000dJN8sU) (i32.const 4)) (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Assign array memory data to another expression
(set_global $Algorithm.cellCircles (get_local $arrayOffset_N0000dJN8sU))

;; Save (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_local $arrayOffset_S0000eEp8Cz)
(set_local $arrayOffset_S0000eEp8Cz (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)) (i32.const 4))) (i32.const 7)))
;; class_id/typealias_enum i32 data: (i32.const 272)/array(Of intptr)
(i32.store (get_local $arrayOffset_S0000eEp8Cz) (i32.const 272))
(i32.store (i32.add (get_local $arrayOffset_S0000eEp8Cz) (i32.const 4)) (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Assign array memory data to another expression
(set_global $Algorithm.grid (get_local $arrayOffset_S0000eEp8Cz))
)

    (func $defines.constructor  
    ;; Public Function constructor() As void
    



)

(func $Algorithm.constructor  
    ;; Public Function constructor() As void
    
(local $row i32)
(local $i i32)
(local $z i32)
(local $j i32)
(local $l i32)

(set_local $row (i32.const 0))
(call $Debugger.println (i32.const 976))
(set_local $i (i32.const 0))
;; For i As Integer = 0 To grid.Length - 1

(block $block_b00016C4aDZ 
    (loop $loop_e00017PJVsW

                (br_if $block_b00016C4aDZ (i32.gt_s (get_local $i) (i32.sub (i32.load (i32.add (get_global $Algorithm.grid) (i32.const 4))) (i32.const 1))))
        (set_local $row (call $Algorithm.createGridRow ))
        (i32.store (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4))) (get_local $row))
        (call $Debugger.println (call $string.add (call $string.add (call $string.add (i32.const 1000) (call $i32.toString (get_local $i))) (i32.const 1008)) (call $i32.toString (get_local $row))))
        (set_local $z (i32.const 0))
        ;; For z As Integer = 0 To row.Length - 1
        
(block $block_Q000180F5j9 
    (loop $loop_200019ycwj6

                (br_if $block_Q000180F5j9 (i32.gt_s (get_local $z) (i32.sub (i32.load (i32.add (get_local $row) (i32.const 4))) (i32.const 1))))
        (i32.store (i32.add (i32.add (get_local $row) (i32.const 8)) (i32.mul (get_local $z) (i32.const 4))) (call $Algorithm.createCircle ))
        ;; For loop control step: (i32.const 1)
        (set_local $z (i32.add (get_local $z) (i32.const 1)))
        (br $loop_200019ycwj6)
        ;; For Loop Next On loop_200019ycwj6

    )
)
        ;; For loop control step: (i32.const 1)
        (set_local $i (i32.add (get_local $i) (i32.const 1)))
        (br $loop_e00017PJVsW)
        ;; For Loop Next On loop_e00017PJVsW

    )
)
(set_local $j (i32.const 0))
;; For j As Integer = 0 To circlevData.Length - 1

(block $block_R0001aI1Sup 
    (loop $loop_i0001btFA8l

                (br_if $block_R0001aI1Sup (i32.gt_s (get_local $j) (i32.sub (i32.load (i32.add (get_global $Algorithm.circlevData) (i32.const 4))) (i32.const 1))))
        (i32.store (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4))) (call $Algorithm.createMoveVector ))
        ;; For loop control step: (i32.const 1)
        (set_local $j (i32.add (get_local $j) (i32.const 1)))
        (br $loop_i0001btFA8l)
        ;; For Loop Next On loop_i0001btFA8l

    )
)
(call $Debugger.println (call $string.add (i32.const 1016) (call $i32.toString (get_global $Algorithm.circlevData))))
(set_local $l (i32.const 0))
;; For l As Integer = 0 To cellCircles.Length - 1

(block $block_T0001cnvim9 
    (loop $loop_y0001dfIiXA

                (br_if $block_T0001cnvim9 (i32.gt_s (get_local $l) (i32.sub (i32.load (i32.add (get_global $Algorithm.cellCircles) (i32.const 4))) (i32.const 1))))
        (i32.store (i32.add (i32.add (get_global $Algorithm.cellCircles) (i32.const 8)) (i32.mul (get_local $l) (i32.const 4))) (call $Algorithm.createCircle ))
        ;; For loop control step: (i32.const 1)
        (set_local $l (i32.add (get_local $l) (i32.const 1)))
        (br $loop_y0001dfIiXA)
        ;; For Loop Next On loop_y0001dfIiXA

    )
)
(call $Debugger.println (call $string.add (i32.const 1040) (call $i32.toString (get_global $Algorithm.cellCircles))))
)

(func $Math.constructor  
    ;; Public Function constructor() As void
    



)

(func $Debugger.constructor  
    ;; Public Function constructor() As void
    



)

    (start $Application_SubNew)
)