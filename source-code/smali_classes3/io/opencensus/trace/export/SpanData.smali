.class public abstract Lio/opencensus/trace/export/SpanData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/export/SpanData$Links;,
        Lio/opencensus/trace/export/SpanData$Attributes;,
        Lio/opencensus/trace/export/SpanData$TimedEvents;,
        Lio/opencensus/trace/export/SpanData$TimedEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/opencensus/trace/SpanContext;Lio/opencensus/trace/SpanId;Ljava/lang/Boolean;Ljava/lang/String;Lio/opencensus/common/Timestamp;Lio/opencensus/trace/export/SpanData$Attributes;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$Links;Ljava/lang/Integer;Lio/opencensus/trace/Status;Lio/opencensus/common/Timestamp;)Lio/opencensus/trace/export/SpanData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/SpanContext;",
            "Lio/opencensus/trace/SpanId;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lio/opencensus/common/Timestamp;",
            "Lio/opencensus/trace/export/SpanData$Attributes;",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/Annotation;",
            ">;",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "+",
            "Lio/opencensus/trace/BaseMessageEvent;",
            ">;",
            "Lio/opencensus/trace/export/SpanData$Links;",
            "Ljava/lang/Integer;",
            "Lio/opencensus/trace/Status;",
            "Lio/opencensus/common/Timestamp;",
            ")",
            "Lio/opencensus/trace/export/SpanData;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-static/range {v0 .. v12}, Lio/opencensus/trace/export/SpanData;->create(Lio/opencensus/trace/SpanContext;Lio/opencensus/trace/SpanId;Ljava/lang/Boolean;Ljava/lang/String;Lio/opencensus/trace/Span$Kind;Lio/opencensus/common/Timestamp;Lio/opencensus/trace/export/SpanData$Attributes;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$Links;Ljava/lang/Integer;Lio/opencensus/trace/Status;Lio/opencensus/common/Timestamp;)Lio/opencensus/trace/export/SpanData;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/opencensus/trace/SpanContext;Lio/opencensus/trace/SpanId;Ljava/lang/Boolean;Ljava/lang/String;Lio/opencensus/trace/Span$Kind;Lio/opencensus/common/Timestamp;Lio/opencensus/trace/export/SpanData$Attributes;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$Links;Ljava/lang/Integer;Lio/opencensus/trace/Status;Lio/opencensus/common/Timestamp;)Lio/opencensus/trace/export/SpanData;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/SpanContext;",
            "Lio/opencensus/trace/SpanId;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/Span$Kind;",
            "Lio/opencensus/common/Timestamp;",
            "Lio/opencensus/trace/export/SpanData$Attributes;",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/Annotation;",
            ">;",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "+",
            "Lio/opencensus/trace/BaseMessageEvent;",
            ">;",
            "Lio/opencensus/trace/export/SpanData$Links;",
            "Ljava/lang/Integer;",
            "Lio/opencensus/trace/Status;",
            "Lio/opencensus/common/Timestamp;",
            ")",
            "Lio/opencensus/trace/export/SpanData;"
        }
    .end annotation

    .line 2
    const-string v0, "messageOrNetworkEvents"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p8 .. p8}, Lio/opencensus/trace/export/SpanData$TimedEvents;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/opencensus/trace/export/SpanData$TimedEvent;

    invoke-virtual {v3}, Lio/opencensus/trace/export/SpanData$TimedEvent;->getEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/opencensus/trace/BaseMessageEvent;

    instance-of v5, v4, Lio/opencensus/trace/MessageEvent;

    if-eqz v5, :cond_0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lio/opencensus/trace/export/SpanData$TimedEvent;->getTimestamp()Lio/opencensus/common/Timestamp;

    move-result-object v3

    invoke-static {v4}, Lio/opencensus/trace/internal/BaseMessageEventUtils;->asMessageEvent(Lio/opencensus/trace/BaseMessageEvent;)Lio/opencensus/trace/MessageEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lio/opencensus/trace/export/SpanData$TimedEvent;->create(Lio/opencensus/common/Timestamp;Ljava/lang/Object;)Lio/opencensus/trace/export/SpanData$TimedEvent;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p8 .. p8}, Lio/opencensus/trace/export/SpanData$TimedEvents;->getDroppedEventsCount()I

    move-result v1

    invoke-static {v0, v1}, Lio/opencensus/trace/export/SpanData$TimedEvents;->create(Ljava/util/List;I)Lio/opencensus/trace/export/SpanData$TimedEvents;

    move-result-object v11

    new-instance v0, Lio/opencensus/trace/export/AutoValue_SpanData;

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v2 .. v15}, Lio/opencensus/trace/export/AutoValue_SpanData;-><init>(Lio/opencensus/trace/SpanContext;Lio/opencensus/trace/SpanId;Ljava/lang/Boolean;Ljava/lang/String;Lio/opencensus/trace/Span$Kind;Lio/opencensus/common/Timestamp;Lio/opencensus/trace/export/SpanData$Attributes;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$TimedEvents;Lio/opencensus/trace/export/SpanData$Links;Ljava/lang/Integer;Lio/opencensus/trace/Status;Lio/opencensus/common/Timestamp;)V

    return-object v0
