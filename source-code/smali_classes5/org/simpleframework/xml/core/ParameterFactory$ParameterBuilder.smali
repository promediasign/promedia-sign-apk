.class Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/ParameterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBuilder"
.end annotation


# instance fields
.field private final entry:Ljava/lang/Class;

.field private final label:Ljava/lang/Class;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->label:Ljava/lang/Class;

    iput-object p3, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->entry:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->type:Ljava/lang/Class;

    return-void
.end method

.method private varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->entry:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->label:Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->label:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .line 2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-class p1, Lorg/simpleframework/xml/stream/Format;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method

.method public getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-class p1, Lorg/simpleframework/xml/stream/Format;

    const/4 p2, 0x3

    aput-object p1, v0, p2

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method
