.class public interface abstract Lorg/h2/server/Service;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAllowOthers()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method public varargs abstract init([Ljava/lang/String;)V
.end method

.method public abstract isDaemon()Z
.end method

.method public abstract isRunning(Z)Z
.end method

.method public abstract listen()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
