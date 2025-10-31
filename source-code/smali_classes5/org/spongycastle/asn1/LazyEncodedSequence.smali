.class Lorg/spongycastle/asn1/LazyEncodedSequence;
.super Lorg/spongycastle/asn1/ASN1Sequence;
.source "SourceFile"


# instance fields
.field private encoded:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    return-void
.end method

.method private parse()V
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;

    iget-object v1, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1Primitive;->encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V

    :goto_0
    return-void
.end method

.method public encodedLength()I
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->parse()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getObjects()Ljava/util/Enumeration;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lorg/spongycastle/asn1/LazyConstructionEnumeration;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->parse()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->parse()V

    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->parse()V

    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
