.class public Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;


# instance fields
.field private mListeners:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mInstance:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mListeners:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mInstance:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mInstance:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    .line 32
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mInstance:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addDownloadStateChangedListener(Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;

    invoke-direct {v1}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;-><init>()V

    .line 39
    const-string v0, "hostPackageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->hostPackageName:Ljava/lang/String;

    .line 40
    const-string v0, "hostVersion"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->hostVersion:Ljava/lang/String;

    .line 41
    const-string v0, "taskId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->taskId:Ljava/lang/String;

    .line 42
    const-string v0, "errorCode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->errorCode:I

    .line 43
    const-string v0, "errorMsg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->errorMsg:Ljava/lang/String;

    .line 44
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->state:I

    .line 45
    new-instance v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;-><init>()V

    .line 46
    const-string v2, "sngAppId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->SNGAppId:Ljava/lang/String;

    .line 47
    const-string v2, "taskAppId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    .line 48
    const-string v2, "taskApkId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskApkId:Ljava/lang/String;

    .line 49
    const-string v2, "taskPackageName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    .line 50
    const-string v2, "taskVersion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    .line 51
    const-string v2, "via"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    .line 52
    const-string v2, "uin"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uin:Ljava/lang/String;

    .line 53
    const-string v2, "uinType"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uinType:Ljava/lang/String;

    .line 54
    iput-object v0, v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->param:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    .line 56
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;

    .line 57
    invoke-interface {v0, v1}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;->onDownloadStateChanged(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;)V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public registeReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tencent.assistantOpenSDK.downloadStateChange.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method public removeDownloadStateChangedListener(Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public unRegisteReceiver(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->mInstance:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
