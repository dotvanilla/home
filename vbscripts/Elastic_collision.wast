(module ;; Module WebGL_Demo

    ;; Auto-Generated VisualBasic.NET WebAssembly Code
    ;;
    ;; WASM for VisualBasic.NET
    ;; 
    ;; version: 1.3.0.22
    ;; build: 6/12/2019 7:12:25 PM
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
    (global $global.ObjectManager (mut i32) (i32.const 1440))

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
    
    ;; String from 928 with 42 bytes in memory
    (data (i32.const 928) "ensure no collisions for starting position\00")
    
    ;; String from 976 with 10 bytes in memory
    (data (i32.const 976) "circle = #\00")
    
    ;; String from 992 with 3 bytes in memory
    (data (i32.const 992) " (&\00")
    
    ;; String from 1000 with 1 bytes in memory
    (data (i32.const 1000) ")\00")
    
    ;; String from 1008 with 11 bytes in memory
    (data (i32.const 1008) "circleV = &\00")
    
    ;; String from 1024 with 16 bytes in memory
    (data (i32.const 1024) "Loop for next...\00")
    
    ;; String from 1048 with 22 bytes in memory
    (data (i32.const 1048) "Initialize application\00")
    
    ;; String from 1072 with 5 bytes in memory
    (data (i32.const 1072) "row #\00")
    
    ;; String from 1080 with 4 bytes in memory
    (data (i32.const 1080) " = &\00")
    
    ;; String from 1088 with 16 bytes in memory
    (data (i32.const 1088) "circlevdata => &\00")
    
    ;; String from 1112 with 21 bytes in memory
    (data (i32.const 1112) "new cell circle for #\00")
    
    ;; String from 1136 with 5 bytes in memory
    (data (i32.const 1136) " at &\00")
    
    ;; String from 1144 with 16 bytes in memory
    (data (i32.const 1144) "cellcircles => &\00")
    
    ;; String from 1168 with 10 bytes in memory
    (data (i32.const 1168) "WebGL-Demo\00")
    
    ;; String from 1184 with 80 bytes in memory
    (data (i32.const 1184) "WebAssembly conversion demonstrating the faster-performing grid of linked-lists.\00")
    
    ;; String from 1272 with 3 bytes in memory
    (data (i32.const 1272) "MIT\00")
    
    ;; String from 1280 with 10 bytes in memory
    (data (i32.const 1280) "WebGL-Demo\00")
    
    ;; String from 1296 with 69 bytes in memory
    (data (i32.const 1296) "https://github.com/guybedford/wasm-demo/blob/master/native/demo-opt.c\00")
    
    ;; String from 1368 with 13 bytes in memory
    (data (i32.const 1368) "vanillavb.app\00")
    
    ;; String from 1384 with 36 bytes in memory
    (data (i32.const 1384) "83ca2b93-4e57-4d44-b2bc-163252a9305d\00")
    
    ;; String from 1424 with 7 bytes in memory
    (data (i32.const 1424) "1.0.0.0\00")
    
    ;; String from 1432 with 7 bytes in memory
    (data (i32.const 1432) "1.0.0.0\00")
    
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
(global $defines.CIRCLE_COUNT (mut i32) (i32.const 100))
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
        
    (local $arrayOffset_U0000b0h018 i32)
    (local $arrayOffset_T0000cy75o8 i32)
    (local $arrayOffset_40000dh3c6e i32)
    (local $arrayOffset_y0000eRsJ8H i32)
    (local $arrayOffset_20000fz93KW i32)
    
    
    ;; Save (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1)) array element data to memory:
    ;; Array memory block begin at location: (get_local $arrayOffset_20000fz93KW)
    (set_local $arrayOffset_20000fz93KW (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1)) (i32.const 4))) (i32.const 7)))
    ;; class_id/typealias_enum i32 data: (i32.const 272)/array(Of intptr)
    (i32.store (get_local $arrayOffset_20000fz93KW) (i32.const 272))
    (i32.store (i32.add (get_local $arrayOffset_20000fz93KW) (i32.const 4)) (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1)))
    ;; End of byte marks meta data, start write data blocks
    ;; Assign array memory data to another expression
    (return (get_local $arrayOffset_20000fz93KW))
    )
    
    
    (func $Algorithm.createCircle  (result i32)
        ;; Public Function createCircle() As intptr
        
    (local $newObject_U0000gVEDeC i32)
    
    
    ;; Initialize a object instance of [[272]CellCircle]
    ;; Object memory block begin at location: (get_local $newObject_U0000gVEDeC)
    (set_local $newObject_U0000gVEDeC (call $global.ObjectManager.Allocate (i32.const 8) (i32.const 272)))
    ;; set field [CellCircle::next]
    (i32.store (i32.add (get_local $newObject_U0000gVEDeC) (i32.const 0)) (i32.const 0))
    ;; set field [CellCircle::circleIndex]
    (i32.store (i32.add (get_local $newObject_U0000gVEDeC) (i32.const 4)) (i32.const 0))
    ;; Initialize an object memory block with 8 bytes data
    
    (return (get_local $newObject_U0000gVEDeC))
    )
    
    
    (func $Algorithm.createMoveVector  (result i32)
        ;; Public Function createMoveVector() As intptr
        
    (local $newObject_L0000h5Sig8 i32)
    
    
    ;; Initialize a object instance of [[13]CircleV]
    ;; Object memory block begin at location: (get_local $newObject_L0000h5Sig8)
    (set_local $newObject_L0000h5Sig8 (call $global.ObjectManager.Allocate (i32.const 8) (i32.const 13)))
    ;; set field [CircleV::vx]
    (f32.store (i32.add (get_local $newObject_L0000h5Sig8) (i32.const 0)) (f32.demote/f64 (call $Math.random )))
    ;; set field [CircleV::vy]
    (f32.store (i32.add (get_local $newObject_L0000h5Sig8) (i32.const 4)) (f32.demote/f64 (call $Math.random )))
    ;; Initialize an object memory block with 8 bytes data
    
    (return (get_local $newObject_L0000h5Sig8))
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
        
    (local $x1 f32)
    (local $y1 f32)
    (local $r1 f32)
    (local $circle i32)
    (local $i i32)
    (local $collision i32)
    (local $x f32)
    (local $y f32)
    (local $r f32)
    (local $j i32)
    
    (set_local $x1 (f32.const 0))
    (set_local $y1 (f32.const 0))
    (set_local $r1 (f32.const 0))
    (set_local $circle (i32.const 0))
    (call $Debugger.println (call $string.add (i32.const 904) (call $i32.toString (get_global $Algorithm.circleData))))
    (set_local $i (i32.const 0))
    ;; For i As Integer = 0 To CIRCLE_COUNT - 1
    
    (block $block_O0000iDyy1N 
        (loop $loop_Z0000jC8YI8
    
                    (br_if $block_O0000iDyy1N (i32.gt_s (get_local $i) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1))))
            (set_local $collision (i32.const 0))
            (set_local $x (f32.const 0))
            (set_local $y (f32.const 0))
            (set_local $r (f32.const 0))
            ;; Do ... Loop
            ;; Start Do While Block block_L0000kZNmZA
            
    (block $block_L0000kZNmZA 
        (loop $loop_p0000lmRQtU
    
                    (set_local $collision (i32.const 0))
            (set_local $x (f32.demote/f64 (f64.mul (f64.promote/f32 (get_local $displayWidth)) (call $Math.random ))))
            (set_local $y (f32.demote/f64 (f64.mul (f64.promote/f32 (get_local $displayHeight)) (call $Math.random ))))
            (set_local $r (f32.demote/f64 (call $Math.ceil (f64.div (call $Math.exp (f64.mul (call $Math.random ) (f64.convert_s/i32 (i32.const 8)))) (f64.const 23.2887)))))
            
    (if (i32.add (i32.add (i32.add (f32.lt (f32.sub (get_local $displayWidth) (f32.add (get_local $x) (get_local $r))) (f32.convert_s/i32 (i32.const 0))) (f32.lt (f32.sub (get_local $x) (get_local $r)) (f32.convert_s/i32 (i32.const 0)))) (f32.lt (f32.sub (get_local $displayHeight) (f32.add (get_local $y) (get_local $r))) (f32.convert_s/i32 (i32.const 0)))) (f32.lt (f32.sub (get_local $y) (get_local $r)) (f32.convert_s/i32 (i32.const 0)))) 
        (then
                    (set_local $collision (i32.const 1))
        ) (else
                    (call $Debugger.println (i32.const 928))
            (set_local $j (i32.const 0))
            ;; For j As Integer = 0 To i - 1
            
    (block $block_M0000m6e5yc 
        (loop $loop_m0000n5LX7M
    
                    (br_if $block_M0000m6e5yc (i32.gt_s (get_local $j) (i32.sub (get_local $i) (i32.const 1))))
            (set_local $circle (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 12)))))
            (set_local $x1 (f32.load (i32.add (get_local $circle) (i32.const 4))))
            (set_local $y1 (f32.load (i32.add (get_local $circle) (i32.const 0))))
            (set_local $r1 (f32.load (i32.add (get_local $circle) (i32.const 8))))
            
    (if (call $Math.detectCircleCollision (get_local $x) (get_local $y) (get_local $r) (get_local $x1) (get_local $y1) (get_local $r1)) 
        (then
                    (set_local $collision (i32.const 1))
            (br_if $block_L0000kZNmZA (i32.const 1))
        ) 
    )
            ;; For loop control step: (i32.const 1)
            (set_local $j (i32.add (get_local $j) (i32.const 1)))
            (br $loop_m0000n5LX7M)
            ;; For Loop Next On loop_m0000n5LX7M
    
        )
    )
        )
    )
            (br_if $block_L0000kZNmZA (i32.eqz (get_local $collision)))
            (br $loop_p0000lmRQtU)
    
        )
    )
            ;; End Loop loop_p0000lmRQtU
            (f32.store (i32.add (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12))) (i32.const 4)) (get_local $x))
            (f32.store (i32.add (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12))) (i32.const 0)) (get_local $y))
            (f32.store (i32.add (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12))) (i32.const 8)) (get_local $r))
            (call $Debugger.println (call $string.add (call $string.add (call $string.add (call $string.add (i32.const 976) (call $i32.toString (get_local $i))) (i32.const 992)) (call $i32.toString (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 12)))))) (i32.const 1000)))
            (call $Debugger.println (call $string.add (i32.const 1008) (call $i32.toString (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0)) (f32.demote/f64 (f64.mul (f64.sub (call $Math.random ) (f64.const 0.5)) (f64.const 0.1))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4)) (f32.demote/f64 (f64.mul (f64.sub (call $Math.random ) (f64.const 0.5)) (f64.const 0.1))))
            (call $Debugger.println (i32.const 1024))
            ;; For loop control step: (i32.const 1)
            (set_local $i (i32.add (get_local $i) (i32.const 1)))
            (br $loop_Z0000jC8YI8)
            ;; For Loop Next On loop_Z0000jC8YI8
    
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
    
    (block $block_30000o9oyV3 
        (loop $loop_70000p4HK41
    
                    (br_if $block_30000o9oyV3 (i32.gt_s (get_local $p) (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1))))
            (set_local $row (i32.load (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $p) (i32.const 4)))))
            (set_local $q (i32.const 0))
            ;; For q As Integer = 0 To GRID_HEIGHT - 1
            
    (block $block_k0000qAVFUc 
        (loop $loop_G0000r7mmvz
    
                    (br_if $block_k0000qAVFUc (i32.gt_s (get_local $q) (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1))))
            (i32.store (i32.add (i32.add (get_local $row) (i32.const 8)) (i32.mul (get_local $q) (i32.const 4))) (i32.const 0))
            ;; For loop control step: (i32.const 1)
            (set_local $q (i32.add (get_local $q) (i32.const 1)))
            (br $loop_G0000r7mmvz)
            ;; For Loop Next On loop_G0000r7mmvz
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $p (i32.add (get_local $p) (i32.const 1)))
            (br $loop_70000p4HK41)
            ;; For Loop Next On loop_70000p4HK41
    
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
    
    (block $block_k0000s73v0y 
        (loop $loop_I0000t98mzm
    
                    (br_if $block_k0000s73v0y (i32.gt_s (get_local $i) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1))))
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
            
    (block $block_90000uR6S9L 
        (loop $loop_X0000v4pVI2
    
                    (br_if $block_90000uR6S9L (i32.gt_s (get_local $p2) (get_local $rightCol)))
            (set_local $row1 (i32.load (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $p2) (i32.const 4)))))
            (set_local $q2 (get_local $topRow))
            ;; For q2 As Integer = topRow To bottomRow
            
    (block $block_m0000wp8LSD 
        (loop $loop_r0000xMsSR2
    
                    (br_if $block_m0000wp8LSD (i32.gt_s (get_local $q2) (get_local $bottomRow)))
            (set_local $cellCircle (i32.load (i32.add (i32.add (get_global $Algorithm.cellCircles) (i32.const 8)) (i32.mul (get_local $cellCircleCount) (i32.const 4)))))
            (set_local $cellCircleCount (i32.add (get_local $cellCircleCount) (i32.const 1)))
            (i32.store (i32.add (get_local $cellCircle) (i32.const 4)) (get_local $i))
            (i32.store (i32.add (get_local $cellCircle) (i32.const 0)) (i32.load (i32.add (i32.add (get_local $row1) (i32.const 8)) (i32.mul (get_local $q2) (i32.const 4)))))
            (i32.store (i32.add (i32.add (get_local $row1) (i32.const 8)) (i32.mul (get_local $q2) (i32.const 4))) (get_local $cellCircle))
            ;; For loop control step: (i32.const 1)
            (set_local $q2 (i32.add (get_local $q2) (i32.const 1)))
            (br $loop_r0000xMsSR2)
            ;; For Loop Next On loop_r0000xMsSR2
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $p2 (i32.add (get_local $p2) (i32.const 1)))
            (br $loop_X0000v4pVI2)
            ;; For Loop Next On loop_X0000v4pVI2
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $i (i32.add (get_local $i) (i32.const 1)))
            (br $loop_I0000t98mzm)
            ;; For Loop Next On loop_I0000t98mzm
    
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
    
    (block $block_D0000yS7SP5 
        (loop $loop_d0000zg1y0V
    
                    (br_if $block_D0000yS7SP5 (i32.gt_s (get_local $p1) (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1))))
            (set_local $row2 (i32.load (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $p1) (i32.const 4)))))
            (set_local $q1 (i32.const 0))
            ;; For q1 As Integer = 0 To GRID_HEIGHT - 1
            
    (block $block_L00010dks1D 
        (loop $loop_Z00011c0xe2
    
                    (br_if $block_L00010dks1D (i32.gt_s (get_local $q1) (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1))))
            (set_local $iCellCircle (i32.load (i32.add (i32.add (get_local $row2) (i32.const 8)) (i32.mul (get_local $q1) (i32.const 4)))))
            ;; Do While Not iCellCircle Is Nothing
            ;; Start Do While Block block_500012n361P
            
    (block $block_500012n361P 
        (loop $loop_50001335f3g
    
                    (br_if $block_500012n361P (i32.eqz (i32.eqz (i32.eq (get_local $iCellCircle) (i32.const 0)))))
            (set_local $index (i32.load (i32.add (get_local $iCellCircle) (i32.const 4))))
            (set_local $xi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 12)))) (i32.const 4))))
            (set_local $yi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 12)))) (i32.const 0))))
            (set_local $ri (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 12)))) (i32.const 8))))
            (set_local $vxi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 0))))
            (set_local $vyi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 4))))
            (set_local $jCellCircle (get_local $iCellCircle))
            (set_local $jCellCircle (i32.load (i32.add (get_local $jCellCircle) (i32.const 0))))
            ;; Do While Not jCellCircle Is Nothing
            ;; Start Do While Block block_M00014DAr2W
            
    (block $block_M00014DAr2W 
        (loop $loop_A00015Y2R7O
    
                    (br_if $block_M00014DAr2W (i32.eqz (i32.eqz (i32.eq (get_local $jCellCircle) (i32.const 0)))))
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
            (br $loop_A00015Y2R7O)
    
        )
    )
            ;; End Loop loop_A00015Y2R7O
            (set_local $iCellCircle (i32.load (i32.add (get_local $iCellCircle) (i32.const 0))))
            (br $loop_50001335f3g)
    
        )
    )
            ;; End Loop loop_50001335f3g
            ;; For loop control step: (i32.const 1)
            (set_local $q1 (i32.add (get_local $q1) (i32.const 1)))
            (br $loop_Z00011c0xe2)
            ;; For Loop Next On loop_Z00011c0xe2
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $p1 (i32.add (get_local $p1) (i32.const 1)))
            (br $loop_d0000zg1y0V)
            ;; For Loop Next On loop_d0000zg1y0V
    
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
        
    
    
    (return (i32.const 1168))
    )
    
    
    (func $AssemblyInfo.AssemblyDescription  (result i32)
        ;; Public Function AssemblyDescription() As string
        
    
    
    (return (i32.const 1184))
    )
    
    
    (func $AssemblyInfo.AssemblyCompany  (result i32)
        ;; Public Function AssemblyCompany() As string
        
    
    
    (return (i32.const 1272))
    )
    
    
    (func $AssemblyInfo.AssemblyProduct  (result i32)
        ;; Public Function AssemblyProduct() As string
        
    
    
    (return (i32.const 1280))
    )
    
    
    (func $AssemblyInfo.AssemblyCopyright  (result i32)
        ;; Public Function AssemblyCopyright() As string
        
    
    
    (return (i32.const 1296))
    )
    
    
    (func $AssemblyInfo.AssemblyTrademark  (result i32)
        ;; Public Function AssemblyTrademark() As string
        
    
    
    (return (i32.const 1368))
    )
    
    
    (func $AssemblyInfo.Guid  (result i32)
        ;; Public Function Guid() As string
        
    
    
    (return (i32.const 1384))
    )
    
    
    (func $AssemblyInfo.AssemblyVersion  (result i32)
        ;; Public Function AssemblyVersion() As string
        
    
    
    (return (i32.const 1424))
    )
    
    
    (func $AssemblyInfo.AssemblyFileVersion  (result i32)
        ;; Public Function AssemblyFileVersion() As string
        
    
    
    (return (i32.const 1432))
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
    
(local $arrayOffset_U0000b0h018 i32)
(local $arrayOffset_T0000cy75o8 i32)
(local $arrayOffset_40000dh3c6e i32)
(local $arrayOffset_y0000eRsJ8H i32)


;; Save (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_local $arrayOffset_U0000b0h018)
(set_local $arrayOffset_U0000b0h018 (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) (i32.const 12))) (i32.const 7)))
;; class_id/typealias_enum i32 data: (i32.const 600)/array(Of intptr)
(i32.store (get_local $arrayOffset_U0000b0h018) (i32.const 600))
(i32.store (i32.add (get_local $arrayOffset_U0000b0h018) (i32.const 4)) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Assign array memory data to another expression
(set_global $Algorithm.circleData (get_local $arrayOffset_U0000b0h018))

;; Save (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_local $arrayOffset_T0000cy75o8)
(set_local $arrayOffset_T0000cy75o8 (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) (i32.const 4))) (i32.const 7)))
;; class_id/typealias_enum i32 data: (i32.const 13)/array(Of intptr)
(i32.store (get_local $arrayOffset_T0000cy75o8) (i32.const 13))
(i32.store (i32.add (get_local $arrayOffset_T0000cy75o8) (i32.const 4)) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Assign array memory data to another expression
(set_global $Algorithm.circlevData (get_local $arrayOffset_T0000cy75o8))

;; Save (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_local $arrayOffset_40000dh3c6e)
(set_local $arrayOffset_40000dh3c6e (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)) (i32.const 4))) (i32.const 7)))
;; class_id/typealias_enum i32 data: (i32.const 272)/array(Of intptr)
(i32.store (get_local $arrayOffset_40000dh3c6e) (i32.const 272))
(i32.store (i32.add (get_local $arrayOffset_40000dh3c6e) (i32.const 4)) (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Assign array memory data to another expression
(set_global $Algorithm.cellCircles (get_local $arrayOffset_40000dh3c6e))

;; Save (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_local $arrayOffset_y0000eRsJ8H)
(set_local $arrayOffset_y0000eRsJ8H (call $global.ObjectManager.Allocate (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)) (i32.const 4))) (i32.const 7)))
;; class_id/typealias_enum i32 data: (i32.const 272)/array(Of intptr)
(i32.store (get_local $arrayOffset_y0000eRsJ8H) (i32.const 272))
(i32.store (i32.add (get_local $arrayOffset_y0000eRsJ8H) (i32.const 4)) (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Assign array memory data to another expression
(set_global $Algorithm.grid (get_local $arrayOffset_y0000eRsJ8H))
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
(call $Debugger.println (i32.const 1048))
(set_local $i (i32.const 0))
;; For i As Integer = 0 To grid.Length - 1

(block $block_A00016VX92P 
    (loop $loop_x000171EzJb

                (br_if $block_A00016VX92P (i32.gt_s (get_local $i) (i32.sub (i32.load (i32.add (get_global $Algorithm.grid) (i32.const 4))) (i32.const 1))))
        (set_local $row (call $Algorithm.createGridRow ))
        (i32.store (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4))) (get_local $row))
        (call $Debugger.println (call $string.add (call $string.add (call $string.add (i32.const 1072) (call $i32.toString (get_local $i))) (i32.const 1080)) (call $i32.toString (get_local $row))))
        (set_local $z (i32.const 0))
        ;; For z As Integer = 0 To row.Length - 1
        
(block $block_K000189s0Hp 
    (loop $loop_600019J8Sac

                (br_if $block_K000189s0Hp (i32.gt_s (get_local $z) (i32.sub (i32.load (i32.add (get_local $row) (i32.const 4))) (i32.const 1))))
        (i32.store (i32.add (i32.add (get_local $row) (i32.const 8)) (i32.mul (get_local $z) (i32.const 4))) (call $Algorithm.createCircle ))
        ;; For loop control step: (i32.const 1)
        (set_local $z (i32.add (get_local $z) (i32.const 1)))
        (br $loop_600019J8Sac)
        ;; For Loop Next On loop_600019J8Sac

    )
)
        ;; For loop control step: (i32.const 1)
        (set_local $i (i32.add (get_local $i) (i32.const 1)))
        (br $loop_x000171EzJb)
        ;; For Loop Next On loop_x000171EzJb

    )
)
(set_local $j (i32.const 0))
;; For j As Integer = 0 To circlevData.Length - 1

