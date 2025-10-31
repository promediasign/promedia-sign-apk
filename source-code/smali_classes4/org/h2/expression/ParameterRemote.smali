.class public Lorg/h2/expression/ParameterRemote;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/expression/ParameterInterface;


# instance fields
.field private dataType:I

.field private final index:I

.field private nullable:I

.field private precision:J

.field private scale:I

.field private value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/expression/ParameterRemote;->dataType:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/h2/expression/ParameterRemote;->nullable:I

    iput p1, p0, Lorg/h2/expression/ParameterRemote;->index:I

    return-void
.end method

.method public static writeMetaData(Lorg/h2/value/Transfer;Lorg/h2/expression/ParameterInterface;)V
    .locals 2

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getPrecision()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getScale()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getNullable()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    return-void
.end method


# virtual methods
.method public checkSet()V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ParameterRemote;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/expression/ParameterRemote;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15f9c

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getNullable()I
    .locals 1

    iget v0, p0, Lorg/h2/expression/ParameterRemote;->nullable:I

    return v0
.end method

.method public getParamValue()Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ParameterRemote;->value:Lorg/h2/value/Value;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ParameterRemote;->value:Lorg/h2/value/Value;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/h2/expression/ParameterRemote;->precision:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getScale()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ParameterRemote;->value:Lorg/h2/value/Value;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/h2/expression/ParameterRemote;->scale:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/value/Value;->getScale()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ParameterRemote;->value:Lorg/h2/value/Value;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/h2/expression/ParameterRemote;->dataType:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isValueSet()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ParameterRemote;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readMetaData(Lorg/h2/value/Transfer;)V
    .locals 2

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/ParameterRemote;->dataType:I

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/expression/ParameterRemote;->precision:J

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/ParameterRemote;->scale:I

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readInt()I

    move-result p1

    iput p1, p0, Lorg/h2/expression/ParameterRemote;->nullable:I

    return-void
.end method

.method public setValue(Lorg/h2/value/Value;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/h2/expression/ParameterRemote;->value:Lorg/h2/value/Value;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/h2/value/Value;->remove()V

    :cond_0
    iput-object p1, p0, Lorg/h2/expression/ParameterRemote;->value:Lorg/h2/value/Value;

    return-void
.end method
