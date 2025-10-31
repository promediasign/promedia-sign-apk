.class public Lsk/mimac/slideshow/http/page/GrabberFormPage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final cloudProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;",
            ">;"
        }
    .end annotation
.end field

.field private grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    invoke-static {}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->createAllProviders()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->cloudProviders:Ljava/util/List;

    new-instance p1, Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-direct {p1}, Lsk/mimac/slideshow/database/entity/GrabberData;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    return-void
.end method

.method private formatRefreshRate()Ljava/lang/String;
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->GRABBER_REFRESH_RATE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0xe10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v3, v1, 0xe10

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v4, v2, 0x3c

    add-int/2addr v4, v3

    sub-int/2addr v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "h "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-gtz v2, :cond_2

    if-lez v0, :cond_3

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCloudProviders()V
    .locals 8

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->cloudProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->isAssociatedWithUser()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Folders"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->listFolders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ContainsUser"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    sget-object v2, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Error occurred during connection with cloud provider"

    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "cloud_grabber_error"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_ROOT_"

    invoke-virtual {p0, v2, v1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processDelete(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/database/dao/AbstractDao;->delete(J)V

    const-string p1, "entry_deleted"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t delete grabber data from DB"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "database_error"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_ROOT_"

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processDownload(Ljava/lang/String;)V
    .locals 3

    const-string v0, "_ROOT_"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/downloader/FileGrabber;->runOne(Ljava/lang/Long;)Lsk/mimac/slideshow/downloader/DownloadStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFilesFailed()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFullString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/downloader/DownloadStatistics;->getFullString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<br>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "file_download_unsuccessful"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t ger grabber data from DB"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "database_error"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private processEdit(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getById(J)Lsk/mimac/slideshow/database/entity/GrabberData;

    move-result-object v1

    iput-object v1, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webdav://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ":"

    const-string v6, "url"

    if-eqz v1, :cond_0

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v7, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v16, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v12

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v15}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    aget-object v2, v1, v2

    const-string v5, "username1"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v3, "password1"

    aget-object v1, v1, v4

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v7, "sftp://"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v7, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v9

    if-lez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    const-string v9, ""

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "server_folder"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    aget-object v2, v1, v2

    const-string v5, "username2"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    aget-object v1, v1, v4

    invoke-static {v1}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPasswordWithHashBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "password2"

    :goto_1
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder2"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder3"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder4"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iget-object v2, v0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/GrabberData;->isClearFolder()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clearFolder5"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private processFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "fileName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "gdrive://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "dropbox://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "webdav"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v3, "sftp"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->ALLOW_UNSUPPORTED_FILE_TYPES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "unsupported_extension"

    :goto_0
    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "file_name_empty"

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private processGet()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "update"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processEdit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private processPost()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "_ROOT_"

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v4, "delete"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processDelete(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v4, "download"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processDownload(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->cloudProviders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;

    invoke-virtual {v6}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->getName()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    iget-object v9, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_logout"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "Show"

    if-eqz v9, :cond_5

    :try_start_1
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->logoutUser()V

    const-string v3, "cloud_grabber_logout_success"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v8, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_login"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v6}, Lsk/mimac/slideshow/downloader/AbstractCloudGrabber;->loginUser()V

    const-string v3, "cloud_grabber_login_success"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v8, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;
    :try_end_2
    .catch Lsk/mimac/slideshow/exception/BrowserNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    sget-object v4, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Browser not found in Android during cloud grabber login"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "browser_not_found"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    return-void

    :goto_3
    sget-object v4, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Error occurred during connection with cloud provider"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "cloud_grabber_error"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->hasAnyErrors()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "webdav"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "webdavShow"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "sftp"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "sftpShow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getById(J)Lsk/mimac/slideshow/database/entity/GrabberData;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    :cond_9
    return-void

    :cond_a
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder2"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder3"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder4"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "clearFolder5"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    new-instance v1, Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3, v0}, Lsk/mimac/slideshow/database/entity/GrabberData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v0

    if-eqz v4, :cond_d

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/GrabberDao;->update(Lsk/mimac/slideshow/database/entity/GrabberData;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/GrabberDao;->create(Lsk/mimac/slideshow/database/entity/GrabberData;)V

    :goto_4
    const-string v0, "entry_added"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private processSftp(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "username2"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 12
    .line 13
    const-string v3, "password2"

    .line 14
    .line 15
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 22
    .line 23
    const-string v5, "server_folder"

    .line 24
    .line 25
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    :cond_0
    const-string v6, "username_empty"

    .line 40
    .line 41
    invoke-static {v6}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p0, v1, v6}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    :cond_2
    const-string v1, "password_empty"

    .line 57
    .line 58
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v3, v1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    :cond_4
    const-string v1, "server_folder_empty"

    .line 74
    .line 75
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p0, v5, v1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->hasAnyErrors()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "sftp://"

    .line 92
    .line 93
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v1, Ljava/net/URI;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const-string v3, ":"

    .line 114
    .line 115
    invoke-static {v0, v3}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v2}, Lsk/mimac/slideshow/utils/CryptUtils;->encryptPasswordWithHashBase64(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    const-string p1, "/"

    .line 139
    .line 140
    invoke-static {p1, v4}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    const/4 v11, 0x0

    .line 145
    const/4 v12, 0x0

    .line 146
    move-object v5, v1

    .line 147
    invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1
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
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
.end method

.method private processUrl()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "dropbox://"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v3, "url2"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v4, "/"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v4, "webdav"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "url_invalid"

    if-eqz v3, :cond_5

    invoke-static {v0}, Lsk/mimac/slideshow/utils/UrlUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processWebDav(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    :goto_1
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v1, v2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v6, "sftp"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processSftp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    const-string v3, "gdrive://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0}, Lsk/mimac/slideshow/utils/UrlUtils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    :goto_3
    const-string v2, "url_empty"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    :goto_4
    return-object v0
.end method

.method private processWebDav(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "username1"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 12
    .line 13
    const-string v2, "password1"

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    :cond_0
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    :cond_1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v10, Ljava/net/URI;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v2, ":"

    .line 48
    .line 49
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    move-object v2, v10

    .line 68
    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_2
    const-string v0, "webdav://"

    .line 76
    .line 77
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1
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
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/grabber_form"

    return-object v0
.end method

.method public process()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processPost()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->processGet()V

    :goto_0
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->initCloudProviders()V

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "grabberRefreshRate"

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/GrabberFormPage;->formatRefreshRate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "grabberData"

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/GrabberFormPage;->grabberData:Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "grabberDatas"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "grabberStatistics"

    invoke-static {}, Lsk/mimac/slideshow/downloader/FileGrabber;->getLastStatistics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "allFolders"

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-static {v2}, Lsk/mimac/slideshow/utils/FileUtils2;->listDirectoriesNested(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/http/page/GrabberFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t show grabber page"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
