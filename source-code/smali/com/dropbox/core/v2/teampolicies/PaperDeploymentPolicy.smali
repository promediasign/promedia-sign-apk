.class public final enum Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

.field public static final enum FULL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

.field public static final enum PARTIAL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->FULL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    new-instance v1, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    const-string v3, "PARTIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->PARTIAL:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    new-instance v3, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->$VALUES:[Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    return-object v0
.end method
