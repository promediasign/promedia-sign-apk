.class public Lorg/spongycastle/crypto/params/ParametersWithSBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/spongycastle/crypto/CipherParameters;

.field private sBox:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithSBox;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/params/ParametersWithSBox;->sBox:[B

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSBox;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getSBox()[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSBox;->sBox:[B

    return-object v0
.end method
