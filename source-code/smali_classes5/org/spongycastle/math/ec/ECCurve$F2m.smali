.class public Lorg/spongycastle/math/ec/ECCurve$F2m;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    .line 1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    iput p3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    iput p4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    iput-object p7, p0, Lorg/spongycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    iput-object p8, p0, Lorg/spongycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p0, p6}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 p1, 0x6

    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    return-void
.end method

.method public constructor <init>(IIIILorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    iput p3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    iput p4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    iput-object p7, p0, Lorg/spongycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    iput-object p8, p0, Lorg/spongycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

    iput-object p5, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    iput-object p6, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 p1, 0x6

    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    .line 4
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public cloneCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 10

    new-instance v9, Lorg/spongycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/spongycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7

    new-instance v6, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public getFieldSize()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getInfinity()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
