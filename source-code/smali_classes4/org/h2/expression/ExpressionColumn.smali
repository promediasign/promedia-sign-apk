.class public Lorg/h2/expression/ExpressionColumn;
.super Lorg/h2/expression/Expression;
.source "SourceFile"


# instance fields
.field private column:Lorg/h2/table/Column;

.field private final columnName:Ljava/lang/String;

.field private columnResolver:Lorg/h2/table/ColumnResolver;

.field private final database:Lorg/h2/engine/Database;

.field private evaluatable:Z

.field private queryLevel:I

.field private final schemaName:Ljava/lang/String;

.field private final tableAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iput-object p2, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    iput-object p3, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    iput-object p4, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iput-object p2, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-void
.end method

.method private mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-nez v0, :cond_0

    iput p3, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    iput-object p2, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    if-ne p2, p3, :cond_2

    if-eq v0, p1, :cond_2

    instance-of p1, p1, Lorg/h2/command/dml/SelectListColumnResolver;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x15fcb

    iget-object p2, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    :cond_0
    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumn()Lorg/h2/table/Column;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCost()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    new-instance v0, Lorg/h2/expression/Comparison;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v2

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method public getNullable()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result v0

    return v0
.end method

.method public getOriginalColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTableAliasName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    .line 8
    .line 9
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 27
    .line 28
    const-string v3, "."

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {v2}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_2
    invoke-static {v2, v3, v1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_3
    iget-object v2, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-static {v2}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_4
    invoke-static {v2, v3, v1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_5
    return-object v1
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

.method public getScale()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getScale()I

    move-result v0

    return v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTableFilter()Lorg/h2/table/TableFilter;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/h2/table/ColumnResolver;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getSelect()Lorg/h2/command/dml/Select;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, v0}, Lorg/h2/table/ColumnResolver;->getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getEnumerators()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getEnumerators()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/h2/value/ValueEnum;->get([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, v0}, Lorg/h2/table/ColumnResolver;->getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;

    const p1, 0x15fa0

    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public isAutoIncrement()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addColumn(Lorg/h2/table/Column;)V

    return v2

    :pswitch_1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addDependency(Lorg/h2/engine/DbObject;)V

    :cond_0
    return v2

    :pswitch_2
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getResolver()Lorg/h2/table/ColumnResolver;

    move-result-object p1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :pswitch_3
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->getMaxDataModificationId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/expression/ExpressionVisitor;->addDataModificationId(J)V

    return v2

    :pswitch_4
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getQueryLevel()I

    move-result p1

    iget v0, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    if-ge p1, v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isEvaluatable()Z

    move-result p1

    return p1

    :cond_4
    iget-boolean v0, p0, Lorg/h2/expression/ExpressionColumn;->evaluatable:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getQueryLevel()I

    move-result p1

    iget v0, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    if-ge p1, v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    :pswitch_5
    return v2

    :pswitch_6
    return v1

    :pswitch_7
    iget v0, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getQueryLevel()I

    move-result p1

    if-ge v0, p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 8

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getTableAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getSchemaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iget-object v7, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, v4, p2}, Lorg/h2/expression/ExpressionColumn;->mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    const-string v1, "_ROWID_"

    iget-object v3, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getRowIdColumn()Lorg/h2/table/Column;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v0, p2}, Lorg/h2/expression/ExpressionColumn;->mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V

    return-void

    :cond_4
    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getSystemColumns()[Lorg/h2/table/Column;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    array-length v1, v0

    if-ge v2, v1, :cond_6

    aget-object v1, v0, v2

    iget-object v3, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iget-object v4, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, v1, p2}, Lorg/h2/expression/ExpressionColumn;->mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lorg/h2/schema/Schema;->findConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/h2/schema/Constant;->getValue()Lorg/h2/expression/ValueExpression;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, "."

    .line 50
    .line 51
    invoke-static {v0, v1, v2, p1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0, v1, v2, p1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_2
    const v0, 0xa48a

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    throw p1

    .line 78
    :cond_3
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    .line 79
    .line 80
    invoke-interface {v0, p0, p1}, Lorg/h2/table/ColumnResolver;->optimize(Lorg/h2/expression/ExpressionColumn;Lorg/h2/table/Column;)Lorg/h2/expression/Expression;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
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
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/table/ColumnResolver;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lorg/h2/expression/ExpressionColumn;->evaluatable:Z

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 3

    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, v0}, Lorg/h2/table/ColumnResolver;->getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-interface {v0}, Lorg/h2/table/ColumnResolver;->getSelect()Lorg/h2/command/dml/Select;

    move-result-object v0

    const v1, 0x15fa0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/value/Value;

    if-nez v2, :cond_1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, v2}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
