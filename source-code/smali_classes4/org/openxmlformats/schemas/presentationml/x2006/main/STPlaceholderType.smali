.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Factory;,
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;
    }
.end annotation


# static fields
.field public static final BODY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final CHART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final CLIP_ART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final CTR_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final DGM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final DT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final FTR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final HDR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final INT_BODY:I = 0x2

.field public static final INT_CHART:I = 0xa

.field public static final INT_CLIP_ART:I = 0xc

.field public static final INT_CTR_TITLE:I = 0x3

.field public static final INT_DGM:I = 0xd

.field public static final INT_DT:I = 0x5

.field public static final INT_FTR:I = 0x7

.field public static final INT_HDR:I = 0x8

.field public static final INT_MEDIA:I = 0xe

.field public static final INT_OBJ:I = 0x9

.field public static final INT_PIC:I = 0x10

.field public static final INT_SLD_IMG:I = 0xf

.field public static final INT_SLD_NUM:I = 0x6

.field public static final INT_SUB_TITLE:I = 0x4

.field public static final INT_TBL:I = 0xb

.field public static final INT_TITLE:I = 0x1

.field public static final MEDIA:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final OBJ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final SLD_IMG:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final SLD_NUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final SUB_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final TBL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stplaceholdertypeca72type"

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
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "title"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 22
    .line 23
    const-string v0, "body"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->BODY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 30
    .line 31
    const-string v0, "ctrTitle"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->CTR_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 38
    .line 39
    const-string v0, "subTitle"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->SUB_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 46
    .line 47
    const-string v0, "dt"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->DT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 54
    .line 55
    const-string v0, "sldNum"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->SLD_NUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 62
    .line 63
    const-string v0, "ftr"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->FTR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 70
    .line 71
    const-string v0, "hdr"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->HDR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 78
    .line 79
    const-string v0, "obj"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->OBJ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 86
    .line 87
    const-string v0, "chart"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->CHART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 94
    .line 95
    const-string v0, "tbl"

    .line 96
    .line 97
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->TBL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 102
    .line 103
    const-string v0, "clipArt"

    .line 104
    .line 105
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->CLIP_ART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 110
    .line 111
    const-string v0, "dgm"

    .line 112
    .line 113
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->DGM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 118
    .line 119
    const-string v0, "media"

    .line 120
    .line 121
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->MEDIA:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 126
    .line 127
    const-string v0, "sldImg"

    .line 128
    .line 129
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->SLD_IMG:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 134
    .line 135
    const-string v0, "pic"

    .line 136
    .line 137
    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    .line 142
    .line 143
    return-void
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
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
