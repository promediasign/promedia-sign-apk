.class public Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DETECTED_CHANGE_IN_CONFIGURATION_FILES:Ljava/lang/String; = "Detected change in configuration files."

.field static final FALLING_BACK_TO_SAFE_CONFIGURATION:Ljava/lang/String; = "Given previous errors, falling back to previously registered safe configuration."

.field static final RE_REGISTERING_PREVIOUS_SAFE_CONFIGURATION:Ljava/lang/String; = "Re-registering previous fallback configuration once more as a fallback configuration point"


# instance fields
.field birthdate:J

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->birthdate:J

    return-void
.end method

.method private fallbackConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/util/List;Ljava/net/URL;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/classic/LoggerContext;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    const-string p3, "after registerSafeConfiguration: "

    invoke-direct {p0, p2}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->removeIncludeEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    invoke-virtual {v1, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-static {p1}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v2

    invoke-virtual {v2}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->buildClone()Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "Given previous errors, falling back to previously registered safe configuration."

    invoke-virtual {p0, v3}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->reset()V

    new-instance v3, Lch/qos/logback/core/android/AndroidContextUtil;

    invoke-direct {v3}, Lch/qos/logback/core/android/AndroidContextUtil;-><init>()V

    invoke-virtual {v3, p1}, Lch/qos/logback/core/android/AndroidContextUtil;->setupProperties(Lch/qos/logback/classic/LoggerContext;)V

    invoke-static {p1, v2}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->registerConfigurationWatchList(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/ConfigurationWatchList;)V

    invoke-virtual {v1, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/util/List;)V

    const-string p1, "Re-registering previous fallback configuration once more as a fallback configuration point"

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lch/qos/logback/core/joran/GenericConfigurator;->registerSafeConfiguration(Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Unexpected exception thrown by a configuration considered safe."

    invoke-virtual {p0, p2, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "No previous configuration to fall back on."

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private fireChangeDetected()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;

    invoke-virtual {v1}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;->changeDetected()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fireDoneReconfiguring()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;

    invoke-virtual {v1}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;->doneReconfiguring()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fireEnteredRunMethod()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;

    invoke-virtual {v1}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;->enteredRunMethod()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private performXMLConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/net/URL;)V
    .locals 6

    new-instance v0, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v0}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    invoke-direct {v1, p1}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    invoke-virtual {v0}, Lch/qos/logback/core/joran/GenericConfigurator;->recallSafeConfiguration()Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getMainWatchURL(Lch/qos/logback/core/Context;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->reset()V

    new-instance v4, Lch/qos/logback/core/android/AndroidContextUtil;

    invoke-direct {v4}, Lch/qos/logback/core/android/AndroidContextUtil;-><init>()V

    invoke-virtual {v4, p1}, Lch/qos/logback/core/android/AndroidContextUtil;->setupProperties(Lch/qos/logback/classic/LoggerContext;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {v0, p2}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/net/URL;)V

    invoke-virtual {v1, v4, v5}, Lch/qos/logback/core/status/StatusUtil;->hasXMLParsingErrors(J)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v2, v3}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fallbackConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/util/List;Ljava/net/URL;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0, p1, v2, v3}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fallbackConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/util/List;Ljava/net/URL;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private removeIncludeEvents(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/event/SaxEvent;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/event/SaxEvent;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "include"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addListener(Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;)V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 4

    invoke-direct {p0}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fireEnteredRunMethod()V

    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-static {v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Empty ConfigurationWatchList in context"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->getCopyOfFileWatchList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->changeDetected()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fireChangeDetected()V

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->getMainURL()Ljava/net/URL;

    move-result-object v0

    const-string v1, "Detected change in configuration files."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Will reset and reconfigure context named ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-interface {v2}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    check-cast v1, Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v0}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->performXMLConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/net/URL;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groovy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Groovy classes are not available on the class path. ABORTING INITIALIZATION."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fireDoneReconfiguring()V

    return-void

    :cond_5
    :goto_1
    const-string v0, "Empty watch file list. Disabling "

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ReconfigureOnChangeTask(born:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->birthdate:J

    .line 9
    .line 10
    const-string v3, ")"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
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
.end method
