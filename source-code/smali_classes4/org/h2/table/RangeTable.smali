.class public Lorg/h2/table/RangeTable;
.super Lorg/h2/table/Table;
.source "SourceFile"


# static fields
.field public static final ALIAS:Ljava/lang/String; = "GENERATE_SERIES"

.field public static final NAME:Ljava/lang/String; = "SYSTEM_RANGE"


# instance fields
.field private max:Lorg/h2/expression/Expression;

.field private min:Lorg/h2/expression/Expression;

.field private optimized:Z

.field private step:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/h2/table/RangeTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    iput-object p4, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    return-void
.end method

.method public constructor <init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 6

    .line 2
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string v3, "SYSTEM_RANGE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    new-array p1, p1, [Lorg/h2/table/Column;

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    new-array p4, p4, [Lorg/h2/table/Column;

    new-instance v0, Lorg/h2/table/Column;

    const-string v1, "X"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    aput-object v0, p4, p1

    move-object p1, p4

    :goto_0
    iput-object p2, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    iput-object p3, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    invoke-virtual {p0, p1}, Lorg/h2/table/Table;->setColumns([Lorg/h2/table/Column;)V

    return-void
.end method

.method private optimize(Lorg/h2/engine/Session;)V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/RangeTable;->optimized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    iget-object v0, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    iget-object v0, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/table/RangeTable;->optimized:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "SYSTEM_RANGE"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkSupportAlter()V
    .locals 1

    const-string v0, "SYSTEM_RANGE"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMax(Lorg/h2/engine/Session;)J
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/table/RangeTable;->optimize(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMin(Lorg/h2/engine/Session;)J
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/table/RangeTable;->optimize(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 4

    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->getMax(Lorg/h2/engine/Session;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->getMin(Lorg/h2/engine/Session;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SYSTEM_RANGE("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    .line 23
    .line 24
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    .line 44
    .line 45
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_0
    const-string v1, ")"

    .line 57
    .line 58
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
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

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->getStep(Lorg/h2/engine/Session;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lorg/h2/index/RangeIndex;

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/h2/index/RangeIndex;-><init>(Lorg/h2/table/RangeTable;[Lorg/h2/table/IndexColumn;)V

    return-object p1

    :cond_0
    const p1, 0x1601e

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getStep(Lorg/h2/engine/Session;)J
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/table/RangeTable;->optimize(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTableType()Lorg/h2/table/TableType;
    .locals 1

    sget-object v0, Lorg/h2/table/TableType;->SYSTEM_TABLE:Lorg/h2/table/TableType;

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
