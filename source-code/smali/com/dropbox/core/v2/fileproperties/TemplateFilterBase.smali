.class public final Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

.field private filterSomeValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->withTag(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->filterSomeValue:Ljava/util/List;

    return-object p0
.end method

.method public static filterSome(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v1, :cond_1

    const-string v3, "(/|ptid:).*"

    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stringan item in list does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stringan item in list is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->withTagAndFilterSome(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "List has fewer than 1 items"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    return-object v0
.end method

.method private withTagAndFilterSome(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;"
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->filterSomeValue:Ljava/util/List;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$TemplateFilterBase$Tag:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->filterSomeValue:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->filterSomeValue:Ljava/util/List;

    if-eq v2, p1, :cond_6

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->filterSomeValue:Ljava/util/List;

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

.method public tag()Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
