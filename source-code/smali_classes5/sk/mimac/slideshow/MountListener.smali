.class public Lsk/mimac/slideshow/MountListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/MountListener$CopyAction;
    }
.end annotation


# static fields
.field public static INSTANCE:Lsk/mimac/slideshow/MountListener;

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private volatile mounted:Z

.field private mountedFolder:Ljava/io/File;

.field private storageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/StorageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/MountListener;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/MountListener;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/MountListener;Lsk/mimac/slideshow/enums/UsbMountAction;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/MountListener;->lambda$checkStorageList$0(Lsk/mimac/slideshow/enums/UsbMountAction;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/MountListener;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$200()V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/MountListener;->showNoFileToast()V

    return-void
.end method

.method public static synthetic access$300(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lsk/mimac/slideshow/MountListener;->fireTrigger(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/MountListener;->lambda$showNoFileToast$1()V

    return-void
.end method

.method private findMountedFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 10

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->USB_COPY_FOLDER:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    new-array p1, v5, [Ljava/lang/String;

    aput-object v0, p1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v4

    const-string p1, "/mnt/usb_storage/USB_DISK0/udisk0"

    aput-object p1, v0, v5

    const/4 p1, 0x2

    const-string v2, "/mnt/usbhost1"

    aput-object v2, v0, p1

    const/4 p1, 0x3

    const-string v2, "/mnt/sda/sda1"

    aput-object v2, v0, p1

    move-object p1, v0

    :goto_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_7

    aget-object v6, p1, v2

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lsk/mimac/slideshow/MountListener;->LOG:Lorg/slf4j/Logger;

    const-string v8, "Possible match for mount point: {}"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v3, "Incorrect match, target folder doesn\'t exist: {}"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p1, p1

    if-ge p1, v5, :cond_4

    const-string p1, "Incorrect match, empty directory: {}"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/MountListener;->showNoFileToast()V

    return-object v3

    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "external"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Incorrect match, possibly SD card: {}"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_5
    const-string p1, "Directory on USB flash drive found: {}"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v8

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "usb_storage_not_found"

    goto :goto_3

    :cond_8
    const-string p1, "usb_storage_not_found_folder"

    :goto_3
    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-object v3
.end method

.method private static fireTrigger(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    sget-object p0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->EXTERNAL_STORAGE_INSERTED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "numFolders"

    const-string v3, "numFiles"

    invoke-static {v2, v0, v3, v1}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    return-void
.end method

.method public static getMountedFolder()Ljava/io/File;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/MountListener;->INSTANCE:Lsk/mimac/slideshow/MountListener;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lsk/mimac/slideshow/MountListener;->mountedFolder:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMountedFolderFiles()I
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/MountListener;->INSTANCE:Lsk/mimac/slideshow/MountListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lsk/mimac/slideshow/MountListener;->mountedFolder:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/commons/io/filefilter/FileFileFilter;->FILE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isMounted()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/MountListener;->INSTANCE:Lsk/mimac/slideshow/MountListener;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lsk/mimac/slideshow/MountListener;->mounted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$checkStorageList$0(Lsk/mimac/slideshow/enums/UsbMountAction;Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "path://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsk/mimac/slideshow/utils/StorageInfo;

    invoke-virtual {p2}, Lsk/mimac/slideshow/utils/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsk/mimac/slideshow/MountListener;->mediaMounted(Lsk/mimac/slideshow/enums/UsbMountAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showNoFileToast$1()V
    .locals 3

    .line 1
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "usb_storage_empty"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
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
.end method

.method private mediaMounted(Lsk/mimac/slideshow/enums/UsbMountAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    sget-object p1, Lsk/mimac/slideshow/MountListener;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Received null path in intent"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x7

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/MountListener;->LOG:Lorg/slf4j/Logger;

    iget-boolean v4, p0, Lsk/mimac/slideshow/MountListener;->mounted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v1

    aput-object p2, v5, v0

    const/4 p2, 0x2

    aput-object v4, v5, p2

    const-string p2, "USB media inserted: {} based on action={}, previously mounted={}"

    invoke-interface {v3, p2, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p2, p0, Lsk/mimac/slideshow/MountListener;->mounted:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lsk/mimac/slideshow/MountListener;->findMountedFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "No USB flash drive found"

    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_2
    iput-boolean v0, p0, Lsk/mimac/slideshow/MountListener;->mounted:Z

    iput-object p2, p0, Lsk/mimac/slideshow/MountListener;->mountedFolder:Ljava/io/File;

    sget-object p3, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v0, "usb_storage_loading"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p3

    sget-object v0, Lsk/mimac/slideshow/enums/UsbMountAction;->COPY:Lsk/mimac/slideshow/enums/UsbMountAction;

    if-eq p1, v0, :cond_5

    sget-object v0, Lsk/mimac/slideshow/enums/UsbMountAction;->DELETE_COPY:Lsk/mimac/slideshow/enums/UsbMountAction;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lsk/mimac/slideshow/enums/UsbMountAction;->PLAY:Lsk/mimac/slideshow/enums/UsbMountAction;

    if-ne p1, v0, :cond_4

    new-instance p1, Lsk/mimac/slideshow/database/entity/Item;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->ALPHABETICALLY:Lsk/mimac/slideshow/enums/ItemType;

    const-string v2, "From USB"

    const-string v3, "*"

    invoke-direct {p1, v0, v3, v1, v2}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/database/entity/Item;->setContentPath(Ljava/lang/String;)V

    invoke-virtual {p3}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p3

    new-instance v0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;

    sget-object v1, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    const/16 v2, 0xb

    invoke-direct {v0, p1, v1, v2}, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Item;Lsk/mimac/slideshow/enums/MusicType;I)V

    invoke-virtual {p3, v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Lsk/mimac/slideshow/playlist/PlaylistWrapper;)V

    :cond_4
    invoke-static {p2}, Lsk/mimac/slideshow/MountListener;->fireTrigger(Ljava/io/File;)V

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v0, Lsk/mimac/slideshow/MountListener$CopyAction;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p3, v1}, Lsk/mimac/slideshow/MountListener$CopyAction;-><init>(Ljava/io/File;Lsk/mimac/slideshow/enums/UsbMountAction;Lsk/mimac/slideshow/gui/DisplayItemThread;Lsk/mimac/slideshow/MountListener$1;)V

    invoke-virtual {p3, v0}, Lsk/mimac/slideshow/gui/ItemThread;->addToRun(Lsk/mimac/slideshow/utils/InterruptableRunnable;)V

    :goto_1
    return-void
.end method

.method private mediaUnmounted()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/MountListener;->LOG:Lorg/slf4j/Logger;

    iget-boolean v1, p0, Lsk/mimac/slideshow/MountListener;->mounted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "USB media removed (previously mounted={})"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lsk/mimac/slideshow/MountListener;->mounted:Z

    if-eqz v0, :cond_1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->USB_MOUNT_ACTION:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/enums/UsbMountAction;->PLAY:Lsk/mimac/slideshow/enums/UsbMountAction;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->clearSetPlaylist()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/MountListener;->mounted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/MountListener;->mountedFolder:Ljava/io/File;

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->EXTERNAL_STORAGE_REMOVED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static registerMountListener(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {p0}, Lsk/mimac/slideshow/MountListener;->unregisterMountListener(Landroid/content/Context;)V

    new-instance v1, Lsk/mimac/slideshow/MountListener;

    invoke-direct {v1}, Lsk/mimac/slideshow/MountListener;-><init>()V

    sput-object v1, Lsk/mimac/slideshow/MountListener;->INSTANCE:Lsk/mimac/slideshow/MountListener;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static showNoFileToast()V
    .locals 2

    new-instance v0, Le1/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Le1/c;-><init>(I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unregisterMountListener(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/MountListener;->INSTANCE:Lsk/mimac/slideshow/MountListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lsk/mimac/slideshow/MountListener;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Error while unregistering receiver: {}"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    sput-object p0, Lsk/mimac/slideshow/MountListener;->INSTANCE:Lsk/mimac/slideshow/MountListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkStorageList()V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->USB_MOUNT_ACTION:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/enums/UsbMountAction;

    sget-object v1, Lsk/mimac/slideshow/enums/UsbMountAction;->DO_NOTHING:Lsk/mimac/slideshow/enums/UsbMountAction;

    if-ne v0, v1, :cond_0

    iget-boolean v2, p0, Lsk/mimac/slideshow/MountListener;->mounted:Z

    if-nez v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/MountListener;->storageList:Ljava/util/List;

    return-void

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->getStorageList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/MountListener;->storageList:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lsk/mimac/slideshow/MountListener;->storageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lsk/mimac/slideshow/MountListener;->storageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, LD/f;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v0, v2, v3}, LD/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/MountListener;->storageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Lsk/mimac/slideshow/MountListener;->mediaUnmounted()V

    :cond_2
    :goto_0
    iput-object v2, p0, Lsk/mimac/slideshow/MountListener;->storageList:Ljava/util/List;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->USB_MOUNT_ACTION:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/enums/UsbMountAction;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lsk/mimac/slideshow/enums/UsbMountAction;->DO_NOTHING:Lsk/mimac/slideshow/enums/UsbMountAction;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lsk/mimac/slideshow/MountListener;->mediaMounted(Lsk/mimac/slideshow/enums/UsbMountAction;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lsk/mimac/slideshow/MountListener;->mediaUnmounted()V

    :cond_2
    :goto_0
    return-void
.end method
