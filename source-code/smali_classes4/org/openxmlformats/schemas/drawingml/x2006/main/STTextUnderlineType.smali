.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;
    }
.end annotation


# static fields
.field public static final DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DASH_LONG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DASH_LONG_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOTTED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOTTED_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOT_DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOT_DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final INT_DASH:I = 0x8

.field public static final INT_DASH_HEAVY:I = 0x9

.field public static final INT_DASH_LONG:I = 0xa

.field public static final INT_DASH_LONG_HEAVY:I = 0xb

.field public static final INT_DBL:I = 0x4

.field public static final INT_DOTTED:I = 0x6

.field public static final INT_DOTTED_HEAVY:I = 0x7

.field public static final INT_DOT_DASH:I = 0xc

.field public static final INT_DOT_DASH_HEAVY:I = 0xd

.field public static final INT_DOT_DOT_DASH:I = 0xe

.field public static final INT_DOT_DOT_DASH_HEAVY:I = 0xf

.field public static final INT_HEAVY:I = 0x5

.field public static final INT_NONE:I = 0x1

.field public static final INT_SNG:I = 0x3

.field public static final INT_WAVY:I = 0x10

.field public static final INT_WAVY_DBL:I = 0x12

.field public static final INT_WAVY_HEAVY:I = 0x11

.field public static final INT_WORDS:I = 0x2

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final WAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final WAVY_DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final WAVY_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final WORDS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "sttextunderlinetype469atype"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "none"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 22
    .line 23
    const-string v0, "words"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WORDS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 30
    .line 31
    const-string v0, "sng"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 38
    .line 39
    const-string v0, "dbl"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 46
    .line 47
    const-string v0, "heavy"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 54
    .line 55
    const-string v0, "dotted"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOTTED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 62
    .line 63
    const-string v0, "dottedHeavy"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOTTED_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 70
    .line 71
    const-string v0, "dash"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 78
    .line 79
    const-string v0, "dashHeavy"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 86
    .line 87
    const-string v0, "dashLong"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH_LONG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 94
    .line 95
    const-string v0, "dashLongHeavy"

    .line 96
    .line 97
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH_LONG_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 102
    .line 103
    const-string v0, "dotDash"

    .line 104
    .line 105
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 110
    .line 111
    const-string v0, "dotDashHeavy"

    .line 112
    .line 113
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 118
    .line 119
    const-string v0, "dotDotDash"

    .line 120
    .line 121
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 126
    .line 127
    const-string v0, "dotDotDashHeavy"

    .line 128
    .line 129
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 134
    .line 135
    const-string v0, "wavy"

    .line 136
    .line 137
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 142
    .line 143
    const-string v0, "wavyHeavy"

    .line 144
    .line 145
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WAVY_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 150
    .line 151
    const-string v0, "wavyDbl"

    .line 152
    .line 153
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WAVY_DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    .line 158
    .line 159
    return-void
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
