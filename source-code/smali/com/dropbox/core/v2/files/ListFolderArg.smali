.class Lcom/dropbox/core/v2/files/ListFolderArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;,
        Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    }
.end annotation


# instance fields
.field protected final includeDeleted:Z

.field protected final includeHasExplicitSharedMembers:Z

.field protected final includeMediaInfo:Z

.field protected final includeMountedFolders:Z

.field protected final includeNonDownloadableFiles:Z

.field protected final includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

.field protected final limit:Ljava/lang/Long;

.field protected final path:Ljava/lang/String;

.field protected final recursive:Z

.field protected final sharedLink:Lcom/dropbox/core/v2/files/SharedLink;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/SharedLink;Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    iput-boolean p6, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMountedFolders:Z

    if-eqz p7, :cond_2

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long p5, p1, p3

    if-ltz p5, :cond_1

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x7d0

    cmp-long p5, p1, p3

    if-gtz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 2000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p7, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    iput-object p8, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    iput-object p9, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iput-boolean p10, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeNonDownloadableFiles:Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderArg;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMountedFolders:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMountedFolders:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/SharedLink;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeNonDownloadableFiles:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->includeNonDownloadableFiles:Z

    if-ne v2, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public hashCode()I
    .locals 12

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->path:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->recursive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMediaInfo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeDeleted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeHasExplicitSharedMembers:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeMountedFolders:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->limit:Ljava/lang/Long;

    iget-object v7, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->sharedLink:Lcom/dropbox/core/v2/files/SharedLink;

    iget-object v8, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-boolean v9, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->includeNonDownloadableFiles:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    invoke-static {v10}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
