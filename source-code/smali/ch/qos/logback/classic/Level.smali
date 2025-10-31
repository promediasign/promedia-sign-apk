.class public final Lch/qos/logback/classic/Level;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Lch/qos/logback/classic/Level;

.field public static final ALL_INT:I = -0x80000000

.field public static final ALL_INTEGER:Ljava/lang/Integer;

.field public static final DEBUG:Lch/qos/logback/classic/Level;

.field public static final DEBUG_INT:I = 0x2710

.field public static final DEBUG_INTEGER:Ljava/lang/Integer;

.field public static final ERROR:Lch/qos/logback/classic/Level;

.field public static final ERROR_INT:I = 0x9c40

.field public static final ERROR_INTEGER:Ljava/lang/Integer;

.field public static final INFO:Lch/qos/logback/classic/Level;

.field public static final INFO_INT:I = 0x4e20

.field public static final INFO_INTEGER:Ljava/lang/Integer;

.field public static final OFF:Lch/qos/logback/classic/Level;

.field public static final OFF_INT:I = 0x7fffffff

.field public static final OFF_INTEGER:Ljava/lang/Integer;

.field public static final TRACE:Lch/qos/logback/classic/Level;

.field public static final TRACE_INT:I = 0x1388

.field public static final TRACE_INTEGER:Ljava/lang/Integer;

.field public static final WARN:Lch/qos/logback/classic/Level;

.field public static final WARN_INT:I = 0x7530

.field public static final WARN_INTEGER:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0xb4c3d0f032cb399L


# instance fields
.field public final levelInt:I

