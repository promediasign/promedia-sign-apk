.class final Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;
.super Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaOutputBuffer"
.end annotation


# instance fields
.field private owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/DecoderOutputBuffer$Owner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    check-cast v0, Landroidx/media3/extractor/text/cea/b;

    invoke-virtual {v0, p0}, Landroidx/media3/extractor/text/cea/b;->a(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method