.end method


# virtual methods
.method public abstract getAnnotations()Lio/opencensus/trace/export/SpanData$TimedEvents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttributes()Lio/opencensus/trace/export/SpanData$Attributes;
.end method

.method public abstract getChildSpanCount()Ljava/lang/Integer;
.end method

.method public abstract getContext()Lio/opencensus/trace/SpanContext;
.end method

.method public abstract getEndTimestamp()Lio/opencensus/common/Timestamp;
.end method

.method public abstract getHasRemoteParent()Ljava/lang/Boolean;
.end method

.method public abstract getKind()Lio/opencensus/trace/Span$Kind;
.end method

.method public abstract getLinks()Lio/opencensus/trace/export/SpanData$Links;
.end method

.method public abstract getMessageEvents()Lio/opencensus/trace/export/SpanData$TimedEvents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/MessageEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getNetworkEvents()Lio/opencensus/trace/export/SpanData$TimedEvents;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/opencensus/trace/export/SpanData$TimedEvents<",
            "Lio/opencensus/trace/NetworkEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/opencensus/trace/export/SpanData;->getMessageEvents()Lio/opencensus/trace/export/SpanData$TimedEvents;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lio/opencensus/trace/export/SpanData$TimedEvents;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/opencensus/trace/export/SpanData$TimedEvent;

    invoke-virtual {v3}, Lio/opencensus/trace/export/SpanData$TimedEvent;->getTimestamp()Lio/opencensus/common/Timestamp;

    move-result-object v4

    invoke-virtual {v3}, Lio/opencensus/trace/export/SpanData$TimedEvent;->getEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/opencensus/trace/BaseMessageEvent;

    invoke-static {v3}, Lio/opencensus/trace/internal/BaseMessageEventUtils;->asNetworkEvent(Lio/opencensus/trace/BaseMessageEvent;)Lio/opencensus/trace/NetworkEvent;

    move-result-object v3

    invoke-static {v4, v3}, Lio/opencensus/trace/export/SpanData$TimedEvent;->create(Lio/opencensus/common/Timestamp;Ljava/lang/Object;)Lio/opencensus/trace/export/SpanData$TimedEvent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/opencensus/trace/export/SpanData$TimedEvents;->getDroppedEventsCount()I

    move-result v0

    invoke-static {v1, v0}, Lio/opencensus/trace/export/SpanData$TimedEvents;->create(Ljava/util/List;I)Lio/opencensus/trace/export/SpanData$TimedEvents;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParentSpanId()Lio/opencensus/trace/SpanId;
.end method

.method public abstract getStartTimestamp()Lio/opencensus/common/Timestamp;
.end method

.method public abstract getStatus()Lio/opencensus/trace/Status;
.end method
