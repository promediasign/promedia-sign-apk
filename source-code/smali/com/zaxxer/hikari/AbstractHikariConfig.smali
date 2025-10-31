.class public abstract Lcom/zaxxer/hikari/AbstractHikariConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONNECTION_TIMEOUT:J

.field private static final IDLE_TIMEOUT:J

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final MAX_LIFETIME:J

.field private static final VALIDATION_TIMEOUT:J

.field private static poolNumber:I

.field private static unitTest:Z


# instance fields
.field private catalog:Ljava/lang/String;

.field private connectionCustomizerClassName:Ljava/lang/String;

.field private connectionInitSql:Ljava/lang/String;

.field private connectionTestQuery:Ljava/lang/String;

.field private volatile connectionTimeout:J

.field private customizer:Lcom/zaxxer/hikari/IConnectionCustomizer;

.field private dataSource:Ljavax/sql/DataSource;

.field private dataSourceClassName:Ljava/lang/String;

.field private dataSourceProperties:Ljava/util/Properties;

.field private driverClassName:Ljava/lang/String;

.field private healthCheckProperties:Ljava/util/Properties;

.field private healthCheckRegistry:Ljava/lang/Object;

.field private volatile idleTimeout:J

.field private isAllowPoolSuspension:Z

.field private isAutoCommit:Z

.field private isInitializationFailFast:Z

.field private isIsolateInternalQueries:Z

.field private isReadOnly:Z

.field private isRegisterMbeans:Z

.field private jdbcUrl:Ljava/lang/String;

.field private volatile leakDetectionThreshold:J

.field private volatile maxLifetime:J

.field private volatile maxPoolSize:I

.field private metricRegistry:Ljava/lang/Object;

.field private volatile minIdle:I

.field private password:Ljava/lang/String;

