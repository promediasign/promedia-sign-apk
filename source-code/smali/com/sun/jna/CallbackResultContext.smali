.class public Lcom/sun/jna/CallbackResultContext;
.super Lcom/sun/jna/ToNativeContext;
.source "SourceFile"


# instance fields
.field private method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/jna/ToNativeContext;-><init>()V

    iput-object p1, p0, Lcom/sun/jna/CallbackResultContext;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/CallbackResultContext;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method
