.class public final Lcom/dropbox/core/v2/files/DownloadError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/DownloadError$Serializer;,
        Lcom/dropbox/core/v2/files/DownloadError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/DownloadError;

.field public static final UNSUPPORTED_FILE:Lcom/dropbox/core/v2/files/DownloadError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/DownloadError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/DownloadError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DownloadError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DownloadError$Tag;->UNSUPPORTED_FILE:Lcom/dropbox/core/v2/files/DownloadError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DownloadError;->withTag(Lcom/dropbox/core/v2/files/DownloadError$Tag;)Lcom/dropbox/core/v2/files/DownloadError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DownloadError;->UNSUPPORTED_FILE:Lcom/dropbox/core/v2/files/DownloadError;

    new-instance v0, Lcom/dropbox/core/v2/files/DownloadError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DownloadError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DownloadError$Tag;->OTHER:Lcom/dropbox/core/v2/files/DownloadError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DownloadError;->withTag(Lcom/dropbox/core/v2/files/DownloadError$Tag;)Lcom/dropbox/core/v2/files/DownloadError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DownloadError;->OTHER:Lcom/dropbox/core/v2/files/DownloadError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/dropbox/core/v2/files/DownloadError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/DownloadError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DownloadError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/DownloadError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DownloadError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DownloadError$Tag;->PATH:Lcom/dropbox/core/v2/files/DownloadError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DownloadError;->withTagAndPath(Lcom/dropbox/core/v2/files/DownloadError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DownloadError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/DownloadError$Tag;)Lcom/dropbox/core/v2/files/DownloadError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/DownloadError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DownloadError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/files/DownloadError;->_tag:Lcom/dropbox/core/v2/files/DownloadError$Tag;

    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/DownloadError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DownloadError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/DownloadError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DownloadError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/files/DownloadError;->_tag:Lcom/dropbox/core/v2/files/DownloadError$Tag;

    iput-object p2, v0, Lcom/dropbox/core/v2/files/DownloadError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/DownloadError;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/files/DownloadError;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DownloadError;->_tag:Lcom/dropbox/core/v2/files/DownloadError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DownloadError;->_tag:Lcom/dropbox/core/v2/files/DownloadError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/files/DownloadError$1;->$SwitchMap$com$dropbox$core$v2$files$DownloadError$Tag:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DownloadError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/DownloadError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/files/DownloadError;->_tag:Lcom/dropbox/core/v2/files/DownloadError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DownloadError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/DownloadError$Tag;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/DownloadError;->_tag:Lcom/dropbox/core/v2/files/DownloadError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/DownloadError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DownloadError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
