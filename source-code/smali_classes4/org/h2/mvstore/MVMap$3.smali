.class Lorg/h2/mvstore/MVMap$3;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/MVMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/mvstore/MVMap;

.field final synthetic val$map:Lorg/h2/mvstore/MVMap;

.field final synthetic val$root:Lorg/h2/mvstore/Page;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/mvstore/MVMap$3;->this$0:Lorg/h2/mvstore/MVMap;

    iput-object p2, p0, Lorg/h2/mvstore/MVMap$3;->val$map:Lorg/h2/mvstore/MVMap;

    iput-object p3, p0, Lorg/h2/mvstore/MVMap$3;->val$root:Lorg/h2/mvstore/Page;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap$3;->this$0:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/Cursor;

    iget-object v1, p0, Lorg/h2/mvstore/MVMap$3;->val$map:Lorg/h2/mvstore/MVMap;

    iget-object v2, p0, Lorg/h2/mvstore/MVMap$3;->val$root:Lorg/h2/mvstore/Page;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/mvstore/Cursor;-><init>(Lorg/h2/mvstore/MVMap;Lorg/h2/mvstore/Page;Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVMap$3;->this$0:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->size()I

    move-result v0

    return v0
.end method
