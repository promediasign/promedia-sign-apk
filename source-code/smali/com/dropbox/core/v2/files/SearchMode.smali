.class public final enum Lcom/dropbox/core/v2/files/SearchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/SearchMode;

.field public static final enum DELETED_FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

.field public static final enum FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

.field public static final enum FILENAME_AND_CONTENT:Lcom/dropbox/core/v2/files/SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/files/SearchMode;

    const-string v1, "FILENAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    new-instance v1, Lcom/dropbox/core/v2/files/SearchMode;

    const-string v3, "FILENAME_AND_CONTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/files/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME_AND_CONTENT:Lcom/dropbox/core/v2/files/SearchMode;

    new-instance v3, Lcom/dropbox/core/v2/files/SearchMode;

    const-string v5, "DELETED_FILENAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/files/SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/files/SearchMode;->DELETED_FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dropbox/core/v2/files/SearchMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dropbox/core/v2/files/SearchMode;->$VALUES:[Lcom/dropbox/core/v2/files/SearchMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchMode;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/files/SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SearchMode;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/SearchMode;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/files/SearchMode;->$VALUES:[Lcom/dropbox/core/v2/files/SearchMode;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/SearchMode;

    return-object v0
.end method
