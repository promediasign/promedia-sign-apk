.class public final enum Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

.field public static final enum FAILURE:Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

.field public static final enum SUCCESS:Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

    new-instance v1, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

    const-string v3, "FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/LockFileResultEntry$Tag;

    return-object v0
.end method
