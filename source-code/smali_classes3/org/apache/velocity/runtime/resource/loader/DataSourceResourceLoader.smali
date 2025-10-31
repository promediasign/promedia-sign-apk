.class public Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;
.super Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader$SelfCleaningReader;
    }
.end annotation


# instance fields
.field private connection:Ljava/sql/Connection;

.field private ctx:Ljavax/naming/InitialContext;

.field private dataSource:Ljavax/sql/DataSource;

.field private dataSourceName:Ljava/lang/String;

.field private keyColumn:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private templateColumn:Ljava/lang/String;

.field private templatePrepStatement:Ljava/sql/PreparedStatement;

.field private timestampColumn:Ljava/lang/String;

.field private timestampPrepStatement:Ljava/sql/PreparedStatement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->connection:Ljava/sql/Connection;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templatePrepStatement:Ljava/sql/PreparedStatement;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampPrepStatement:Ljava/sql/PreparedStatement;

    return-void
.end method

.method private checkDBConnection()V
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->connection:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/sql/Connection;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->openDBConnection()V

    :cond_1
    return-void
.end method

.method private closeDBConnection()V
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templatePrepStatement:Ljava/sql/PreparedStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templatePrepStatement:Ljava/sql/PreparedStatement;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templatePrepStatement:Ljava/sql/PreparedStatement;

    throw v0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampPrepStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampPrepStatement:Ljava/sql/PreparedStatement;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampPrepStatement:Ljava/sql/PreparedStatement;

    throw v0

    :cond_1
    :goto_3
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->connection:Ljava/sql/Connection;

    if-eqz v0, :cond_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_4
    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->connection:Ljava/sql/Connection;

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_4
    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->connection:Ljava/sql/Connection;

    throw v0

    :cond_2
    :goto_5
    return-void
.end method

.method private closeResultSet(Ljava/sql/ResultSet;)V
    .locals 0

    return-void
.end method

.method private openDBConnection()V
    .locals 4

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->dataSource:Ljavax/sql/DataSource;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->ctx:Ljavax/naming/InitialContext;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->ctx:Ljavax/naming/InitialContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->ctx:Ljavax/naming/InitialContext;

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->dataSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sql/DataSource;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->dataSource:Ljavax/sql/DataSource;

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->connection:Ljava/sql/Connection;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->closeDBConnection()V

    :cond_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->connection:Ljava/sql/Connection;

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templateColumn:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->tableName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->keyColumn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->prepareStatement(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templatePrepStatement:Ljava/sql/PreparedStatement;

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->connection:Ljava/sql/Connection;

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampColumn:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->tableName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->keyColumn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->prepareStatement(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampPrepStatement:Ljava/sql/PreparedStatement;

    return-void
.end method

.method private readLastModified(Lorg/apache/velocity/runtime/resource/Resource;Ljava/lang/String;)J
    .locals 4

    const-string v0, "DataSourceResourceLoader: database problem while "

    const-string v1, "DataSourceResourceLoader: could not find resource "

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->checkDBConnection()V

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampPrepStatement:Ljava/sql/PreparedStatement;

    invoke-virtual {p0, v3, p1}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->fetchResult(Ljava/sql/PreparedStatement;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampColumn:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->closeResultSet(Ljava/sql/ResultSet;)V

    return-wide p1

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " while "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/velocity/exception/ResourceNotFoundException;

    invoke-direct {v3, v1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " of \'"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    invoke-interface {p2, p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {p2, p1, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->closeResultSet(Ljava/sql/ResultSet;)V

    throw p1

    :cond_2
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string p2, "DataSourceResourceLoader: Template name was empty or null"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public fetchResult(Ljava/sql/PreparedStatement;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->closeDBConnection()V

    return-void
.end method

.method public getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J
    .locals 2

    const-string v0, "getting timestamp"

    invoke-direct {p0, p1, v0}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->readLastModified(Lorg/apache/velocity/runtime/resource/Resource;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReader(Ljava/sql/ResultSet;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 5

    const-string v0, "DataSourceResourceLoader: database problem while getting resource \'"

    const-string v1, "DataSourceResourceLoader: could not find resource \'"

    const-string v2, "DataSourceResourceLoader: template column for \'"

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :try_start_1
    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->checkDBConnection()V

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templatePrepStatement:Ljava/sql/PreparedStatement;

    invoke-virtual {p0, v3, p1}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->fetchResult(Ljava/sql/PreparedStatement;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templateColumn:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, p2}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->getReader(Ljava/sql/ResultSet;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v1, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader$SelfCleaningReader;

    invoke-direct {v1, p2, v3}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader$SelfCleaningReader;-><init>(Ljava/io/Reader;Ljava/sql/ResultSet;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Lorg/apache/velocity/exception/ResourceNotFoundException;

    const-string p2, "DataSourceResourceLoader: Template name was empty or null"

    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public init(Lorg/apache/velocity/util/ExtProperties;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "resource.datasource"

    invoke-virtual {p1, v4}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->dataSourceName:Ljava/lang/String;

    const-string v4, "resource.table"

    invoke-virtual {p1, v4}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->tableName:Ljava/lang/String;

    const-string v4, "resource.keycolumn"

    invoke-virtual {p1, v4}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->keyColumn:Ljava/lang/String;

    const-string v4, "resource.templatecolumn"

    invoke-virtual {p1, v4}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templateColumn:Ljava/lang/String;

    const-string v4, "resource.timestampcolumn"

    invoke-virtual {p1, v4}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampColumn:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->dataSource:Ljavax/sql/DataSource;

    const-string v4, "DataSourceResourceLoader initialized."

    const-string v5, "DataSourceResourceLoader: using columns \"{}\", \"{}\" and \"{}\""

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v6, "DataSourceResourceLoader: using dataSource instance with table \"{}\""

    iget-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->tableName:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    iget-object v6, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->keyColumn:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templateColumn:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampColumn:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v2

    aput-object v7, v3, v1

    aput-object v8, v3, v0

    invoke-interface {p1, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    invoke-interface {p1, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->dataSourceName:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v6, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v7, "DataSourceResourceLoader: using \"{}\" datasource with table \"{}\""

    iget-object v8, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->tableName:Ljava/lang/String;

    invoke-interface {v6, v7, p1, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    iget-object v6, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->keyColumn:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->templateColumn:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->timestampColumn:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v2

    aput-object v7, v3, v1

    aput-object v8, v3, v0

    invoke-interface {p1, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->log:Lorg/slf4j/Logger;

    const-string v0, "DataSourceResourceLoader not properly initialized. No DataSource was identified."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSourceModified(Lorg/apache/velocity/runtime/resource/Resource;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getLastModified()J

    move-result-wide v0

    const-string v2, "checking timestamp"

    invoke-direct {p0, p1, v2}, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->readLastModified(Lorg/apache/velocity/runtime/resource/Resource;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public prepareStatement(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 3

    .line 1
    const-string v0, "SELECT "

    .line 2
    .line 3
    const-string v1, " FROM "

    .line 4
    .line 5
    const-string v2, " WHERE "

    .line 6
    .line 7
    invoke-static {v0, p2, v1, p3, v2}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p3, " = ?"

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
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
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;->dataSource:Ljavax/sql/DataSource;

    return-void
.end method
