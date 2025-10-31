.class public Lorg/h2/jdbc/JdbcDatabaseMetaData;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/DatabaseMetaData;
.implements Lorg/h2/jdbc/JdbcDatabaseMetaDataBackwardsCompat;


# instance fields
.field private final conn:Lorg/h2/jdbc/JdbcConnection;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/message/Trace;I)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0, p3}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-void
.end method

.method private checkClosed()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    return-void
.end method

.method private static getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "%"

    :cond_1
    return-object p0
.end method

.method private getFunctions(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TOPIC FROM INFORMATION_SCHEMA.HELP WHERE SECTION = ?"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    new-instance v2, Lorg/h2/util/StatementBuilder;

    invoke-direct {v2}, Lorg/h2/util/StatementBuilder;-><init>()V

    :cond_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-static {v3, v4, v1}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    const-string v8, ","

    invoke-virtual {v2, v8}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v2, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private static getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "%"

    :cond_0
    return-object p0
.end method

.method private static getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "%"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "PUBLIC"

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .locals 1

    const-string v0, "allProceduresAreCallable"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public allTablesAreSelectable()Z
    .locals 1

    const-string v0, "allTablesAreSelectable"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public autoCommitFailureClosesAllResultSets()Z
    .locals 1

    const-string v0, "autoCommitFailureClosesAllResultSets"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .locals 1

    const-string v0, "dataDefinitionCausesTransactionCommit"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .locals 1

    const-string v0, "dataDefinitionIgnoredInTransactions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .locals 3

    const-string v0, "deletesAreDetected"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .locals 1

    const-string v0, "doesMaxRowSizeIncludeBlobs"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public generatedKeyAlwaysReturned()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    const-string p1, "attributes"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getBestRowIdentifier("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ");"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p4, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p5, "SELECT CAST(? AS SMALLINT) SCOPE, C.COLUMN_NAME, C.DATA_TYPE, C.TYPE_NAME, C.CHARACTER_MAXIMUM_LENGTH COLUMN_SIZE, C.CHARACTER_MAXIMUM_LENGTH BUFFER_LENGTH, CAST(C.NUMERIC_SCALE AS SMALLINT) DECIMAL_DIGITS, CAST(? AS SMALLINT) PSEUDO_COLUMN FROM INFORMATION_SCHEMA.INDEXES I,  INFORMATION_SCHEMA.COLUMNS C WHERE C.TABLE_NAME = I.TABLE_NAME AND C.COLUMN_NAME = I.COLUMN_NAME AND C.TABLE_CATALOG LIKE ? ESCAPE ? AND C.TABLE_SCHEMA LIKE ? ESCAPE ? AND C.TABLE_NAME = ? AND I.PRIMARY_KEY = TRUE ORDER BY SCOPE"

    invoke-virtual {p4, p5}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p4

    const/4 p5, 0x2

    const/4 v1, 0x1

    invoke-interface {p4, v1, p5}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {p4, p5, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x3

    invoke-interface {p4, p5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {p4, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {p4, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {p4, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-interface {p4, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, "getCatalogSeparator"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "."

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "getCatalogTerm"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "catalog"

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .locals 2

    :try_start_0
    const-string v0, "getCatalogs"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT CATALOG_NAME TABLE_CAT FROM INFORMATION_SCHEMA.CATALOGS"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getClientInfoProperties()Ljava/sql/ResultSet;
    .locals 7

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string v2, "Name"

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v2, "Value"

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    const/4 v3, 0x1

    aput-object v5, v6, v3

    invoke-virtual {v1, v6}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getColumnPrivileges("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, GRANTOR, GRANTEE, PRIVILEGE_TYPE PRIVILEGE, IS_GRANTABLE FROM INFORMATION_SCHEMA.COLUMN_PRIVILEGES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME = ? AND COLUMN_NAME LIKE ? ESCAPE ? ORDER BY COLUMN_NAME, PRIVILEGE"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, ", "

    const-string v1, "\\"

    const-string v2, "getColumns("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, DATA_TYPE, TYPE_NAME, CHARACTER_MAXIMUM_LENGTH COLUMN_SIZE, CHARACTER_MAXIMUM_LENGTH BUFFER_LENGTH, NUMERIC_SCALE DECIMAL_DIGITS, NUMERIC_PRECISION_RADIX NUM_PREC_RADIX, NULLABLE, REMARKS, COLUMN_DEFAULT COLUMN_DEF, DATA_TYPE SQL_DATA_TYPE, ZERO() SQL_DATETIME_SUB, CHARACTER_OCTET_LENGTH CHAR_OCTET_LENGTH, ORDINAL_POSITION, IS_NULLABLE IS_NULLABLE, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_CATALOG, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_SCHEMA, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_TABLE, SOURCE_DATA_TYPE, CASE WHEN SEQUENCE_NAME IS NULL THEN CAST(? AS VARCHAR) ELSE CAST(? AS VARCHAR) END IS_AUTOINCREMENT, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_CATLOG FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME LIKE ? ESCAPE ? AND COLUMN_NAME LIKE ? ESCAPE ? ORDER BY TABLE_SCHEM, TABLE_NAME, ORDINAL_POSITION"

    invoke-virtual {v0, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const-string v2, "NO"

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const-string v2, "YES"

    const/4 v3, 0x2

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x8

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0xa

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    const-string v0, "getConnection"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getCrossReference("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT PKTABLE_CATALOG PKTABLE_CAT, PKTABLE_SCHEMA PKTABLE_SCHEM, PKTABLE_NAME PKTABLE_NAME, PKCOLUMN_NAME, FKTABLE_CATALOG FKTABLE_CAT, FKTABLE_SCHEMA FKTABLE_SCHEM, FKTABLE_NAME, FKCOLUMN_NAME, ORDINAL_POSITION KEY_SEQ, UPDATE_RULE, DELETE_RULE, FK_NAME, PK_NAME, DEFERRABILITY FROM INFORMATION_SCHEMA.CROSS_REFERENCES WHERE PKTABLE_CATALOG LIKE ? ESCAPE ? AND PKTABLE_SCHEMA LIKE ? ESCAPE ? AND PKTABLE_NAME = ? AND FKTABLE_CATALOG LIKE ? ESCAPE ? AND FKTABLE_SCHEMA LIKE ? ESCAPE ? AND FKTABLE_NAME = ? ORDER BY FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, FK_NAME, KEY_SEQ"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p5}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x9

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0xa

    invoke-interface {v1, p1, p6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDatabaseMajorVersion()I
    .locals 1

    const-string v0, "getDatabaseMajorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .locals 1

    const-string v0, "getDatabaseMinorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDatabaseProductName"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "H2"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getDatabaseProductVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .locals 1

    const-string v0, "getDefaultTransactionIsolation"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public getDriverMajorVersion()I
    .locals 1

    const-string v0, "getDriverMajorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getDriverMinorVersion()I
    .locals 1

    const-string v0, "getDriverMinorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDriverName"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "H2 JDBC Driver"

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getDriverVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getExportedKeys("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT PKTABLE_CATALOG PKTABLE_CAT, PKTABLE_SCHEMA PKTABLE_SCHEM, PKTABLE_NAME PKTABLE_NAME, PKCOLUMN_NAME, FKTABLE_CATALOG FKTABLE_CAT, FKTABLE_SCHEMA FKTABLE_SCHEM, FKTABLE_NAME, FKCOLUMN_NAME, ORDINAL_POSITION KEY_SEQ, UPDATE_RULE, DELETE_RULE, FK_NAME, PK_NAME, DEFERRABILITY FROM INFORMATION_SCHEMA.CROSS_REFERENCES WHERE PKTABLE_CATALOG LIKE ? ESCAPE ? AND PKTABLE_SCHEMA LIKE ? ESCAPE ? AND PKTABLE_NAME = ? ORDER BY FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, FK_NAME, KEY_SEQ"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .locals 1

    const-string v0, "getExtraNameCharacters"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    const-string p1, "getFunctionColumns"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    .line 2
    const-string p1, "getFunctions"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .locals 1

    const-string v0, "getIdentifierQuoteString"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "\""

    return-object v0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getImportedKeys("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT PKTABLE_CATALOG PKTABLE_CAT, PKTABLE_SCHEMA PKTABLE_SCHEM, PKTABLE_NAME PKTABLE_NAME, PKCOLUMN_NAME, FKTABLE_CATALOG FKTABLE_CAT, FKTABLE_SCHEMA FKTABLE_SCHEM, FKTABLE_NAME, FKCOLUMN_NAME, ORDINAL_POSITION KEY_SEQ, UPDATE_RULE, DELETE_RULE, FK_NAME, PK_NAME, DEFERRABILITY FROM INFORMATION_SCHEMA.CROSS_REFERENCES WHERE FKTABLE_CATALOG LIKE ? ESCAPE ? AND FKTABLE_SCHEMA LIKE ? ESCAPE ? AND FKTABLE_NAME = ? ORDER BY PKTABLE_CAT, PKTABLE_SCHEM, PKTABLE_NAME, FK_NAME, KEY_SEQ"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 6

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, ") AND TABLE_NAME = ? ORDER BY NON_UNIQUE, TYPE, TABLE_SCHEM, INDEX_NAME, ORDINAL_POSITION"

    const-string v3, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, NON_UNIQUE, TABLE_CATALOG INDEX_QUALIFIER, INDEX_NAME, INDEX_TYPE TYPE, ORDINAL_POSITION, COLUMN_NAME, ASC_OR_DESC, CARDINALITY, PAGES, FILTER_CONDITION, SORT_TYPE FROM INFORMATION_SCHEMA.INDEXES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND ("

    const-string v4, "getIndexInfo("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, ");"

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    const-string p4, "NON_UNIQUE=FALSE"

    goto :goto_1

    :cond_1
    const-string p4, "TRUE"

    :goto_1
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p5, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p4

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x1

    invoke-interface {p4, p5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {p4, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p4, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {p4, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {p4, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getJDBCMajorVersion()I
    .locals 1

    const-string v0, "getJDBCMajorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getJDBCMinorVersion()I
    .locals 1

    const-string v0, "getJDBCMinorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .locals 1

    const-string v0, "getMaxBinaryLiteralLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .locals 1

    const-string v0, "getMaxCatalogNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .locals 1

    const-string v0, "getMaxCharLiteralLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnNameLength()I
    .locals 1

    const-string v0, "getMaxColumnNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .locals 1

    const-string v0, "getMaxColumnsInGroupBy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .locals 1

    const-string v0, "getMaxColumnsInIndex"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .locals 1

    const-string v0, "getMaxColumnsInOrderBy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .locals 1

    const-string v0, "getMaxColumnsInSelect"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInTable()I
    .locals 1

    const-string v0, "getMaxColumnsInTable"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    const-string v0, "getMaxConnections"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .locals 1

    const-string v0, "getMaxCursorNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIndexLength()I
    .locals 1

    const-string v0, "getMaxIndexLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .locals 1

    const-string v0, "getMaxProcedureNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .locals 1

    const-string v0, "getMaxRowSize"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .locals 1

    const-string v0, "getMaxSchemaNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .locals 1

    const-string v0, "getMaxStatementLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatements()I
    .locals 1

    const-string v0, "getMaxStatements"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .locals 1

    const-string v0, "getMaxTableNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTablesInSelect()I
    .locals 1

    const-string v0, "getMaxTablesInSelect"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxUserNameLength()I
    .locals 1

    const-string v0, "getMaxUserNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, "getNumericFunctions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (Numeric)"

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getPrimaryKeys("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION KEY_SEQ, IFNULL(CONSTRAINT_NAME, INDEX_NAME) PK_NAME FROM INFORMATION_SCHEMA.INDEXES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME = ? AND PRIMARY_KEY = TRUE ORDER BY COLUMN_NAME"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, ", "

    const-string v1, "\\"

    const-string v2, "getProcedureColumns("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT ALIAS_CATALOG PROCEDURE_CAT, ALIAS_SCHEMA PROCEDURE_SCHEM, ALIAS_NAME PROCEDURE_NAME, COLUMN_NAME, COLUMN_TYPE, DATA_TYPE, TYPE_NAME, PRECISION, PRECISION LENGTH, SCALE, RADIX, NULLABLE, REMARKS, COLUMN_DEFAULT COLUMN_DEF, ZERO() SQL_DATA_TYPE, ZERO() SQL_DATETIME_SUB, ZERO() CHAR_OCTET_LENGTH, POS ORDINAL_POSITION, ? IS_NULLABLE, ALIAS_NAME SPECIFIC_NAME FROM INFORMATION_SCHEMA.FUNCTION_COLUMNS WHERE ALIAS_CATALOG LIKE ? ESCAPE ? AND ALIAS_SCHEMA LIKE ? ESCAPE ? AND ALIAS_NAME LIKE ? ESCAPE ? AND COLUMN_NAME LIKE ? ESCAPE ? ORDER BY PROCEDURE_SCHEM, PROCEDURE_NAME, ORDINAL_POSITION"

    invoke-virtual {v0, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const-string v2, "YES"

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x9

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "getProcedureTerm"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "procedure"

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, ", "

    const-string v1, "\\"

    const-string v2, "getProcedures("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT ALIAS_CATALOG PROCEDURE_CAT, ALIAS_SCHEMA PROCEDURE_SCHEM, ALIAS_NAME PROCEDURE_NAME, COLUMN_COUNT NUM_INPUT_PARAMS, ZERO() NUM_OUTPUT_PARAMS, ZERO() NUM_RESULT_SETS, REMARKS, RETURNS_RESULT PROCEDURE_TYPE, ALIAS_NAME SPECIFIC_NAME FROM INFORMATION_SCHEMA.FUNCTION_ALIASES WHERE ALIAS_CATALOG LIKE ? ESCAPE ? AND ALIAS_SCHEMA LIKE ? ESCAPE ? AND ALIAS_NAME LIKE ? ESCAPE ? ORDER BY PROCEDURE_SCHEM, PROCEDURE_NAME, NUM_INPUT_PARAMS"

    invoke-virtual {v0, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getPseudoColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResultSetHoldability()I
    .locals 1

    const-string v0, "getResultSetHoldability"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public getRowIdLifetime()Ljava/sql/RowIdLifetime;
    .locals 1

    const-string v0, "getRowIdLifetime"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    sget-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    return-object v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .locals 1

    const-string v0, "getSQLKeywords"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "LIMIT,MINUS,ROWNUM,SYSDATE,SYSTIME,SYSTIMESTAMP,TODAY"

    return-object v0
.end method

.method public getSQLStateType()I
    .locals 1

    const-string v0, "getSQLStateType"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "getSchemaTerm"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "schema"

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "getSchemas"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT SCHEMA_NAME TABLE_SCHEM, CATALOG_NAME TABLE_CATALOG,  IS_DEFAULT FROM INFORMATION_SCHEMA.SCHEMATA ORDER BY SCHEMA_NAME"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSchemas(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3

    .line 2
    const-string v0, "\\"

    :try_start_0
    const-string v1, "getSchemas(String,String)"

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT SCHEMA_NAME TABLE_SCHEM, CATALOG_NAME TABLE_CATALOG,  IS_DEFAULT FROM INFORMATION_SCHEMA.SCHEMATA WHERE CATALOG_NAME LIKE ? ESCAPE ? AND SCHEMA_NAME LIKE ? ESCAPE ? ORDER BY SCHEMA_NAME"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .locals 1

    const-string v0, "getSearchStringEscape"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "\\"

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, "getStringFunctions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (String)"

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3

    const-string v0, ", "

    const-string v1, "getSuperTables("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p2, "SELECT CATALOG_NAME TABLE_CAT, CATALOG_NAME TABLE_SCHEM, CATALOG_NAME TABLE_NAME, CATALOG_NAME SUPERTABLE_NAME FROM INFORMATION_SCHEMA.CATALOGS WHERE FALSE"

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    const-string p1, "superTypes"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, "getSystemFunctions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (System)"

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, ", "

    const-string v1, "\\"

    const-string v2, "getTablePrivileges("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, GRANTOR, GRANTEE, PRIVILEGE_TYPE PRIVILEGE, IS_GRANTABLE FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME LIKE ? ESCAPE ? ORDER BY TABLE_SCHEM, TABLE_NAME, PRIVILEGE"

    invoke-virtual {v0, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .locals 2

    :try_start_0
    const-string v0, "getTableTypes"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TYPE TABLE_TYPE FROM INFORMATION_SCHEMA.TABLE_TYPES ORDER BY TABLE_TYPE"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6

    const-string v0, "\\"

    const-string v1, "getTables("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ", "

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    array-length v2, p4

    if-lez v2, :cond_2

    new-instance v2, Lorg/h2/util/StatementBuilder;

    const-string v4, "TABLE_TYPE IN("

    invoke-direct {v2, v4}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_1
    array-length v5, p4

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const/16 v5, 0x3f

    invoke-virtual {v2, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "TRUE"

    :goto_2
    iget-object v3, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, TABLE_TYPE, REMARKS, TYPE_NAME TYPE_CAT, TYPE_NAME TYPE_SCHEM, TYPE_NAME, TYPE_NAME SELF_REFERENCING_COL_NAME, TYPE_NAME REF_GENERATION, SQL FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME LIKE ? ESCAPE ? AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ORDER BY TABLE_TYPE, TABLE_SCHEMA, TABLE_NAME"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v2, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v2, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v2, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {v2, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {v2, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_3
    if-eqz p4, :cond_3

    array-length p1, p4

    if-ge v1, p1, :cond_3

    add-int/lit8 p1, v1, 0x7

    aget-object p2, p4, v1

    invoke-interface {v2, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_4
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, "getTimeDateFunctions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (Time and Date)"

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .locals 2

    :try_start_0
    const-string v0, "getTypeInfo"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TYPE_NAME, DATA_TYPE, PRECISION, PREFIX LITERAL_PREFIX, SUFFIX LITERAL_SUFFIX, PARAMS CREATE_PARAMS, NULLABLE, CASE_SENSITIVE, SEARCHABLE, FALSE UNSIGNED_ATTRIBUTE, FALSE FIXED_PREC_SCALE, AUTO_INCREMENT, TYPE_NAME LOCAL_TYPE_NAME, MINIMUM_SCALE, MAXIMUM_SCALE, DATA_TYPE SQL_DATA_TYPE, ZERO() SQL_DATETIME_SUB, RADIX NUM_PREC_RADIX FROM INFORMATION_SCHEMA.TYPE_INFO ORDER BY DATA_TYPE, POS"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .locals 3

    const-string v0, ", "

    const-string v1, "getUDTs("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p2, "SELECT CAST(NULL AS VARCHAR) TYPE_CAT, CAST(NULL AS VARCHAR) TYPE_SCHEM, CAST(NULL AS VARCHAR) TYPE_NAME, CAST(NULL AS VARCHAR) CLASS_NAME, CAST(NULL AS SMALLINT) DATA_TYPE, CAST(NULL AS VARCHAR) REMARKS, CAST(NULL AS SMALLINT) BASE_TYPE FROM DUAL WHERE FALSE"

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getURL"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getURL()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getUserName"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getUser()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3

    const-string v0, ", "

    const-string v1, "getVersionColumns("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p2, "SELECT ZERO() SCOPE, COLUMN_NAME, CAST(DATA_TYPE AS INT) DATA_TYPE, TYPE_NAME, NUMERIC_PRECISION COLUMN_SIZE, NUMERIC_PRECISION BUFFER_LENGTH, NUMERIC_PRECISION DECIMAL_DIGITS, ZERO() PSEUDO_COLUMN FROM INFORMATION_SCHEMA.COLUMNS WHERE FALSE"

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public insertsAreDetected(I)Z
    .locals 3

    const-string v0, "insertsAreDetected"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public isCatalogAtStart()Z
    .locals 1

    const-string v0, "isCatalogAtStart"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    :try_start_0
    const-string v0, "isReadOnly"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->isReadOnly()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public locatorsUpdateCopy()Z
    .locals 1

    const-string v0, "locatorsUpdateCopy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nullPlusNonNullIsNull()Z
    .locals 1

    const-string v0, "nullPlusNonNullIsNull"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .locals 1

    const-string v0, "nullsAreSortedAtEnd"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .locals 1

    const-string v0, "nullsAreSortedAtStart"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedHigh()Z
    .locals 1

    const-string v0, "nullsAreSortedHigh"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    sget-boolean v0, Lorg/h2/engine/SysProperties;->SORT_NULLS_HIGH:Z

    return v0
.end method

.method public nullsAreSortedLow()Z
    .locals 1

    const-string v0, "nullsAreSortedLow"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    sget-boolean v0, Lorg/h2/engine/SysProperties;->SORT_NULLS_HIGH:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .locals 3

    const-string v0, "othersDeletesAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public othersInsertsAreVisible(I)Z
    .locals 3

    const-string v0, "othersInsertsAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public othersUpdatesAreVisible(I)Z
    .locals 3

    const-string v0, "othersUpdatesAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public ownDeletesAreVisible(I)Z
    .locals 3

    const-string v0, "ownDeletesAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public ownInsertsAreVisible(I)Z
    .locals 3

    const-string v0, "ownInsertsAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public ownUpdatesAreVisible(I)Z
    .locals 3

    const-string v0, "ownUpdatesAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public storesLowerCaseIdentifiers()Z
    .locals 2

    const-string v0, "storesLowerCaseIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .locals 2

    const-string v0, "storesLowerCaseQuotedIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .locals 1

    const-string v0, "storesMixedCaseIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .locals 2

    const-string v0, "storesMixedCaseQuotedIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .locals 2

    const-string v0, "storesUpperCaseIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .locals 2

    const-string v0, "storesUpperCaseQuotedIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .locals 1

    const-string v0, "supportsANSI92EntryLevelSQL"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .locals 1

    const-string v0, "supportsANSI92FullSQL"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .locals 1

    const-string v0, "supportsANSI92IntermediateSQL"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .locals 1

    const-string v0, "supportsAlterTableWithAddColumn"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .locals 1

    const-string v0, "supportsAlterTableWithDropColumn"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsBatchUpdates()Z
    .locals 1

    const-string v0, "supportsBatchUpdates"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .locals 1

    const-string v0, "supportsCatalogsInDataManipulation"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .locals 1

    const-string v0, "supportsCatalogsInIndexDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .locals 1

    const-string v0, "supportsCatalogsInPrivilegeDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .locals 1

    const-string v0, "supportsCatalogsInProcedureCalls"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .locals 1

    const-string v0, "supportsCatalogsInTableDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsColumnAliasing()Z
    .locals 1

    const-string v0, "supportsColumnAliasing"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .locals 1

    .line 1
    const-string v0, "supportsConvert"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert(II)Z
    .locals 2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "supportsConvert("

    const-string v0, ", "

    const-string v1, ");"

    .line 2
    invoke-static {p2, p1, v0, p1, v1}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public supportsCoreSQLGrammar()Z
    .locals 1

    const-string v0, "supportsCoreSQLGrammar"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .locals 1

    const-string v0, "supportsCorrelatedSubqueries"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .locals 1

    const-string v0, "supportsDataDefinitionAndDataManipulationTransactions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .locals 1

    const-string v0, "supportsDataManipulationTransactionsOnly"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .locals 1

    const-string v0, "supportsDifferentTableCorrelationNames"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .locals 1

    const-string v0, "supportsExpressionsInOrderBy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .locals 1

    const-string v0, "supportsExtendedSQLGrammar"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .locals 1

    const-string v0, "supportsFullOuterJoins"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .locals 1

    const-string v0, "supportsGetGeneratedKeys"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupBy()Z
    .locals 1

    const-string v0, "supportsGroupBy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .locals 1

    const-string v0, "supportsGroupByBeyondSelect"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .locals 1

    const-string v0, "supportsGroupByUnrelated"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .locals 1

    const-string v0, "supportsIntegrityEnhancementFacility"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .locals 1

    const-string v0, "supportsLikeEscapeClause"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .locals 1

    const-string v0, "supportsLimitedOuterJoins"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .locals 1

    const-string v0, "supportsMinimumSQLGrammar"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .locals 1

    const-string v0, "supportsMixedCaseIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .locals 2

    const-string v0, "supportsMixedCaseQuotedIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .locals 1

    const-string v0, "supportsMultipleOpenResults"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .locals 1

    const-string v0, "supportsMultipleResultSets"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .locals 1

    const-string v0, "supportsMultipleTransactions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsNamedParameters()Z
    .locals 1

    const-string v0, "supportsNamedParameters"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .locals 1

    const-string v0, "supportsNonNullableColumns"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .locals 1

    const-string v0, "supportsOpenCursorsAcrossCommit"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .locals 1

    const-string v0, "supportsOpenCursorsAcrossRollback"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .locals 1

    const-string v0, "supportsOpenStatementsAcrossCommit"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .locals 1

    const-string v0, "supportsOpenStatementsAcrossRollback"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .locals 1

    const-string v0, "supportsOrderByUnrelated"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOuterJoins()Z
    .locals 1

    const-string v0, "supportsOuterJoins"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedDelete()Z
    .locals 1

    const-string v0, "supportsPositionedDelete"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .locals 1

    const-string v0, "supportsPositionedUpdate"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "supportsResultSetConcurrency("

    .line 8
    .line 9
    const-string v1, ", "

    .line 10
    .line 11
    const-string v2, ");"

    .line 12
    .line 13
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0, p2}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/16 p2, 0x3ed

    .line 21
    .line 22
    if-eq p1, p2, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
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
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
.end method

.method public supportsResultSetHoldability(I)Z
    .locals 3

    const-string v0, "supportsResultSetHoldability"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsResultSetType(I)Z
    .locals 3

    const-string v0, "supportsResultSetType"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsSavepoints()Z
    .locals 1

    const-string v0, "supportsSavepoints"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInDataManipulation()Z
    .locals 1

    const-string v0, "supportsSchemasInDataManipulation"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .locals 1

    const-string v0, "supportsSchemasInIndexDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .locals 1

    const-string v0, "supportsSchemasInPrivilegeDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .locals 1

    const-string v0, "supportsSchemasInProcedureCalls"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .locals 1

    const-string v0, "supportsSchemasInTableDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .locals 1

    const-string v0, "supportsSelectForUpdate"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsStatementPooling()Z
    .locals 1

    const-string v0, "supportsStatementPooling"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredFunctionsUsingCallSyntax()Z
    .locals 1

    const-string v0, "supportsStoredFunctionsUsingCallSyntax"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsStoredProcedures()Z
    .locals 1

    const-string v0, "supportsStoredProcedures"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .locals 1

    const-string v0, "supportsSubqueriesInComparisons"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .locals 1

    const-string v0, "supportsSubqueriesInExists"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .locals 1

    const-string v0, "supportsSubqueriesInIns"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .locals 1

    const-string v0, "supportsSubqueriesInQuantifieds"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .locals 1

    const-string v0, "supportsTableCorrelationNames"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .locals 2

    const-string v0, "supportsTransactionIsolationLevel"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT VALUE FROM INFORMATION_SCHEMA.SETTINGS WHERE NAME=?"

    invoke-virtual {p1, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    const-string v1, "MULTI_THREADED"

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public supportsTransactions()Z
    .locals 1

    const-string v0, "supportsTransactions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnion()Z
    .locals 1

    const-string v0, "supportsUnion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnionAll()Z
    .locals 1

    const-string v0, "supportsUnionAll"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "iface"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updatesAreDetected(I)Z
    .locals 3

    const-string v0, "updatesAreDetected"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public usesLocalFilePerTable()Z
    .locals 1

    const-string v0, "usesLocalFilePerTable"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .locals 1

    const-string v0, "usesLocalFiles"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
