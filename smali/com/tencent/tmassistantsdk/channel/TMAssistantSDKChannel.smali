.class public Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized AddDataItem(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJ)J
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;

    const/4 v10, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJI)V

    .line 52
    new-instance v1, Lcom/tencent/tmassistantsdk/channel/DBOption;

    invoke-direct {v1}, Lcom/tencent/tmassistantsdk/channel/DBOption;-><init>()V

    .line 53
    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/channel/DBOption;->insert(Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delDataItem(J)Z
    .locals 2
    .parameter

    .prologue
    .line 64
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_0
    monitor-exit p0

    return v0

    .line 68
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/tmassistantsdk/channel/DBOption;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/channel/DBOption;-><init>()V

    .line 69
    invoke-virtual {v0, p1, p2}, Lcom/tencent/tmassistantsdk/channel/DBOption;->delete(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChannelDataItemList()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/tmassistantsdk/channel/DBOption;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/channel/DBOption;-><init>()V

    .line 23
    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/channel/DBOption;->queryAll()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
