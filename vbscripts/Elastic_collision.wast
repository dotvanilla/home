(module ;; Module WebGL_Demo

    ;; Auto-Generated VisualBasic.NET WebAssembly Code
    ;;
    ;; WASM for VisualBasic.NET
    ;; 
    ;; version: 1.3.0.22
    ;; build: 5/18/2019 8:13:03 PM
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
    
    ;; Only allows one memory block in each module
    (memory (import "env" "bytechunks") 1)

    ;; A global object manager for create user object in WebAssembly
    ;; Its initialize value is the total size of the string data
    ;; of this webassembly module
    (global $global.ObjectManager (mut i32) (i32.const 1202))

    ;; Memory data for string constant
        
    ;; String from 958 with 10 bytes in memory
    (data (i32.const 958) "WebGL-Demo\00")
    
    ;; String from 969 with 80 bytes in memory
    (data (i32.const 969) "WebAssembly conversion demonstrating the faster-performing grid of linked-lists.\00")
    
    ;; String from 1050 with 3 bytes in memory
    (data (i32.const 1050) "MIT\00")
    
    ;; String from 1054 with 10 bytes in memory
    (data (i32.const 1054) "WebGL-Demo\00")
    
    ;; String from 1065 with 69 bytes in memory
    (data (i32.const 1065) "https://github.com/guybedford/wasm-demo/blob/master/native/demo-opt.c\00")
    
    ;; String from 1135 with 13 bytes in memory
    (data (i32.const 1135) "vanillavb.app\00")
    
    ;; String from 1149 with 36 bytes in memory
    (data (i32.const 1149) "83ca2b93-4e57-4d44-b2bc-163252a9305d\00")
    
    ;; String from 1186 with 7 bytes in memory
    (data (i32.const 1186) "1.0.0.0\00")
    
    ;; String from 1194 with 7 bytes in memory
    (data (i32.const 1194) "1.0.0.0\00")
    
    ;; Memory data for user defined class object its meta data
    ;; all of these string is base64 encoded json object
        
    ;; String from 11 with 336 bytes in memory
    ;;
    ;; class [11] Circle
    ;;
    (data (i32.const 11) "eyJjb21tZW50IjpudWxsLCJtZW1vcnlQdHIiOnsiVmFsdWUiOjExfSwiY2xhc3MiOiJDaXJjbGUiLCJjbGFzc19pZCI6MTEsImZpZWxkcyI6eyJ4Ijp7ImdlbmVyaWMiOltdLCJyYXciOiJmMzIiLCJ0eXBlIjozfSwieSI6eyJnZW5lcmljIjpbXSwicmF3IjoiZjMyIiwidHlwZSI6M30sInIiOnsiZ2VuZXJpYyI6W10sInJhdyI6ImYzMiIsInR5cGUiOjN9fSwiaXNTdHJ1Y3QiOmZhbHNlLCJtZXRob2RzIjp7fSwibmFtZXNwYWNlIjpudWxsfQ==\00")
    
    ;; String from 348 with 288 bytes in memory
    ;;
    ;; class [348] CircleV
    ;;
    (data (i32.const 348) "eyJjb21tZW50IjpudWxsLCJtZW1vcnlQdHIiOnsiVmFsdWUiOjM0OH0sImNsYXNzIjoiQ2lyY2xlViIsImNsYXNzX2lkIjozNDgsImZpZWxkcyI6eyJ2eSI6eyJnZW5lcmljIjpbXSwicmF3IjoiZjMyIiwidHlwZSI6M30sInZ4Ijp7ImdlbmVyaWMiOltdLCJyYXciOiJmMzIiLCJ0eXBlIjozfX0sImlzU3RydWN0IjpmYWxzZSwibWV0aG9kcyI6e30sIm5hbWVzcGFjZSI6bnVsbH0=\00")
    
    ;; String from 637 with 324 bytes in memory
    ;;
    ;; class [637] CellCircle
    ;;
    (data (i32.const 637) "eyJjb21tZW50IjpudWxsLCJtZW1vcnlQdHIiOnsiVmFsdWUiOjYzN30sImNsYXNzIjoiQ2VsbENpcmNsZSIsImNsYXNzX2lkIjo2MzcsImZpZWxkcyI6eyJuZXh0Ijp7ImdlbmVyaWMiOltdLCJyYXciOiJbNjM3XUNlbGxDaXJjbGUiLCJ0eXBlIjoxMH0sImNpcmNsZUluZGV4Ijp7ImdlbmVyaWMiOltdLCJyYXciOiJpMzIiLCJ0eXBlIjoxfX0sImlzU3RydWN0IjpmYWxzZSwibWV0aG9kcyI6e30sIm5hbWVzcGFjZSI6bnVsbH0=\00")

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
    ;; export from VB.NET module: [Algorithm]
    
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
    
    (func $Algorithm.getCircleDataOffset  (result i32)
        ;; Public Function getCircleDataOffset() As array(Of intptr)
        
    (local $arrayOffset_9a020000 i32)
    (local $arrayOffset_9b020000 i32)
    (local $arrayOffset_9c020000 i32)
    (local $arrayOffset_9d020000 i32)
    
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
    
    (set_local $i (i32.const 0))
    ;; For i As Integer = 0 To CIRCLE_COUNT - 1
    
    (block $block_9e020000 
        (loop $loop_9f020000
    
                    (br_if $block_9e020000 (i32.gt_s (get_local $i) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1))))
            (set_local $collision (i32.const 0))
            (set_local $x (f32.const 0))
            (set_local $y (f32.const 0))
            (set_local $r (f32.const 0))
            ;; Do ... Loop
            ;; Start Do While Block block_a0020000
            
    (block $block_a0020000 
        (loop $loop_a1020000
    
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
            
    (block $block_a2020000 
        (loop $loop_a3020000
    
                    (br_if $block_a2020000 (i32.gt_s (get_local $j) (i32.sub (get_local $i) (i32.const 1))))
            
    (if (call $Math.detectCircleCollision (get_local $x) (get_local $y) (get_local $r) (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 0))) (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 4))) (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 8)))) 
        (then
                    (set_local $collision (i32.const 1))
            (br_if $block_a0020000 (i32.const 1))
        ) 
    )
            ;; For loop control step: (i32.const 1)
            (set_local $j (i32.add (get_local $j) (i32.const 1)))
            (br $loop_a3020000)
            ;; For Loop Next On loop_a3020000
    
        )
    )
        )
    )
            (br_if $block_a0020000 (i32.eqz (get_local $collision)))
            (br $loop_a1020000)
    
        )
    )
            ;; End Loop loop_a1020000
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0)) (get_local $x))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4)) (get_local $y))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 8)) (get_local $r))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4)) (f32.demote/f64 (f64.mul (f64.sub (call $Math.random ) (f64.const 0.5)) (f64.const 0.1))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0)) (f32.demote/f64 (f64.mul (f64.sub (call $Math.random ) (f64.const 0.5)) (f64.const 0.1))))
            ;; For loop control step: (i32.const 1)
            (set_local $i (i32.add (get_local $i) (i32.const 1)))
            (br $loop_9f020000)
            ;; For Loop Next On loop_9f020000
    
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
    
    (block $block_a4020000 
        (loop $loop_a5020000
    
                    (br_if $block_a4020000 (i32.gt_s (get_local $p) (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1))))
            (set_local $row (i32.load (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $p) (i32.const 4)))))
            (set_local $q (i32.const 0))
            ;; For q As Integer = 0 To GRID_HEIGHT - 1
            
    (block $block_a6020000 
        (loop $loop_a7020000
    
                    (br_if $block_a6020000 (i32.gt_s (get_local $q) (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1))))
            (i32.store (i32.add (i32.add (get_local $row) (i32.const 8)) (i32.mul (get_local $q) (i32.const 4))) (i32.const 0))
            ;; For loop control step: (i32.const 1)
            (set_local $q (i32.add (get_local $q) (i32.const 1)))
            (br $loop_a7020000)
            ;; For Loop Next On loop_a7020000
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $p (i32.add (get_local $p) (i32.const 1)))
            (br $loop_a5020000)
            ;; For Loop Next On loop_a5020000
    
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
    
    (block $block_a8020000 
        (loop $loop_a9020000
    
                    (br_if $block_a8020000 (i32.gt_s (get_local $i) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1))))
            (set_local $xi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0))))
            (set_local $yi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4))))
            (set_local $ri (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 8))))
            (set_local $vxi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4))))
            (set_local $vyi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0))))
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
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0)) (f32.add (get_local $xi) (get_local $vxi)))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4)) (f32.add (get_local $yi) (get_local $vyi)))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 4)) (get_local $vxi))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4)))) (i32.const 0)) (get_local $vyi))
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
            
    (block $block_aa020000 
        (loop $loop_ab020000
    
                    (br_if $block_aa020000 (i32.gt_s (get_local $p2) (get_local $rightCol)))
            (set_local $row1 (i32.load (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $p2) (i32.const 4)))))
            (set_local $q2 (get_local $topRow))
            ;; For q2 As Integer = topRow To bottomRow
            
    (block $block_ac020000 
        (loop $loop_ad020000
    
                    (br_if $block_ac020000 (i32.gt_s (get_local $q2) (get_local $bottomRow)))
            (set_local $cellCircle (i32.load (i32.add (i32.add (get_global $Algorithm.cellCircles) (i32.const 8)) (i32.mul (get_local $cellCircleCount) (i32.const 4)))))
            (set_local $cellCircleCount (i32.add (get_local $cellCircleCount) (i32.const 1)))
            (i32.store (i32.add (get_local $cellCircle) (i32.const 4)) (get_local $i))
            (i32.store (i32.add (get_local $cellCircle) (i32.const 0)) (i32.load (i32.add (i32.add (get_local $row1) (i32.const 8)) (i32.mul (get_local $q2) (i32.const 4)))))
            (i32.store (i32.add (i32.add (get_local $row1) (i32.const 8)) (i32.mul (get_local $q2) (i32.const 4))) (get_local $cellCircle))
            ;; For loop control step: (i32.const 1)
            (set_local $q2 (i32.add (get_local $q2) (i32.const 1)))
            (br $loop_ad020000)
            ;; For Loop Next On loop_ad020000
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $p2 (i32.add (get_local $p2) (i32.const 1)))
            (br $loop_ab020000)
            ;; For Loop Next On loop_ab020000
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $i (i32.add (get_local $i) (i32.const 1)))
            (br $loop_a9020000)
            ;; For Loop Next On loop_a9020000
    
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
    
    (block $block_ae020000 
        (loop $loop_af020000
    
                    (br_if $block_ae020000 (i32.gt_s (get_local $p1) (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1))))
            (set_local $row2 (i32.load (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $p1) (i32.const 4)))))
            (set_local $q1 (i32.const 0))
            ;; For q1 As Integer = 0 To GRID_HEIGHT - 1
            
    (block $block_b0020000 
        (loop $loop_b1020000
    
                    (br_if $block_b0020000 (i32.gt_s (get_local $q1) (i32.sub (get_global $defines.GRID_HEIGHT) (i32.const 1))))
            (set_local $iCellCircle (i32.load (i32.add (i32.add (get_local $row2) (i32.const 8)) (i32.mul (get_local $q1) (i32.const 4)))))
            ;; Do While Not iCellCircle Is Nothing
            ;; Start Do While Block block_b2020000
            
    (block $block_b2020000 
        (loop $loop_b3020000
    
                    (br_if $block_b2020000 (i32.eqz (i32.eqz (i32.eq (get_local $iCellCircle) (i32.const 0)))))
            (set_local $index (i32.load (i32.add (get_local $iCellCircle) (i32.const 4))))
            (set_local $xi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 0))))
            (set_local $yi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 4))))
            (set_local $ri (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 8))))
            (set_local $vxi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 4))))
            (set_local $vyi (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 0))))
            (set_local $jCellCircle (get_local $iCellCircle))
            (set_local $jCellCircle (i32.load (i32.add (get_local $jCellCircle) (i32.const 0))))
            ;; Do While Not jCellCircle Is Nothing
            ;; Start Do While Block block_b4020000
            
    (block $block_b4020000 
        (loop $loop_b5020000
    
                    (br_if $block_b4020000 (i32.eqz (i32.eqz (i32.eq (get_local $jCellCircle) (i32.const 0)))))
            (set_local $j (i32.load (i32.add (get_local $jCellCircle) (i32.const 4))))
            (set_local $xj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 0))))
            (set_local $yj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 4))))
            (set_local $rj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circleData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 8))))
            
    (if (call $Math.detectCircleCollision (get_local $xi) (get_local $yi) (get_local $ri) (get_local $xj) (get_local $yj) (get_local $rj)) 
        (then
                    (set_local $vxj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 4))))
            (set_local $vyj (f32.load (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 0))))
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
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 4)) (f32.demote/f64 (f64.add (f64.promote/f32 (get_local $vxi)) (f64.mul (f64.promote/f32 (get_local $collDx)) (get_local $dcvi)))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $index) (i32.const 4)))) (i32.const 0)) (f32.demote/f64 (f64.add (f64.promote/f32 (get_local $vyi)) (f64.mul (f64.promote/f32 (get_local $collDy)) (get_local $dcvi)))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 4)) (f32.demote/f64 (f64.add (f64.promote/f32 (get_local $vxj)) (f64.mul (f64.promote/f32 (get_local $collDx)) (get_local $dcvj)))))
            (f32.store (i32.add (i32.load (i32.add (i32.add (get_global $Algorithm.circlevData) (i32.const 8)) (i32.mul (get_local $j) (i32.const 4)))) (i32.const 0)) (f32.demote/f64 (f64.add (f64.promote/f32 (get_local $vyj)) (f64.mul (f64.promote/f32 (get_local $collDy)) (get_local $dcvj)))))
            (set_local $jCellCircle (i32.load (i32.add (get_local $jCellCircle) (i32.const 0))))
        ) 
    )
        ) (else
                    (set_local $jCellCircle (i32.load (i32.add (get_local $jCellCircle) (i32.const 0))))
        )
    )
            (br $loop_b5020000)
    
        )
    )
            ;; End Loop loop_b5020000
            (set_local $iCellCircle (i32.load (i32.add (get_local $iCellCircle) (i32.const 0))))
            (br $loop_b3020000)
    
        )
    )
            ;; End Loop loop_b3020000
            ;; For loop control step: (i32.const 1)
            (set_local $q1 (i32.add (get_local $q1) (i32.const 1)))
            (br $loop_b1020000)
            ;; For Loop Next On loop_b1020000
    
        )
    )
            ;; For loop control step: (i32.const 1)
            (set_local $p1 (i32.add (get_local $p1) (i32.const 1)))
            (br $loop_af020000)
            ;; For Loop Next On loop_af020000
    
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
        
    (local $i i32)
    (local $arrayOffset_b8020000 i32)
    
    
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
        
    
    
    (return (i32.const 958))
    )
    
    
    (func $AssemblyInfo.AssemblyDescription  (result i32)
        ;; Public Function AssemblyDescription() As string
        
    
    
    (return (i32.const 969))
    )
    
    
    (func $AssemblyInfo.AssemblyCompany  (result i32)
        ;; Public Function AssemblyCompany() As string
        
    
    
    (return (i32.const 1050))
    )
    
    
    (func $AssemblyInfo.AssemblyProduct  (result i32)
        ;; Public Function AssemblyProduct() As string
        
    
    
    (return (i32.const 1054))
    )
    
    
    (func $AssemblyInfo.AssemblyCopyright  (result i32)
        ;; Public Function AssemblyCopyright() As string
        
    
    
    (return (i32.const 1065))
    )
    
    
    (func $AssemblyInfo.AssemblyTrademark  (result i32)
        ;; Public Function AssemblyTrademark() As string
        
    
    
    (return (i32.const 1135))
    )
    
    
    (func $AssemblyInfo.Guid  (result i32)
        ;; Public Function Guid() As string
        
    
    
    (return (i32.const 1149))
    )
    
    
    (func $AssemblyInfo.AssemblyVersion  (result i32)
        ;; Public Function AssemblyVersion() As string
        
    
    
    (return (i32.const 1186))
    )
    
    
    (func $AssemblyInfo.AssemblyFileVersion  (result i32)
        ;; Public Function AssemblyFileVersion() As string
        
    
    
    (return (i32.const 1194))
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
    )

    ;; Initializer for global variables if it is not a primitive abstract type
    (func $global.initializer  
    ;; Public Function initializer() As void
    
(local $arrayOffset_9a020000 i32)
(local $arrayOffset_9b020000 i32)
(local $arrayOffset_9c020000 i32)
(local $arrayOffset_9d020000 i32)


;; Save (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_global $global.ObjectManager)
;; class_id/typealias_enum i32 data: (i32.const 11)/array(Of intptr)
(i32.store (get_global $global.ObjectManager) (i32.const 11))
(i32.store (i32.add (get_global $global.ObjectManager) (i32.const 4)) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Offset object manager with (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) (i32.const 4))) bytes
(set_local $arrayOffset_9a020000 (i32.add (get_global $global.ObjectManager) (i32.const 8)))
(set_global $global.ObjectManager (i32.add (i32.add (get_local $arrayOffset_9a020000) (i32.const -8)) (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) (i32.const 4)))))
;; Assign array memory data to another expression
(set_global $Algorithm.circleData (i32.add (get_local $arrayOffset_9a020000) (i32.const -8)))

