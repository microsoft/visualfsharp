﻿namespace FSharp.Compiler.UnitTests

open NUnit.Framework
open FSharp.Compiler.SourceCodeServices

[<TestFixture>]
module PatternMatchingWarningTests =

    [<Test>]
    let ``Complete pattern match on byte should not trigger FS0025 warning`` () =
        CompilerAssert.Pass
            """
    let f x =
           match x with
           | 0uy -> 0
           | 1uy -> 1
           | 2uy -> 2
           | 3uy -> 3
           | 4uy -> 4
           | 5uy -> 5
           | 6uy -> 6
           | 7uy -> 7
           | 8uy -> 8
           | 9uy -> 9
           | 10uy -> 10
           | 11uy -> 11
           | 12uy -> 12
           | 13uy -> 13
           | 14uy -> 14
           | 15uy -> 15
           | 16uy -> 16
           | 17uy -> 17
           | 18uy -> 18
           | 19uy -> 19
           | 20uy -> 20
           | 21uy -> 21
           | 22uy -> 22
           | 23uy -> 23
           | 24uy -> 24
           | 25uy -> 25
           | 26uy -> 26
           | 27uy -> 27
           | 28uy -> 28
           | 29uy -> 29
           | 30uy -> 30
           | 31uy -> 31
           | 32uy -> 32
           | 33uy -> 33
           | 34uy -> 34
           | 35uy -> 35
           | 36uy -> 36
           | 37uy -> 37
           | 38uy -> 38
           | 39uy -> 39
           | 40uy -> 40
           | 41uy -> 41
           | 42uy -> 42
           | 43uy -> 43
           | 44uy -> 44
           | 45uy -> 45
           | 46uy -> 46
           | 47uy -> 47
           | 48uy -> 48
           | 49uy -> 49
           | 50uy -> 50
           | 51uy -> 51
           | 52uy -> 52
           | 53uy -> 53
           | 54uy -> 54
           | 55uy -> 55
           | 56uy -> 56
           | 57uy -> 57
           | 58uy -> 58
           | 59uy -> 59
           | 60uy -> 60
           | 61uy -> 61
           | 62uy -> 62
           | 63uy -> 63
           | 64uy -> 64
           | 65uy -> 65
           | 66uy -> 66
           | 67uy -> 67
           | 68uy -> 68
           | 69uy -> 69
           | 70uy -> 70
           | 71uy -> 71
           | 72uy -> 72
           | 73uy -> 73
           | 74uy -> 74
           | 75uy -> 75
           | 76uy -> 76
           | 77uy -> 77
           | 78uy -> 78
           | 79uy -> 79
           | 80uy -> 80
           | 81uy -> 81
           | 82uy -> 82
           | 83uy -> 83
           | 84uy -> 84
           | 85uy -> 85
           | 86uy -> 86
           | 87uy -> 87
           | 88uy -> 88
           | 89uy -> 89
           | 90uy -> 90
           | 91uy -> 91
           | 92uy -> 92
           | 93uy -> 93
           | 94uy -> 94
           | 95uy -> 95
           | 96uy -> 96
           | 97uy -> 97
           | 98uy -> 98
           | 99uy -> 99
           | 100uy -> 100
           | 101uy -> 101
           | 102uy -> 102
           | 103uy -> 103
           | 104uy -> 104
           | 105uy -> 105
           | 106uy -> 106
           | 107uy -> 107
           | 108uy -> 108
           | 109uy -> 109
           | 110uy -> 110
           | 111uy -> 111
           | 112uy -> 112
           | 113uy -> 113
           | 114uy -> 114
           | 115uy -> 115
           | 116uy -> 116
           | 117uy -> 117
           | 118uy -> 118
           | 119uy -> 119
           | 120uy -> 120
           | 121uy -> 121
           | 122uy -> 122
           | 123uy -> 123
           | 124uy -> 124
           | 125uy -> 125
           | 126uy -> 126
           | 127uy -> 127
           | 128uy -> 128
           | 129uy -> 129
           | 130uy -> 130
           | 131uy -> 131
           | 132uy -> 132
           | 133uy -> 133
           | 134uy -> 134
           | 135uy -> 135
           | 136uy -> 136
           | 137uy -> 137
           | 138uy -> 138
           | 139uy -> 139
           | 140uy -> 140
           | 141uy -> 141
           | 142uy -> 142
           | 143uy -> 143
           | 144uy -> 144
           | 145uy -> 145
           | 146uy -> 146
           | 147uy -> 147
           | 148uy -> 148
           | 149uy -> 149
           | 150uy -> 150
           | 151uy -> 151
           | 152uy -> 152
           | 153uy -> 153
           | 154uy -> 154
           | 155uy -> 155
           | 156uy -> 156
           | 157uy -> 157
           | 158uy -> 158
           | 159uy -> 159
           | 160uy -> 160
           | 161uy -> 161
           | 162uy -> 162
           | 163uy -> 163
           | 164uy -> 164
           | 165uy -> 165
           | 166uy -> 166
           | 167uy -> 167
           | 168uy -> 168
           | 169uy -> 169
           | 170uy -> 170
           | 171uy -> 171
           | 172uy -> 172
           | 173uy -> 173
           | 174uy -> 174
           | 175uy -> 175
           | 176uy -> 176
           | 177uy -> 177
           | 178uy -> 178
           | 179uy -> 179
           | 180uy -> 180
           | 181uy -> 181
           | 182uy -> 182
           | 183uy -> 183
           | 184uy -> 184
           | 185uy -> 185
           | 186uy -> 186
           | 187uy -> 187
           | 188uy -> 188
           | 189uy -> 189
           | 190uy -> 190
           | 191uy -> 191
           | 192uy -> 192
           | 193uy -> 193
           | 194uy -> 194
           | 195uy -> 195
           | 196uy -> 196
           | 197uy -> 197
           | 198uy -> 198
           | 199uy -> 199
           | 200uy -> 200
           | 201uy -> 201
           | 202uy -> 202
           | 203uy -> 203
           | 204uy -> 204
           | 205uy -> 205
           | 206uy -> 206
           | 207uy -> 207
           | 208uy -> 208
           | 209uy -> 209
           | 210uy -> 210
           | 211uy -> 211
           | 212uy -> 212
           | 213uy -> 213
           | 214uy -> 214
           | 215uy -> 215
           | 216uy -> 216
           | 217uy -> 217
           | 218uy -> 218
           | 219uy -> 219
           | 220uy -> 220
           | 221uy -> 221
           | 222uy -> 222
           | 223uy -> 223
           | 224uy -> 224
           | 225uy -> 225
           | 226uy -> 226
           | 227uy -> 227
           | 228uy -> 228
           | 229uy -> 229
           | 230uy -> 230
           | 231uy -> 231
           | 232uy -> 232
           | 233uy -> 233
           | 234uy -> 234
           | 235uy -> 235
           | 236uy -> 236
           | 237uy -> 237
           | 238uy -> 238
           | 239uy -> 239
           | 240uy -> 240
           | 241uy -> 241
           | 242uy -> 242
           | 243uy -> 243
           | 244uy -> 244
           | 245uy -> 245
           | 246uy -> 246
           | 247uy -> 247
           | 248uy -> 248
           | 249uy -> 249
           | 250uy -> 250
           | 251uy -> 251
           | 252uy -> 252
           | 253uy -> 253
           | 254uy -> 254
           | 255uy -> 255
    printfn ""
            """
    [<Test>]
    let ``Complete pattern match on sbyte should not trigger FS0025 warning`` () =
        CompilerAssert.Pass
            """
    let f x =
        match x with
        | -128y -> -128
        | -127y -> -127
        | -126y -> -126
        | -125y -> -125
        | -124y -> -124
        | -123y -> -123
        | -122y -> -122
        | -121y -> -121
        | -120y -> -120
        | -119y -> -119
        | -118y -> -118
        | -117y -> -117
        | -116y -> -116
        | -115y -> -115
        | -114y -> -114
        | -113y -> -113
        | -112y -> -112
        | -111y -> -111
        | -110y -> -110
        | -109y -> -109
        | -108y -> -108
        | -107y -> -107
        | -106y -> -106
        | -105y -> -105
        | -104y -> -104
        | -103y -> -103
        | -102y -> -102
        | -101y -> -101
        | -100y -> -100
        | -99y -> -99
        | -98y -> -98
        | -97y -> -97
        | -96y -> -96
        | -95y -> -95
        | -94y -> -94
        | -93y -> -93
        | -92y -> -92
        | -91y -> -91
        | -90y -> -90
        | -89y -> -89
        | -88y -> -88
        | -87y -> -87
        | -86y -> -86
        | -85y -> -85
        | -84y -> -84
        | -83y -> -83
        | -82y -> -82
        | -81y -> -81
        | -80y -> -80
        | -79y -> -79
        | -78y -> -78
        | -77y -> -77
        | -76y -> -76
        | -75y -> -75
        | -74y -> -74
        | -73y -> -73
        | -72y -> -72
        | -71y -> -71
        | -70y -> -70
        | -69y -> -69
        | -68y -> -68
        | -67y -> -67
        | -66y -> -66
        | -65y -> -65
        | -64y -> -64
        | -63y -> -63
        | -62y -> -62
        | -61y -> -61
        | -60y -> -60
        | -59y -> -59
        | -58y -> -58
        | -57y -> -57
        | -56y -> -56
        | -55y -> -55
        | -54y -> -54
        | -53y -> -53
        | -52y -> -52
        | -51y -> -51
        | -50y -> -50
        | -49y -> -49
        | -48y -> -48
        | -47y -> -47
        | -46y -> -46
        | -45y -> -45
        | -44y -> -44
        | -43y -> -43
        | -42y -> -42
        | -41y -> -41
        | -40y -> -40
        | -39y -> -39
        | -38y -> -38
        | -37y -> -37
        | -36y -> -36
        | -35y -> -35
        | -34y -> -34
        | -33y -> -33
        | -32y -> -32
        | -31y -> -31
        | -30y -> -30
        | -29y -> -29
        | -28y -> -28
        | -27y -> -27
        | -26y -> -26
        | -25y -> -25
        | -24y -> -24
        | -23y -> -23
        | -22y -> -22
        | -21y -> -21
        | -20y -> -20
        | -19y -> -19
        | -18y -> -18
        | -17y -> -17
        | -16y -> -16
        | -15y -> -15
        | -14y -> -14
        | -13y -> -13
        | -12y -> -12
        | -11y -> -11
        | -10y -> -10
        | -9y -> -9
        | -8y -> -8
        | -7y -> -7
        | -6y -> -6
        | -5y -> -5
        | -4y -> -4
        | -3y -> -3
        | -2y -> -2
        | -1y -> -1
        | 0y -> 0
        | 1y -> 1
        | 2y -> 2
        | 3y -> 3
        | 4y -> 4
        | 5y -> 5
        | 6y -> 6
        | 7y -> 7
        | 8y -> 8
        | 9y -> 9
        | 10y -> 10
        | 11y -> 11
        | 12y -> 12
        | 13y -> 13
        | 14y -> 14
        | 15y -> 15
        | 16y -> 16
        | 17y -> 17
        | 18y -> 18
        | 19y -> 19
        | 20y -> 20
        | 21y -> 21
        | 22y -> 22
        | 23y -> 23
        | 24y -> 24
        | 25y -> 25
        | 26y -> 26
        | 27y -> 27
        | 28y -> 28
        | 29y -> 29
        | 30y -> 30
        | 31y -> 31
        | 32y -> 32
        | 33y -> 33
        | 34y -> 34
        | 35y -> 35
        | 36y -> 36
        | 37y -> 37
        | 38y -> 38
        | 39y -> 39
        | 40y -> 40
        | 41y -> 41
        | 42y -> 42
        | 43y -> 43
        | 44y -> 44
        | 45y -> 45
        | 46y -> 46
        | 47y -> 47
        | 48y -> 48
        | 49y -> 49
        | 50y -> 50
        | 51y -> 51
        | 52y -> 52
        | 53y -> 53
        | 54y -> 54
        | 55y -> 55
        | 56y -> 56
        | 57y -> 57
        | 58y -> 58
        | 59y -> 59
        | 60y -> 60
        | 61y -> 61
        | 62y -> 62
        | 63y -> 63
        | 64y -> 64
        | 65y -> 65
        | 66y -> 66
        | 67y -> 67
        | 68y -> 68
        | 69y -> 69
        | 70y -> 70
        | 71y -> 71
        | 72y -> 72
        | 73y -> 73
        | 74y -> 74
        | 75y -> 75
        | 76y -> 76
        | 77y -> 77
        | 78y -> 78
        | 79y -> 79
        | 80y -> 80
        | 81y -> 81
        | 82y -> 82
        | 83y -> 83
        | 84y -> 84
        | 85y -> 85
        | 86y -> 86
        | 87y -> 87
        | 88y -> 88
        | 89y -> 89
        | 90y -> 90
        | 91y -> 91
        | 92y -> 92
        | 93y -> 93
        | 94y -> 94
        | 95y -> 95
        | 96y -> 96
        | 97y -> 97
        | 98y -> 98
        | 99y -> 99
        | 100y -> 100
        | 101y -> 101
        | 102y -> 102
        | 103y -> 103
        | 104y -> 104
        | 105y -> 105
        | 106y -> 106
        | 107y -> 107
        | 108y -> 108
        | 109y -> 109
        | 110y -> 110
        | 111y -> 111
        | 112y -> 112
        | 113y -> 113
        | 114y -> 114
        | 115y -> 115
        | 116y -> 116
        | 117y -> 117
        | 118y -> 118
        | 119y -> 119
        | 120y -> 120
        | 121y -> 121
        | 122y -> 122
        | 123y -> 123
        | 124y -> 124
        | 125y -> 125
        | 126y -> 126
        | 127y -> 127
    printfn ""
            """