.field private poolName:Ljava/lang/String;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private transactionIsolationName:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private volatile validationTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/zaxxer/hikari/HikariConfig;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->LOGGER:Lorg/slf4j/Logger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/zaxxer/hikari/AbstractHikariConfig;->CONNECTION_TIMEOUT:J

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/zaxxer/hikari/AbstractHikariConfig;->VALIDATION_TIMEOUT:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/zaxxer/hikari/AbstractHikariConfig;->IDLE_TIMEOUT:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->MAX_LIFETIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceProperties:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->healthCheckProperties:Ljava/util/Properties;

    sget-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->CONNECTION_TIMEOUT:J

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    sget-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->VALIDATION_TIMEOUT:J

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->validationTimeout:J

    sget-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isAutoCommit:Z

    iput-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isInitializationFailFast:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    sget-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->MAX_LIFETIME:J

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    new-instance v0, Lcom/zaxxer/hikari/AbstractHikariConfig$1;

    invoke-direct {v0, p0}, Lcom/zaxxer/hikari/AbstractHikariConfig$1;-><init>(Lcom/zaxxer/hikari/AbstractHikariConfig;)V

    iput-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->customizer:Lcom/zaxxer/hikari/IConnectionCustomizer;

    const-string v0, "hikaricp.configurationFile"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->loadProperties(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logConfiguration()V
    .locals 7

    sget-object v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "HikariCP pool {} configuration:"

    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/TreeSet;

    const-class v1, Lcom/zaxxer/hikari/HikariConfig;

    invoke-static {v1}, Lcom/zaxxer/hikari/util/PropertyBeanSetter;->getPropertyNames(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1, p0}, Lcom/zaxxer/hikari/util/PropertyBeanSetter;->getProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "dataSourceProperties"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "<masked>"

    const-string v5, "password"

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceProperties:Ljava/util/Properties;

    invoke-static {v2}, Lcom/zaxxer/hikari/util/PropertyBeanSetter;->copyProperties(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v4, v2

    :goto_2
    sget-object v2, Lcom/zaxxer/hikari/AbstractHikariConfig;->LOGGER:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "................................................"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const-string v4, ""

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private validateNumerics()V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->validationTimeout:J

    iget-wide v3, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    const-string v1, "validationTimeout is greater than connectionTimeout, setting validationTimeout to connectionTimeout."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    iput-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->validationTimeout:J

    :cond_0
    iget v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    iget v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    if-le v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    iput v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    :cond_2
    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    cmp-long v3, v1, v5

    if-ltz v3, :cond_7

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_3

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1e

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-gez v7, :cond_3

    sget-wide v1, Lcom/zaxxer/hikari/AbstractHikariConfig;->MAX_LIFETIME:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "maxLifetime is less than 30000ms, using default {}ms."

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    :cond_3
    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_4

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0xa

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-gez v7, :cond_4

    sget-wide v1, Lcom/zaxxer/hikari/AbstractHikariConfig;->IDLE_TIMEOUT:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "idleTimeout is less than 10000ms, using default {}ms."

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iput-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    goto :goto_1

    :cond_4
    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    iget-wide v3, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    cmp-long v7, v1, v3

    if-lez v7, :cond_5

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_5

    const-string v1, "idleTimeout is greater than maxLifetime, setting to maxLifetime."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    goto :goto_0

    :cond_5
    :goto_1
    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_6

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    sget-boolean v1, Lcom/zaxxer/hikari/AbstractHikariConfig;->unitTest:Z

    if-nez v1, :cond_6

    const-string v1, "leakDetectionThreshold is less than 2000ms, setting to minimum 2000ms."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    :cond_6
    return-void

    :cond_7
    const-string v1, "maxLifetime cannot be negative."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addDataSourceProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->catalog:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionCustomizer()Lcom/zaxxer/hikari/IConnectionCustomizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->customizer:Lcom/zaxxer/hikari/IConnectionCustomizer;

    return-object v0
.end method

.method public getConnectionCustomizerClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionInitSql()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionInitSql:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTestQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTestQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    return-wide v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getDataSourceClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSourceProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getDriverClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->driverClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthCheckProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->healthCheckProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getHealthCheckRegistry()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->healthCheckRegistry:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdleTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    return-wide v0
.end method

.method public getJdbcUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->jdbcUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLeakDetectionThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    return-wide v0
.end method

.method public getMaxLifetime()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    return-wide v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    iget v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    return v0
.end method

.method public getMetricRegistry()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->metricRegistry:Ljava/lang/Object;

    return-object v0
.end method

.method public getMinimumIdle()I
    .locals 1

    iget v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPoolName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public getTransactionIsolation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->transactionIsolationName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->validationTimeout:J

    return-wide v0
.end method

.method public isAllowPoolSuspension()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isAllowPoolSuspension:Z

    return v0
.end method

.method public isAutoCommit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isAutoCommit:Z

    return v0
.end method

.method public isInitializationFailFast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isInitializationFailFast:Z

    return v0
.end method

.method public isIsolateInternalQueries()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isIsolateInternalQueries:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isReadOnly:Z

    return v0
.end method

.method public isRegisterMbeans()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isRegisterMbeans:Z

    return v0
.end method

.method public abstract loadProperties(Ljava/lang/String;)V
.end method

.method public setDriverClassName(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->driverClassName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    const-string v2, "driverClassName specified class \'"

    .line 23
    .line 24
    const-string v3, "\' could not be loaded"

    .line 25
    .line 26
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw v1
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
.end method

.method public setIdleTimeout(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idleTimeout cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJdbcUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->jdbcUrl:Ljava/lang/String;

    return-void
.end method

.method public setLeakDetectionThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    return-void
.end method

.method public setMaxLifetime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxPoolSize cannot be less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validate()V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-direct {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->validateNumerics()V

    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connectionCustomizationClass specified class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' could not be loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->driverClassName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->jdbcUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "when specifying driverClassName, jdbcUrl must also be specified"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceClassName:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "both driverClassName and dataSourceClassName are specified, one or the other should be used"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->jdbcUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSource:Ljavax/sql/DataSource;

    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceClassName:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "one of either dataSource, dataSourceClassName, or jdbcUrl and driverClassName must be specified"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "one of either dataSource or dataSourceClassName must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceClassName:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "both dataSource and dataSourceClassName are specified, ignoring dataSourceClassName"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->transactionIsolationName:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/zaxxer/hikari/util/UtilityElf;->getTransactionIsolation(Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolName:Ljava/lang/String;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HikariPool-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolNumber:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolName:Ljava/lang/String;

    :cond_a
    sget-object v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->unitTest:Z

    if-eqz v0, :cond_c

    :cond_b
    invoke-direct {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->logConfiguration()V

    :cond_c
    return-void
.end method
