.class public Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;


# instance fields
.field private final applicationScheduler:Lio/reactivex/Scheduler;

.field private final nettyExecutor:Ljava/util/concurrent/Executor;

.field private final nettyThreads:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    const/4 v1, 0x0

    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;->DEFAULT_APPLICATION_SCHEDULER:Lio/reactivex/Scheduler;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;-><init>(Ljava/util/concurrent/Executor;ILio/reactivex/Scheduler;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->applicationScheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    iget v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->applicationScheduler:Lio/reactivex/Scheduler;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->applicationScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRawNettyExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getRawNettyThreads()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->applicationScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
