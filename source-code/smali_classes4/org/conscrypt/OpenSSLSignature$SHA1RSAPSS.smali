.class public final Lorg/conscrypt/OpenSSLSignature$SHA1RSAPSS;
.super Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA1RSAPSS"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    const-string v2, "SHA-1"

    sget v3, Lorg/conscrypt/EvpMdRef$SHA1;->SIZE_BYTES:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;-><init>(JLjava/lang/String;I)V

    return-void
.end method
