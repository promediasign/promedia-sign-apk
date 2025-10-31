.class public abstract Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;
.super Lch/qos/logback/core/joran/GenericConfigurator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/joran/GenericConfigurator;"
    }
.end annotation


# static fields
.field static final ONE_AND_ONLY_ONE_URL:Ljava/lang/String; = "http://logback.qos.ch/codes.html#1andOnly1"


# instance fields
.field errorEmmissionCount:I

.field protected final key:Ljava/lang/String;

.field protected final parentPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lch/qos/logback/core/joran/GenericConfigurator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    iput-object p1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->key:Ljava/lang/String;

    iput-object p2, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->value:Ljava/lang/String;

    iput-object p3, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->parentPropertyMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addImplicitRules(Lch/qos/logback/core/joran/spi/Interpreter;)V
    .locals 2

    new-instance v0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;

    invoke-direct {v0}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->addImplicitAction(Lch/qos/logback/core/joran/action/ImplicitAction;)V

    new-instance v0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;

    invoke-direct {v0}, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->addImplicitAction(Lch/qos/logback/core/joran/action/ImplicitAction;)V

    return-void
.end method

.method public addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V
    .locals 2

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/property"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/PropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/PropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/timestamp"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/TimestampAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/TimestampAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/define"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/DefinePropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    return-void
.end method

.method public doConfigure(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/util/List;)V

    return-void
.end method

.method public abstract getAppender()Lch/qos/logback/core/Appender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Appender<",
            "TE;>;"
        }
    .end annotation
.end method

.method public oneAndOnlyOneCheck(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget p1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    const-string p1, "No nested appenders found within the <sift> element in SiftingAppender."

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    iget p1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    const-string p1, "Only and only one appender can be nested the <sift> element in SiftingAppender. See also http://logback.qos.ch/codes.html#1andOnly1"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget v0, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "{"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->key:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->value:Ljava/lang/String;

    .line 33
    .line 34
    const/16 v2, 0x7d

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
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
