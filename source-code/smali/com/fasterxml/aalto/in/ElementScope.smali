.class public final Lcom/fasterxml/aalto/in/ElementScope;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mName:Lcom/fasterxml/aalto/in/PName;

.field mParent:Lcom/fasterxml/aalto/in/ElementScope;


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/in/PName;Lcom/fasterxml/aalto/in/ElementScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/aalto/in/ElementScope;->mParent:Lcom/fasterxml/aalto/in/ElementScope;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/ElementScope;->mName:Lcom/fasterxml/aalto/in/PName;

    return-void
.end method


# virtual methods
.method public getName()Lcom/fasterxml/aalto/in/PName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ElementScope;->mName:Lcom/fasterxml/aalto/in/PName;

    return-object v0
.end method

.method public getParent()Lcom/fasterxml/aalto/in/ElementScope;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ElementScope;->mParent:Lcom/fasterxml/aalto/in/ElementScope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ElementScope;->mParent:Lcom/fasterxml/aalto/in/ElementScope;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/in/ElementScope;->mName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/PName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ElementScope;->mParent:Lcom/fasterxml/aalto/in/ElementScope;

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/ElementScope;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/ElementScope;->mName:Lcom/fasterxml/aalto/in/PName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
