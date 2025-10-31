.class public Lorg/h2/result/SimpleRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/result/SearchRow;


# instance fields
.field private final data:[Lorg/h2/value/Value;

.field private key:J

.field private memory:I

.field private version:I


# direct methods
.method public constructor <init>([Lorg/h2/value/Value;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    array-length v0, v0

    return v0
.end method

.method public getKey()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/result/SimpleRow;->key:J

    return-wide v0
.end method

.method public getMemory()I
    .locals 4

    iget v0, p0, Lorg/h2/result/SimpleRow;->memory:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x18

    iput v1, p0, Lorg/h2/result/SimpleRow;->memory:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget v3, p0, Lorg/h2/result/SimpleRow;->memory:I

    invoke-virtual {v2}, Lorg/h2/value/Value;->getMemory()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/h2/result/SimpleRow;->memory:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/h2/result/SimpleRow;->memory:I

    return v0
.end method

.method public getValue(I)Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/h2/result/SimpleRow;->version:I

    return v0
.end method

.method public setKey(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/result/SimpleRow;->key:J

    return-void
.end method

.method public setKeyAndVersion(Lorg/h2/result/SearchRow;)V
    .locals 2

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/result/SimpleRow;->key:J

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p1

    iput p1, p0, Lorg/h2/result/SimpleRow;->version:I

    return-void
.end method

.method public setValue(ILorg/h2/value/Value;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    aput-object p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "( /* key:"

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/result/SimpleRow;->getKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    iget v1, p0, Lorg/h2/result/SimpleRow;->version:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " v:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/h2/result/SimpleRow;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    const-string v1, " */ "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/result/SimpleRow;->data:[Lorg/h2/value/Value;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, ", "

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v4, :cond_1

    const-string v4, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
