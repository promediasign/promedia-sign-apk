.class public final enum Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

.field public static final enum SECONDARY_EMAILS_DISABLED:Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

.field public static final enum TOO_MANY_EMAILS:Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    const-string v1, "SECONDARY_EMAILS_DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;->SECONDARY_EMAILS_DISABLED:Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    new-instance v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    const-string v3, "TOO_MANY_EMAILS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;->TOO_MANY_EMAILS:Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    new-instance v3, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;->OTHER:Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;->$VALUES:[Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;->$VALUES:[Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/AddSecondaryEmailsError;

    return-object v0
.end method
