.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/OpenAttrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Schema"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$SchemaDocument$Schema:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.SchemaDocument$Schema"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$SchemaDocument$Schema:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    .line 14
    .line 15
    const-string v2, "schemad77felemtype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->type:Lorg/apache/xmlbeans/SchemaType;

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
.method public abstract addNewAnnotation()Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;
.end method

.method public abstract addNewAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;
.end method

.method public abstract addNewAttributeGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;
.end method

.method public abstract addNewComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;
.end method

.method public abstract addNewElement()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;
.end method

.method public abstract addNewGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;
.end method

.method public abstract addNewImport()Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;
.end method

.method public abstract addNewInclude()Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;
.end method

.method public abstract addNewNotation()Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;
.end method

.method public abstract addNewRedefine()Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;
.end method

.method public abstract addNewSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;
.end method

.method public abstract getAnnotationArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;
.end method

.method public abstract getAnnotationArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;
.end method

.method public abstract getAttributeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;
.end method

.method public abstract getAttributeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;
.end method

.method public abstract getAttributeFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;
.end method

.method public abstract getAttributeGroupArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;
.end method

.method public abstract getAttributeGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;
.end method

.method public abstract getBlockDefault()Ljava/lang/Object;
.end method

.method public abstract getComplexTypeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;
.end method

.method public abstract getComplexTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;
.end method

.method public abstract getElementArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;
.end method

.method public abstract getElementArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;
.end method

.method public abstract getElementFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;
.end method

.method public abstract getFinalDefault()Ljava/lang/Object;
.end method

.method public abstract getGroupArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;
.end method

.method public abstract getGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImportArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;
.end method

.method public abstract getImportArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;
.end method

.method public abstract getIncludeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;
.end method

.method public abstract getIncludeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract getNotationArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;
.end method

.method public abstract getNotationArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;
.end method

.method public abstract getRedefineArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;
.end method

.method public abstract getRedefineArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;
.end method

.method public abstract getSimpleTypeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;
.end method

.method public abstract getSimpleTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;
.end method

.method public abstract getTargetNamespace()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract insertNewAnnotation(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;
.end method

.method public abstract insertNewAttribute(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;
.end method

.method public abstract insertNewAttributeGroup(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;
.end method

.method public abstract insertNewComplexType(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;
.end method

.method public abstract insertNewElement(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;
.end method

.method public abstract insertNewGroup(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;
.end method

.method public abstract insertNewImport(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;
.end method

.method public abstract insertNewInclude(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;
.end method

.method public abstract insertNewNotation(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;
.end method

.method public abstract insertNewRedefine(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;
.end method

.method public abstract insertNewSimpleType(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;
.end method

.method public abstract isSetAttributeFormDefault()Z
.end method

.method public abstract isSetBlockDefault()Z
.end method

.method public abstract isSetElementFormDefault()Z
.end method

.method public abstract isSetFinalDefault()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetLang()Z
.end method

.method public abstract isSetTargetNamespace()Z
.end method

.method public abstract isSetVersion()Z
.end method

.method public abstract removeAnnotation(I)V
.end method

.method public abstract removeAttribute(I)V
.end method

.method public abstract removeAttributeGroup(I)V
.end method

.method public abstract removeComplexType(I)V
.end method

.method public abstract removeElement(I)V
.end method

.method public abstract removeGroup(I)V
.end method

.method public abstract removeImport(I)V
.end method

.method public abstract removeInclude(I)V
.end method

.method public abstract removeNotation(I)V
.end method

.method public abstract removeRedefine(I)V
.end method

.method public abstract removeSimpleType(I)V
.end method

.method public abstract setAnnotationArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;)V
.end method

.method public abstract setAnnotationArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;)V
.end method

.method public abstract setAttributeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;)V
.end method

.method public abstract setAttributeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;)V
.end method

.method public abstract setAttributeFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V
.end method

.method public abstract setAttributeGroupArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;)V
.end method

.method public abstract setAttributeGroupArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;)V
.end method

.method public abstract setBlockDefault(Ljava/lang/Object;)V
.end method

.method public abstract setComplexTypeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;)V
.end method

.method public abstract setComplexTypeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;)V
.end method

.method public abstract setElementArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;)V
.end method

.method public abstract setElementArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;)V
.end method

.method public abstract setElementFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V
.end method

.method public abstract setFinalDefault(Ljava/lang/Object;)V
.end method

.method public abstract setGroupArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;)V
.end method

.method public abstract setGroupArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setImportArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;)V
.end method

.method public abstract setImportArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;)V
.end method

.method public abstract setIncludeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;)V
.end method

.method public abstract setIncludeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;)V
.end method

.method public abstract setLang(Ljava/lang/String;)V
.end method

.method public abstract setNotationArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;)V
.end method

.method public abstract setNotationArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NotationDocument$Notation;)V
.end method

.method public abstract setRedefineArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V
.end method

.method public abstract setRedefineArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V
.end method

.method public abstract setSimpleTypeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;)V
.end method

.method public abstract setSimpleTypeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;)V
.end method

.method public abstract setTargetNamespace(Ljava/lang/String;)V
.end method

.method public abstract setVersion(Ljava/lang/String;)V
.end method

.method public abstract sizeOfAnnotationArray()I
.end method

.method public abstract sizeOfAttributeArray()I
.end method

.method public abstract sizeOfAttributeGroupArray()I
.end method

.method public abstract sizeOfComplexTypeArray()I
.end method

.method public abstract sizeOfElementArray()I
.end method

.method public abstract sizeOfGroupArray()I
.end method

.method public abstract sizeOfImportArray()I
.end method

.method public abstract sizeOfIncludeArray()I
.end method

.method public abstract sizeOfNotationArray()I
.end method

.method public abstract sizeOfRedefineArray()I
.end method

.method public abstract sizeOfSimpleTypeArray()I
.end method

.method public abstract unsetAttributeFormDefault()V
.end method

.method public abstract unsetBlockDefault()V
.end method

.method public abstract unsetElementFormDefault()V
.end method

.method public abstract unsetFinalDefault()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetLang()V
.end method

.method public abstract unsetTargetNamespace()V
.end method

.method public abstract unsetVersion()V
.end method

.method public abstract xgetAttributeFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;
.end method

.method public abstract xgetBlockDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;
.end method

.method public abstract xgetElementFormDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;
.end method

.method public abstract xgetFinalDefault()Lorg/apache/xmlbeans/impl/xb/xsdschema/FullDerivationSet;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xgetLang()Lorg/apache/xmlbeans/XmlLanguage;
.end method

.method public abstract xgetTargetNamespace()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetVersion()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xsetAttributeFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;)V
.end method

.method public abstract xsetBlockDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;)V
.end method

.method public abstract xsetElementFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;)V
.end method

.method public abstract xsetFinalDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FullDerivationSet;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method

.method public abstract xsetLang(Lorg/apache/xmlbeans/XmlLanguage;)V
.end method

.method public abstract xsetTargetNamespace(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetVersion(Lorg/apache/xmlbeans/XmlToken;)V
.end method
