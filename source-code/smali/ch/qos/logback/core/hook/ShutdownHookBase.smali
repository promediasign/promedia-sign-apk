.class public abstract Lch/qos/logback/core/hook/ShutdownHookBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "SourceFile"

# interfaces
.implements Lch/qos/logback/core/hook/ShutdownHook;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 2

    const-string v0, "Logback context being closed via shutdown hook"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    instance-of v1, v0, Lch/qos/logback/core/ContextBase;

    if-eqz v1, :cond_0

    check-cast v0, Lch/qos/logback/core/ContextBase;

    invoke-virtual {v0}, Lch/qos/logback/core/ContextBase;->stop()V

    :cond_0
    return-void
.end method
