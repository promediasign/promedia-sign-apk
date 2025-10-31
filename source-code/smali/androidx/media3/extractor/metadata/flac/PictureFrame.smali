.class public final Landroidx/media3/extractor/metadata/flac/PictureFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final colors:I

.field public final depth:I

.field public final description:Ljava/lang/String;

.field public final height:I

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/extractor/metadata/flac/PictureFrame$1;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/flac/PictureFrame$1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    iput-object p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    iput p4, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    iput p5, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    iput p6, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    iput p7, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    iput-object p8, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    return-void
.end method

.method public static fromPictureBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    sget-object v2, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    new-array v8, v0, [B

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    new-instance p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/metadata/flac/PictureFrame;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/extractor/metadata/flac/PictureFrame;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    iget v3, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    iget-object p1, p1, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final synthetic getStability()I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/os/Parcelable$-CC;->$default$getStability(Landroid/os/Parcelable;)I

    move-result v0

    return v0
.end method

.method public final synthetic getWrappedMetadataBytes()[B
    .locals 1

    .line 1
    invoke-static {p0}, Lq/a;->a(Landroidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getWrappedMetadataFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 1
    invoke-static {p0}, Lq/a;->b(Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    const/16 v1, 0x1f

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    .line 23
    .line 24
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    .line 28
    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget v2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    .line 43
    .line 44
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v0

    .line 49
    return v1
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

.method public populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    iget v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->maybeSetArtworkData([BI)Landroidx/media3/common/MediaMetadata$Builder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Picture: mimeType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->depth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->colors:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;->pictureData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
