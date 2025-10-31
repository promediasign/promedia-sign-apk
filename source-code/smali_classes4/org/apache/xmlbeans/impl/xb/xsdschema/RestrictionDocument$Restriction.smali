.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Restriction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$RestrictionDocument$Restriction:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument$Restriction"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$RestrictionDocument$Restriction:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    .line 14
    .line 15
    const-string v2, "restrictionad11elemtype"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 22
    .line 23
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
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
.method public abstract addNewEnumeration()Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;
.end method

.method public abstract addNewFractionDigits()Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract addNewLength()Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract addNewMaxExclusive()Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract addNewMaxInclusive()Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract addNewMaxLength()Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract addNewMinExclusive()Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract addNewMinInclusive()Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract addNewMinLength()Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract addNewPattern()Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;
.end method

.method public abstract addNewSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
.end method

.method public abstract addNewTotalDigits()Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;
.end method

.method public abstract addNewWhiteSpace()Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;
.end method

.method public abstract getBase()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getEnumerationArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;
.end method

.method public abstract getEnumerationArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;
.end method

.method public abstract getFractionDigitsArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract getFractionDigitsArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract getLengthArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract getLengthArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract getMaxExclusiveArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract getMaxExclusiveArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract getMaxInclusiveArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract getMaxInclusiveArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract getMaxLengthArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract getMaxLengthArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract getMinExclusiveArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract getMinExclusiveArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract getMinInclusiveArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract getMinInclusiveArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract getMinLengthArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract getMinLengthArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract getPatternArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;
.end method

.method public abstract getPatternArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;
.end method

.method public abstract getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
.end method

.method public abstract getTotalDigitsArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;
.end method

.method public abstract getTotalDigitsArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;
.end method

.method public abstract getWhiteSpaceArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;
.end method

.method public abstract getWhiteSpaceArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;
.end method

.method public abstract insertNewEnumeration(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;
.end method

.method public abstract insertNewFractionDigits(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract insertNewLength(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract insertNewMaxExclusive(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract insertNewMaxInclusive(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract insertNewMaxLength(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract insertNewMinExclusive(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract insertNewMinInclusive(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
.end method

.method public abstract insertNewMinLength(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
.end method

.method public abstract insertNewPattern(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;
.end method

.method public abstract insertNewTotalDigits(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;
.end method

.method public abstract insertNewWhiteSpace(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;
.end method

.method public abstract isSetBase()Z
.end method

.method public abstract isSetSimpleType()Z
.end method

.method public abstract removeEnumeration(I)V
.end method

.method public abstract removeFractionDigits(I)V
.end method

.method public abstract removeLength(I)V
.end method

.method public abstract removeMaxExclusive(I)V
.end method

.method public abstract removeMaxInclusive(I)V
.end method

.method public abstract removeMaxLength(I)V
.end method

.method public abstract removeMinExclusive(I)V
.end method

.method public abstract removeMinInclusive(I)V
.end method

.method public abstract removeMinLength(I)V
.end method

.method public abstract removePattern(I)V
.end method

.method public abstract removeTotalDigits(I)V
.end method

.method public abstract removeWhiteSpace(I)V
.end method

.method public abstract setBase(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract setEnumerationArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;)V
.end method

.method public abstract setEnumerationArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;)V
.end method

.method public abstract setFractionDigitsArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
.end method

.method public abstract setFractionDigitsArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
.end method

.method public abstract setLengthArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
.end method

.method public abstract setLengthArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
.end method

.method public abstract setMaxExclusiveArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
.end method

.method public abstract setMaxExclusiveArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
.end method

.method public abstract setMaxInclusiveArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
.end method

.method public abstract setMaxInclusiveArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
.end method

.method public abstract setMaxLengthArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
.end method

.method public abstract setMaxLengthArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
.end method

.method public abstract setMinExclusiveArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
.end method

.method public abstract setMinExclusiveArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
.end method

.method public abstract setMinInclusiveArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
.end method

.method public abstract setMinInclusiveArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
.end method

.method public abstract setMinLengthArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
.end method

.method public abstract setMinLengthArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
.end method

.method public abstract setPatternArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;)V
.end method

.method public abstract setPatternArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;)V
.end method

.method public abstract setSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;)V
.end method

.method public abstract setTotalDigitsArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;)V
.end method

.method public abstract setTotalDigitsArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;)V
.end method

.method public abstract setWhiteSpaceArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;)V
.end method

.method public abstract setWhiteSpaceArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;)V
.end method

.method public abstract sizeOfEnumerationArray()I
.end method

.method public abstract sizeOfFractionDigitsArray()I
.end method

.method public abstract sizeOfLengthArray()I
.end method

.method public abstract sizeOfMaxExclusiveArray()I
.end method

.method public abstract sizeOfMaxInclusiveArray()I
.end method

.method public abstract sizeOfMaxLengthArray()I
.end method

.method public abstract sizeOfMinExclusiveArray()I
.end method

.method public abstract sizeOfMinInclusiveArray()I
.end method

.method public abstract sizeOfMinLengthArray()I
.end method

.method public abstract sizeOfPatternArray()I
.end method

.method public abstract sizeOfTotalDigitsArray()I
.end method

.method public abstract sizeOfWhiteSpaceArray()I
.end method

.method public abstract unsetBase()V
.end method

.method public abstract unsetSimpleType()V
.end method

.method public abstract xgetBase()Lorg/apache/xmlbeans/XmlQName;
.end method

.method public abstract xsetBase(Lorg/apache/xmlbeans/XmlQName;)V
.end method
