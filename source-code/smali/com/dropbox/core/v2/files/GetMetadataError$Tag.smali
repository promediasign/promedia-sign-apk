.class public final enum Lcom/dropbox/core/v2/files/GetMetadataError$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/GetMetadataError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

.field public static final enum PATH:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    const-string v1, "PATH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    aput-object v0, v1, v2

    sput-object v1, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetMetadataError$Tag;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/GetMetadataError$Tag;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    return-object v0
.end method
