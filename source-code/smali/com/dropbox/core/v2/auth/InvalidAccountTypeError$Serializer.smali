.class public Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v2, "endpoint"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;->ENDPOINT:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    goto :goto_1

    :cond_1
    const-string v2, "feature"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;->FEATURE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;->OTHER:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    :goto_1
    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$1;->$SwitchMap$com$dropbox$core$v2$auth$InvalidAccountTypeError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "other"

    :goto_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "feature"

    goto :goto_0

    :cond_1
    const-string p1, "endpoint"

    goto :goto_0

    :goto_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
