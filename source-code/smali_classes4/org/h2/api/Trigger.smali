.class public interface abstract Lorg/h2/api/Trigger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DELETE:I = 0x4

.field public static final INSERT:I = 0x1

.field public static final SELECT:I = 0x8

.field public static final UPDATE:I = 0x2


# virtual methods
.method public abstract close()V
.end method

.method public abstract fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method public abstract init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract remove()V
.end method
