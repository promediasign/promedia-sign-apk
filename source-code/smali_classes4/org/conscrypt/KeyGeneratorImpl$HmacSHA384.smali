.class public final Lorg/conscrypt/KeyGeneratorImpl$HmacSHA384;
.super Lorg/conscrypt/KeyGeneratorImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacSHA384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x180

    const/4 v1, 0x0

    const-string v2, "HmacSHA384"

    invoke-direct {p0, v2, v0, v1}, Lorg/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILorg/conscrypt/KeyGeneratorImpl$1;)V

    return-void
.end method
