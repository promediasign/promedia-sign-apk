.class Lorg/simpleframework/xml/core/LabelKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final label:Ljava/lang/Class;

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/core/LabelKey;->label:Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelKey;->type:Ljava/lang/Class;

    return-void
.end method

.method private equals(Lorg/simpleframework/xml/core/LabelKey;)Z
    .locals 3

    .line 2
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p1, Lorg/simpleframework/xml/core/LabelKey;->label:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelKey;->label:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p1, Lorg/simpleframework/xml/core/LabelKey;->type:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelKey;->type:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    iget-object p1, p1, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/simpleframework/xml/core/LabelKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/simpleframework/xml/core/LabelKey;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/LabelKey;->equals(Lorg/simpleframework/xml/core/LabelKey;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
