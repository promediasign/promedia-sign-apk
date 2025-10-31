.class public Lcom/dropbox/core/oauth/DbxOAuthError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERRORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/oauth/DbxOAuthError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final error:Ljava/lang/String;

.field private final errorDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "invalid_grant"

    const-string v2, "unsupported_grant_type"

    const-string v3, "invalid_request"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/dropbox/core/oauth/DbxOAuthError;->ERRORS:Ljava/util/Set;

    new-instance v0, Lcom/dropbox/core/oauth/DbxOAuthError$1;

    invoke-direct {v0}, Lcom/dropbox/core/oauth/DbxOAuthError$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/oauth/DbxOAuthError;->Reader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dropbox/core/oauth/DbxOAuthError;->ERRORS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/oauth/DbxOAuthError;->error:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p1, "unknown"

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lcom/dropbox/core/oauth/DbxOAuthError;->errorDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/oauth/DbxOAuthError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/oauth/DbxOAuthError;->errorDescription:Ljava/lang/String;

    return-object v0
.end method
