.class public Lorg/h2/table/IndexColumn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public column:Lorg/h2/table/Column;

.field public columnName:Ljava/lang/String;

.field public sortType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/table/IndexColumn;->sortType:I

    return-void
.end method

.method public static mapColumns([Lorg/h2/table/IndexColumn;Lorg/h2/table/Table;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget-object v3, v2, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v3

    iput-object v3, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Lorg/h2/table/IndexColumn;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lorg/h2/table/IndexColumn;

    invoke-direct {v3}, Lorg/h2/table/IndexColumn;-><init>()V

    aput-object v3, v1, v2

    aget-object v4, p0, v2

    iput-object v4, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getSQL()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lorg/h2/table/IndexColumn;->sortType:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const-string v1, " NULLS FIRST"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, " NULLS LAST"

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IndexColumn "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
