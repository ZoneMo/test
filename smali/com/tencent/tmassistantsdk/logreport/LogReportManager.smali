.class public Lcom/tencent/tmassistantsdk/logreport/LogReportManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_READ_COUNT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "LogReportManager"

.field private static mInstance:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;


# instance fields
.field private final idLists:Ljava/util/List;

.field private final mLogReportListener:Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;

.field private final mNetworkChangedObserver:Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$INetworkChangedObserver;

.field private maxReportCount:I

.field private reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->mInstance:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->maxReportCount:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->idLists:Ljava/util/List;

    .line 158
    new-instance v0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$1;-><init>(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->mNetworkChangedObserver:Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$INetworkChangedObserver;

    .line 176
    new-instance v0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;-><init>(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->mLogReportListener:Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;

    .line 44
    invoke-static {}, Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->mNetworkChangedObserver:Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$INetworkChangedObserver;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;->addNetworkChangedObserver(Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$INetworkChangedObserver;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->maxReportCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->maxReportCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)I
    .locals 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->maxReportCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->maxReportCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->idLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;)Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->mInstance:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->mInstance:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->mInstance:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readLogDataAndSendToServer(Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 138
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->getInstance()Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->getDatas(I)Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;

    move-result-object v1

    .line 145
    const-string v2, "LogReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readLogDataAndSendToServer,wrappterCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;->dataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->idLists:Ljava/util/List;

    iget-object v2, v1, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;->idList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-virtual {p1, v1}, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;->sendLogDataToServer(Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addLogData(Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    const-string v0, "LogReportManager"

    const-string v1, "addLogData,loginfo"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_0

    .line 96
    invoke-static {p1}, Lcom/tencent/tmassistantsdk/protocol/ProtocolPackage;->jceStructToUTF8Byte(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->getInstance()Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->save([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createNewChunkLogInfo(B)Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;
    .locals 3
    .parameter

    .prologue
    .line 72
    const-string v0, "LogReportManager"

    const-string v1, "createNewChunkLogInfo"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;-><init>()V

    .line 75
    iput-byte p1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->type:B

    .line 76
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->networkOperator:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getNetworkType()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->networkType:I

    .line 78
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->isWap()B

    move-result v1

    iput-byte v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->isWap:B

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->startTime:J

    .line 81
    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    .line 49
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->idLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    invoke-static {}, Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->mNetworkChangedObserver:Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$INetworkChangedObserver;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;->removeNetworkChangedObserver(Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$INetworkChangedObserver;)V

    .line 51
    return-void
.end method

.method public declared-synchronized reportLogData()V
    .locals 3

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->canReportValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_1
    :try_start_1
    const-string v0, "LogReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportLogData,request:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    .line 120
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->mLogReportListener:Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;->setmListener(Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    invoke-direct {p0, v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->readLogDataAndSendToServer(Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;)Z

    move-result v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->maxReportCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
