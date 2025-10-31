.class public Lorg/h2/index/FunctionCursorResultSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private final meta:Ljava/sql/ResultSetMetaData;

.field private final result:Ljava/sql/ResultSet;

.field private row:Lorg/h2/result/Row;

.field private final session:Lorg/h2/engine/Session;

.field private values:[Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Ljava/sql/ResultSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/index/FunctionCursorResultSet;->session:Lorg/h2/engine/Session;

    iput-object p2, p0, Lorg/h2/index/FunctionCursorResultSet;->result:Ljava/sql/ResultSet;

    :try_start_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/FunctionCursorResultSet;->meta:Ljava/sql/ResultSetMetaData;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 3

    iget-object v0, p0, Lorg/h2/index/FunctionCursorResultSet;->values:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/h2/index/FunctionCursorResultSet;->row:Lorg/h2/result/Row;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/FunctionCursorResultSet;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/FunctionCursorResultSet;->row:Lorg/h2/result/Row;

    :cond_1
    iget-object v0, p0, Lorg/h2/index/FunctionCursorResultSet;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/index/FunctionCursorResultSet;->get()Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public next()Z
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/FunctionCursorResultSet;->row:Lorg/h2/result/Row;

    :try_start_0
    iget-object v1, p0, Lorg/h2/index/FunctionCursorResultSet;->result:Ljava/sql/ResultSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/h2/index/FunctionCursorResultSet;->meta:Ljava/sql/ResultSetMetaData;

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v0

    new-array v1, v0, [Lorg/h2/value/Value;

    iput-object v1, p0, Lorg/h2/index/FunctionCursorResultSet;->values:[Lorg/h2/value/Value;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/h2/index/FunctionCursorResultSet;->meta:Ljava/sql/ResultSetMetaData;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v3

    iget-object v5, p0, Lorg/h2/index/FunctionCursorResultSet;->values:[Lorg/h2/value/Value;

    iget-object v6, p0, Lorg/h2/index/FunctionCursorResultSet;->session:Lorg/h2/engine/Session;

    iget-object v7, p0, Lorg/h2/index/FunctionCursorResultSet;->result:Ljava/sql/ResultSet;

    invoke-static {v6, v7, v4, v3}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v3

    aput-object v3, v5, v1

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lorg/h2/index/FunctionCursorResultSet;->values:[Lorg/h2/value/Value;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lorg/h2/index/FunctionCursorResultSet;->values:[Lorg/h2/value/Value;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :goto_1
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public previous()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