;; Save (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_global $global.ObjectManager)
;; class_id/typealias_enum i32 data: (i32.const 348)/array(Of intptr)
(i32.store (get_global $global.ObjectManager) (i32.const 348))
(i32.store (i32.add (get_global $global.ObjectManager) (i32.const 4)) (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Offset object manager with (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) (i32.const 4))) bytes
(set_local $arrayOffset_9b020000 (i32.add (get_global $global.ObjectManager) (i32.const 8)))
(set_global $global.ObjectManager (i32.add (i32.add (get_local $arrayOffset_9b020000) (i32.const -8)) (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.CIRCLE_COUNT) (i32.const 1)) (i32.const 4)))))
;; Assign array memory data to another expression
(set_global $Algorithm.circlevData (i32.add (get_local $arrayOffset_9b020000) (i32.const -8)))

;; Save (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_global $global.ObjectManager)
;; class_id/typealias_enum i32 data: (i32.const 637)/array(Of intptr)
(i32.store (get_global $global.ObjectManager) (i32.const 637))
(i32.store (i32.add (get_global $global.ObjectManager) (i32.const 4)) (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Offset object manager with (i32.add (i32.const 8) (i32.mul (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)) (i32.const 4))) bytes
(set_local $arrayOffset_9c020000 (i32.add (get_global $global.ObjectManager) (i32.const 8)))
(set_global $global.ObjectManager (i32.add (i32.add (get_local $arrayOffset_9c020000) (i32.const -8)) (i32.add (i32.const 8) (i32.mul (i32.sub (i32.mul (get_global $defines.CIRCLE_COUNT) (i32.const 4)) (i32.const 1)) (i32.const 4)))))
;; Assign array memory data to another expression
(set_global $Algorithm.cellCircles (i32.add (get_local $arrayOffset_9c020000) (i32.const -8)))

;; Save (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)) array element data to memory:
;; Array memory block begin at location: (get_global $global.ObjectManager)
;; class_id/typealias_enum i32 data: (i32.const 637)/array(Of intptr)
(i32.store (get_global $global.ObjectManager) (i32.const 637))
(i32.store (i32.add (get_global $global.ObjectManager) (i32.const 4)) (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)))
;; End of byte marks meta data, start write data blocks
;; Offset object manager with (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)) (i32.const 4))) bytes
(set_local $arrayOffset_9d020000 (i32.add (get_global $global.ObjectManager) (i32.const 8)))
(set_global $global.ObjectManager (i32.add (i32.add (get_local $arrayOffset_9d020000) (i32.const -8)) (i32.add (i32.const 8) (i32.mul (i32.sub (get_global $defines.GRID_WIDTH) (i32.const 1)) (i32.const 4)))))
;; Assign array memory data to another expression
(set_global $Algorithm.grid (i32.add (get_local $arrayOffset_9d020000) (i32.const -8)))
)

    (func $defines.constructor  
    ;; Public Function constructor() As void
    



)

(func $Algorithm.constructor  
    ;; Public Function constructor() As void
    
(local $i i32)
(local $arrayOffset_b8020000 i32)

(set_local $i (i32.const 0))
;; For i As Integer = 0 To grid.Length - 1

(block $block_b6020000 
    (loop $loop_b7020000

                (br_if $block_b6020000 (i32.gt_s (get_local $i) (i32.sub (i32.load (i32.add (get_global $Algorithm.grid) (i32.const 4))) (i32.const 1))))
        (i32.store (i32.add (i32.add (get_global $Algorithm.grid) (i32.const 8)) (i32.mul (get_local $i) (i32.const 4))) (i32.add (get_local $arrayOffset_b8020000) (i32.const -8)))
        ;; For loop control step: (i32.const 1)
        (set_local $i (i32.add (get_local $i) (i32.const 1)))
        (br $loop_b7020000)
        ;; For Loop Next On loop_b7020000

    )
)
)

(func $Math.constructor  
    ;; Public Function constructor() As void
    



)

    (start $Application_SubNew)
)