(block $block_70001aXxKtL 
    (loop $loop_C0001bm7DlC

                (br_if $block_70001aXxKtL (i32.gt_s (get_local $j) (i32.sub (i32.load (i32.add (get_global $Algorithm.circlevData) (i32.const 4))) (i32.const 1))))
        (i32.store (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4))) (call $Algorithm.createMoveVector ))
        ;; For loop control step: (i32.const 1)
        (set_local $j (i32.add (get_local $j) (i32.const 1)))
        (br $loop_C0001bm7DlC)
        ;; For Loop Next On loop_C0001bm7DlC

    )
)
(call $Debugger.println (call $string.add (i32.const 1088) (call $i32.toString (get_global $Algorithm.circlevData))))
(set_local $l (i32.const 0))
;; For l As Integer = 0 To cellCircles.Length - 1

(block $block_y0001cTTXCP 
    (loop $loop_G0001dsz4KE

                (br_if $block_y0001cTTXCP (i32.gt_s (get_local $l) (i32.sub (i32.load (i32.add (get_global $Algorithm.cellCircles) (i32.const 4))) (i32.const 1))))
        (i32.store (i32.add (i32.add (get_global $Algorithm.cellCircles) (i32.const 8)) (i32.mul (get_local $l) (i32.const 4))) (call $Algorithm.createCircle ))
        (call $Debugger.println (call $string.add (call $string.add (call $string.add (i32.const 1112) (call $i32.toString (get_local $l))) (i32.const 1136)) (call $i32.toString (i32.load (i32.add (i32.add (get_global $Algorithm.cellCircles) (i32.const 8)) (i32.mul (get_local $l) (i32.const 4)))))))
        ;; For loop control step: (i32.const 1)
        (set_local $l (i32.add (get_local $l) (i32.const 1)))
        (br $loop_G0001dsz4KE)
        ;; For Loop Next On loop_G0001dsz4KE

    )
)
(call $Debugger.println (call $string.add (i32.const 1144) (call $i32.toString (get_global $Algorithm.cellCircles))))
)

(func $Math.constructor  
    ;; Public Function constructor() As void
    



)

(func $Debugger.constructor  
    ;; Public Function constructor() As void
    



)

    (start $Application_SubNew)
)