.class public final enum Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

.field public static final enum DOCS_ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

.field public static final enum DOCS_CREATED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    const-string v1, "DOCS_ACCESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->DOCS_ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    new-instance v1, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    const-string v3, "DOCS_CREATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->DOCS_CREATED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    new-instance v3, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->OTHER:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->$VALUES:[Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->$VALUES:[Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    return-object v0
.end method