.field public final levelStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lch/qos/logback/classic/Level;->OFF_INTEGER:Ljava/lang/Integer;

    const v1, 0x9c40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lch/qos/logback/classic/Level;->ERROR_INTEGER:Ljava/lang/Integer;

    const/16 v2, 0x7530

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lch/qos/logback/classic/Level;->WARN_INTEGER:Ljava/lang/Integer;

    const/16 v3, 0x4e20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lch/qos/logback/classic/Level;->INFO_INTEGER:Ljava/lang/Integer;

    const/16 v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lch/qos/logback/classic/Level;->DEBUG_INTEGER:Ljava/lang/Integer;

    const/16 v5, 0x1388

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lch/qos/logback/classic/Level;->TRACE_INTEGER:Ljava/lang/Integer;

    const/high16 v6, -0x80000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lch/qos/logback/classic/Level;->ALL_INTEGER:Ljava/lang/Integer;

    new-instance v7, Lch/qos/logback/classic/Level;

    const-string v8, "OFF"

    invoke-direct {v7, v0, v8}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v7, Lch/qos/logback/classic/Level;->OFF:Lch/qos/logback/classic/Level;

    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v7, "ERROR"

    invoke-direct {v0, v1, v7}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "WARN"

    invoke-direct {v0, v2, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "INFO"

    invoke-direct {v0, v3, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "DEBUG"

    invoke-direct {v0, v4, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "TRACE"

    invoke-direct {v0, v5, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "ALL"

    invoke-direct {v0, v6, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->ALL:Lch/qos/logback/classic/Level;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lch/qos/logback/classic/Level;->levelInt:I

    iput-object p2, p0, Lch/qos/logback/classic/Level;->levelStr:Ljava/lang/String;

    return-void
.end method

.method public static fromLocationAwareLoggerInteger(I)Lch/qos/logback/classic/Level;
    .locals 2

    if-eqz p0, :cond_4

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    sget-object p0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not a valid level value"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    goto :goto_0

    :cond_2
    sget-object p0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    goto :goto_0

    :cond_3
    sget-object p0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    goto :goto_0

    :cond_4
    sget-object p0, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    :goto_0
    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lch/qos/logback/classic/Level;->levelInt:I

    invoke-static {v0}, Lch/qos/logback/classic/Level;->toLevel(I)Lch/qos/logback/classic/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(I)Lch/qos/logback/classic/Level;
    .locals 1

    .line 1
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-static {p0, v0}, Lch/qos/logback/classic/Level;->toLevel(ILch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;

    move-result-object p0

    return-object p0
.end method

.method public static toLevel(ILch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;
    .locals 1

    .line 2
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_6

    const/16 v0, 0x1388

    if-eq p0, v0, :cond_5

    const/16 v0, 0x2710

    if-eq p0, v0, :cond_4

    const/16 v0, 0x4e20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x7530

    if-eq p0, v0, :cond_2

    const v0, 0x9c40

    if-eq p0, v0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lch/qos/logback/classic/Level;->OFF:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_1
    sget-object p0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_2
    sget-object p0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_3
    sget-object p0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_4
    sget-object p0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_5
    sget-object p0, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_6
    sget-object p0, Lch/qos/logback/classic/Level;->ALL:Lch/qos/logback/classic/Level;

    return-object p0
.end method

.method public static toLevel(Ljava/lang/String;)Lch/qos/logback/classic/Level;
    .locals 1

    .line 3
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-static {p0, v0}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;Lch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;

    move-result-object p0

    return-object p0
.end method

.method public static toLevel(Ljava/lang/String;Lch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;
    .locals 1

    .line 4
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ALL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lch/qos/logback/classic/Level;->ALL:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_1
    const-string v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_2
    const-string v0, "DEBUG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_3
    const-string v0, "INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_4
    const-string v0, "WARN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_5
    const-string v0, "ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_6
    const-string v0, "OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lch/qos/logback/classic/Level;->OFF:Lch/qos/logback/classic/Level;

    return-object p0

    :cond_7
    return-object p1
.end method

.method public static toLocationAwareLoggerInteger(Lch/qos/logback/classic/Level;)I
    .locals 2

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lch/qos/logback/classic/Level;->toInt()I

    move-result v0

    const/16 v1, 0x1388

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7530

    if-eq v0, v1, :cond_1

    const v1, 0x9c40

    if-ne v0, v1, :cond_0

    const/16 p0, 0x28

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not a valid level value"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x1e

    return p0

    :cond_2
    const/16 p0, 0x14

    return p0

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null level parameter is not admitted"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/classic/Level;
    .locals 1

    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-static {p0, v0}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;Lch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isGreaterOrEqual(Lch/qos/logback/classic/Level;)Z
    .locals 1

    iget v0, p0, Lch/qos/logback/classic/Level;->levelInt:I

    iget p1, p1, Lch/qos/logback/classic/Level;->levelInt:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toInt()I
    .locals 1

    iget v0, p0, Lch/qos/logback/classic/Level;->levelInt:I

    return v0
.end method

.method public toInteger()Ljava/lang/Integer;
    .locals 4

    .line 1
    iget v0, p0, Lch/qos/logback/classic/Level;->levelInt:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_6

    .line 6
    .line 7
    const/16 v1, 0x1388

    .line 8
    .line 9
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    const/16 v1, 0x2710

    .line 12
    .line 13
    if-eq v0, v1, :cond_4

    .line 14
    .line 15
    const/16 v1, 0x4e20

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0x7530

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const v1, 0x9c40

    .line 24
    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const v1, 0x7fffffff

    .line 29
    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    sget-object v0, Lch/qos/logback/classic/Level;->OFF_INTEGER:Ljava/lang/Integer;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Level "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lch/qos/logback/classic/Level;->levelStr:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ", "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v2, p0, Lch/qos/logback/classic/Level;->levelInt:I

    .line 56
    .line 57
    const-string v3, " is unknown."

    .line 58
    .line 59
    invoke-static {v3, v2, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_1
    sget-object v0, Lch/qos/logback/classic/Level;->ERROR_INTEGER:Ljava/lang/Integer;

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_2
    sget-object v0, Lch/qos/logback/classic/Level;->WARN_INTEGER:Ljava/lang/Integer;

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    sget-object v0, Lch/qos/logback/classic/Level;->INFO_INTEGER:Ljava/lang/Integer;

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG_INTEGER:Ljava/lang/Integer;

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_5
    sget-object v0, Lch/qos/logback/classic/Level;->TRACE_INTEGER:Ljava/lang/Integer;

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_6
    sget-object v0, Lch/qos/logback/classic/Level;->ALL_INTEGER:Ljava/lang/Integer;

    .line 83
    .line 84
    return-object v0
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

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/Level;->levelStr:Ljava/lang/String;

    return-object v0
.end method
