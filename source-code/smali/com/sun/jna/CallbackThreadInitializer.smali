.class public Lcom/sun/jna/CallbackThreadInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private daemon:Z

.field private detach:Z

.field private group:Ljava/lang/ThreadGroup;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/jna/CallbackThreadInitializer;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/CallbackThreadInitializer;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/CallbackThreadInitializer;-><init>(ZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/jna/CallbackThreadInitializer;-><init>(ZZLjava/lang/String;Ljava/lang/ThreadGroup;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/ThreadGroup;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sun/jna/CallbackThreadInitializer;->daemon:Z

    iput-boolean p2, p0, Lcom/sun/jna/CallbackThreadInitializer;->detach:Z

    iput-object p3, p0, Lcom/sun/jna/CallbackThreadInitializer;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/jna/CallbackThreadInitializer;->group:Ljava/lang/ThreadGroup;

    return-void
.end method


# virtual methods
.method public detach(Lcom/sun/jna/Callback;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/sun/jna/CallbackThreadInitializer;->detach:Z

    return p1
.end method

.method public getName(Lcom/sun/jna/Callback;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/sun/jna/CallbackThreadInitializer;->name:Ljava/lang/String;

    return-object p1
.end method

.method public getThreadGroup(Lcom/sun/jna/Callback;)Ljava/lang/ThreadGroup;
    .locals 0

    iget-object p1, p0, Lcom/sun/jna/CallbackThreadInitializer;->group:Ljava/lang/ThreadGroup;

    return-object p1
.end method

.method public isDaemon(Lcom/sun/jna/Callback;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/sun/jna/CallbackThreadInitializer;->daemon:Z

    return p1
.end method
