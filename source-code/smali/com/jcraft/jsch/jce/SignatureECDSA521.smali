.class public Lcom/jcraft/jsch/jce/SignatureECDSA521;
.super Lcom/jcraft/jsch/jce/SignatureECDSAN;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/jce/SignatureECDSAN;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ecdsa-sha2-nistp521"

    return-object v0
.end method
