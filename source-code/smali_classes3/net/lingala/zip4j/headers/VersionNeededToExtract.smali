.class public final enum Lnet/lingala/zip4j/headers/VersionNeededToExtract;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/headers/VersionNeededToExtract;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/headers/VersionNeededToExtract;

.field public static final enum AES_ENCRYPTED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

.field public static final enum DEFAULT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

.field public static final enum DEFLATE_COMPRESSED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

.field public static final enum ZIP_64_FORMAT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->DEFAULT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    new-instance v2, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    const/4 v3, 0x1

    const/16 v4, 0x14

    const-string v5, "DEFLATE_COMPRESSED"

    invoke-direct {v2, v5, v3, v4}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->DEFLATE_COMPRESSED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    new-instance v4, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    const/4 v5, 0x2

    const/16 v6, 0x2d

    const-string v7, "ZIP_64_FORMAT"

    invoke-direct {v4, v7, v5, v6}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->ZIP_64_FORMAT:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    new-instance v6, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    const/4 v7, 0x3

    const/16 v8, 0x33

    const-string v9, "AES_ENCRYPTED"

    invoke-direct {v6, v9, v7, v8}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->AES_ENCRYPTED:Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    const/4 v8, 0x4

    new-array v8, v8, [Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->$VALUES:[Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/headers/VersionNeededToExtract;
    .locals 1

    const-class v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/headers/VersionNeededToExtract;
    .locals 1

    sget-object v0, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->$VALUES:[Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/headers/VersionNeededToExtract;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    return-object v0
.end method
