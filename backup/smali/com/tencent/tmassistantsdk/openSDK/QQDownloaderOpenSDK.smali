.class public Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.tencent.android.qqdownloader.provider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "QQDownloaderOpenSDK"

.field private static mInstance:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;


# instance fields
.field private hostPackageName:Ljava/lang/String;

.field private hostVersionCode:I

.field private mContext:Landroid/content/Context;

.field private mDownloadParams:Ljava/util/Map;

.field private mDownloadStateListener:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;

.field protected mListenerQueue:Ljava/lang/ref/ReferenceQueue;

.field protected mWeakListenerArrayList:Ljava/util/ArrayList;

.field private sdkAPILevel:I

.field private sdkChannel:Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mInstance:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    .line 83
    sget-object v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloader/AssistantStore$DownloadInfos;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    .line 73
    iput-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostPackageName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostVersionCode:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->sdkAPILevel:I

    .line 78
    iput-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    .line 86
    new-instance v0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->sdkChannel:Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;

    .line 909
    new-instance v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK$1;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK$1;-><init>(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadStateListener:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mListenerQueue:Ljava/lang/ref/ReferenceQueue;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mWeakListenerArrayList:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->onStateChanged(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;IILjava/lang/String;)V

    return-void
.end method

.method private encodeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 743
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 744
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private formatIntentUriBody(Ljava/lang/String;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZLjava/util/Map;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 796
    invoke-direct {p0, p3, p4}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatOplist(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 797
    iget-object v1, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->SNGAppId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 798
    iget-object v2, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 799
    iget-object v3, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskApkId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 800
    iget-object v4, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 801
    iget-object v5, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 802
    iget-object v6, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uin:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 803
    iget-object v7, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uinType:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 804
    iget v8, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    .line 805
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "hostpname="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&hostversioncode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostVersionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&sngappid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "&appid="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&apkid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&versioncode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&oplist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&taskid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&via="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&uintype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&channelid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    if-eqz p5, :cond_1

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 809
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 810
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 811
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 812
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->encodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 815
    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 817
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private formatIntentUriHead(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 829
    packed-switch p1, :pswitch_data_0

    .line 845
    const-string v0, "appdetails"

    .line 848
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tpmast://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    return-object v0

    .line 833
    :pswitch_0
    const-string v0, "appdetails"

    goto :goto_0

    .line 836
    :pswitch_1
    const-string v0, "download"

    goto :goto_0

    .line 839
    :pswitch_2
    const-string v0, "appdetails"

    goto :goto_0

    .line 842
    :pswitch_3
    const-string v0, "updatedownload"

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private formatIntentUriPath(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 765
    invoke-direct {p0, p4}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatIntentUriHead(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p6

    .line 767
    invoke-direct/range {v0 .. v5}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatIntentUriBody(Ljava/lang/String;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/openSDK/OpenSDKTool4Assistant;->encryptUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tmast://encrypt?encryptdata="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    return-object v0
.end method

.method private formatOplist(ZZ)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 863
    const-string v0, ""

    .line 864
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 865
    const-string v0, "1;2"

    .line 872
    :cond_0
    :goto_0
    return-object v0

    .line 866
    :cond_1
    if-eqz p2, :cond_2

    .line 867
    const-string v0, "2"

    goto :goto_0

    .line 868
    :cond_2
    if-eqz p1, :cond_0

    .line 869
    const-string v0, "1"

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;
    .locals 2

    .prologue
    .line 104
    const-class v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mInstance:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mInstance:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    .line 107
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mInstance:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 899
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    const/4 v0, 0x1

    .line 903
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onStateChanged(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 884
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mWeakListenerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 885
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/openSDK/IQQDownloaderOpenSDKListener;

    .line 886
    if-nez v0, :cond_0

    .line 887
    const-string v2, "QQDownloaderOpenSDK"

    const-string v3, "onDownloadStateChanged listener = null"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tmassistantsdk/openSDK/IQQDownloaderOpenSDKListener;->OnDownloadTaskStateChanged(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;IILjava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_1
    return-void
.end method

.method private relateToQQDownloader(Landroid/content/Context;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 720
    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, v2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatIntentUriPath(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 723
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.android.qqdownloader.action.RELATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    const-string v2, "com.tencent.android.qqdownloader"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const-string v2, "command"

    const-string v3, "cmd_updatedownload"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    const-string v2, "relatedurl"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 733
    return-void
.end method


# virtual methods
.method public addDownloadTaskFromAppDetail(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZ)J
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "QQDownloaderParam param cann\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 414
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 416
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatIntentUriPath(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 427
    const-wide/32 v0, 0x493e0

    add-long v8, v6, v0

    .line 428
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->sdkChannel:Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostVersionCode:I

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;->AddDataItem(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJ)J

    move-result-wide v0

    .line 430
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public addDownloadTaskFromAuthorize(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 500
    if-nez p1, :cond_0

    .line 501
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "QQDownloaderParam param cann\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 506
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 512
    const-string v0, "actionflag"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v0, "verifytype"

    invoke-interface {v6, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatIntentUriPath(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 523
    const-wide/32 v0, 0x493e0

    add-long v8, v6, v0

    .line 524
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->sdkChannel:Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostVersionCode:I

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;->AddDataItem(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJ)J

    move-result-wide v0

    .line 526
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public addDownloadTaskFromTaskList(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZ)J
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "QQDownloaderParam param cann\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 323
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 325
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatIntentUriPath(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 337
    const-wide/32 v0, 0x493e0

    add-long v8, v6, v0

    .line 339
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->sdkChannel:Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostVersionCode:I

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;->AddDataItem(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJ)J

    move-result-wide v0

    .line 342
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public checkQQDownloaderInstalled()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 159
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "you must initial openSDK,by calling initQQDownloaderOpenSDK method!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    const-string v2, "com.tencent.android.qqdownloader"

    .line 164
    iget-object v3, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_3

    .line 169
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_2

    .line 173
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getQQDownloaderAPILevel()I

    move-result v2

    .line 176
    iget v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->sdkAPILevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, v2, :cond_1

    .line 178
    const/4 v0, 0x2

    .line 186
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 183
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    move v0, v1

    .line 186
    goto :goto_0
.end method

.method public destroyQQDownloaderOpenSDK()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->getInstance()Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->unRegisteReceiver(Landroid/content/Context;)V

    .line 142
    invoke-static {}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->getInstance()Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadStateListener:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->removeDownloadStateChangedListener(Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;)V

    .line 144
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->destroy()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method

.method public getDownloadTaskState(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;)Lcom/tencent/tmassistantsdk/downloadclient/TMAssistantDownloadTaskInfo;
    .locals 17
    .parameter

    .prologue
    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 541
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Context shouldn\'t be null !"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 544
    :cond_0
    if-nez p1, :cond_1

    .line 545
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "QQDownloaderParam param cann\'t is null!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 548
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 549
    const/4 v12, 0x0

    .line 550
    const/4 v8, 0x0

    .line 555
    :try_start_0
    sget-object v3, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "packageName=? and versionCode=? and channelId=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget v9, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->channelId:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 560
    if-eqz v11, :cond_b

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 561
    const-string v2, "QQDownloaderOpenSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "relate to qqdownloader , packageName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v2, "apkId"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 565
    const-string v2, "apkUrl"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-static {v2}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->String2List(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 569
    const-string v2, "filePath"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 570
    const-string v2, "received_length"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 572
    const-string v2, "total_length"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 573
    const-string v10, "application/vnd.android.package-archive"

    .line 575
    const-string v2, "state"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 576
    invoke-static {v2}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->assistantState2SDKState(I)I

    move-result v5

    .line 577
    const-string v2, "QQDownloaderOpenSDK"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "getDownloadTaskState state = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v2, 0x4

    if-ne v2, v5, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->isFileExist(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_4

    .line 580
    if-eqz v11, :cond_2

    .line 631
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v2, 0x0

    .line 635
    :cond_3
    :goto_0
    return-object v2

    .line 582
    :cond_4
    :try_start_2
    new-instance v2, Lcom/tencent/tmassistantsdk/downloadclient/TMAssistantDownloadTaskInfo;

    invoke-direct/range {v2 .. v10}, Lcom/tencent/tmassistantsdk/downloadclient/TMAssistantDownloadTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 586
    const/4 v4, 0x5

    if-eq v5, v4, :cond_5

    const/4 v4, 0x4

    if-eq v5, v4, :cond_5

    const/4 v4, 0x3

    if-ne v5, v4, :cond_6

    .line 590
    :cond_5
    :try_start_3
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->createNewChunkLogInfo(B)Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;

    move-result-object v4

    .line 591
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    iput-object v6, v4, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    .line 592
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    .line 593
    iput v5, v4, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->resultState:I

    .line 594
    iput-object v3, v4, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->requestUrl:Ljava/lang/String;

    .line 595
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->addLogData(Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;)V

    .line 600
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    if-eqz v3, :cond_8

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 602
    const/4 v4, 0x0

    .line 603
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 604
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 605
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    .line 607
    if-eqz v3, :cond_7

    .line 609
    iget-object v6, v3, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v3, v3, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    if-ne v3, v6, :cond_7

    .line 610
    const/4 v3, 0x1

    .line 616
    :goto_1
    if-nez v3, :cond_8

    .line 617
    const-string v3, "QQDownloaderOpenSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "relate to qqdownloader , packageName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 619
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskApkId:Ljava/lang/String;

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v3}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->relateToQQDownloader(Landroid/content/Context;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 630
    :cond_8
    :goto_2
    if-eqz v11, :cond_3

    .line 631
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 627
    :catch_0
    move-exception v2

    move-object v3, v8

    move-object v2, v12

    .line 628
    :goto_3
    if-eqz v3, :cond_3

    .line 631
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 630
    :catchall_0
    move-exception v2

    move-object v11, v8

    :goto_4
    if-eqz v11, :cond_9

    .line 631
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 630
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 627
    :catch_1
    move-exception v2

    move-object v3, v11

    move-object v2, v12

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v3, v11

    goto :goto_3

    :cond_a
    move v3, v4

    goto :goto_1

    :cond_b
    move-object v2, v12

    goto :goto_2
.end method

.method public initQQDownloaderOpenSDK(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostPackageName:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostVersionCode:I

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->sdkAPILevel:I

    .line 123
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->setContext(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->getInstance()Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->registeReceiver(Landroid/content/Context;)V

    .line 128
    invoke-static {}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->getInstance()Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadStateListener:Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver;->addDownloadStateChangedListener(Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;)V

    .line 129
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;->getInstance()Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;->sendRequest()V

    .line 130
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportLogData()V

    .line 131
    return-void
.end method

.method public registerListener(Lcom/tencent/tmassistantsdk/openSDK/IQQDownloaderOpenSDKListener;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 661
    if-nez p1, :cond_0

    .line 662
    const/4 v0, 0x0

    .line 683
    :goto_0
    return v0

    .line 667
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mListenerQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mWeakListenerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mWeakListenerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 673
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/openSDK/IQQDownloaderOpenSDKListener;

    .line 674
    if-ne v0, p1, :cond_2

    move v0, v1

    .line 675
    goto :goto_0

    .line 680
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mListenerQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 681
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mWeakListenerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 683
    goto :goto_0
.end method

.method public removeDownloadTask(J)Z
    .locals 2
    .parameter

    .prologue
    .line 647
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->sdkChannel:Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannel;->delDataItem(J)Z

    move-result v0

    .line 650
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startToAppDetail(Landroid/content/Context;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 362
    if-nez p1, :cond_0

    .line 363
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "you must input an application or activity context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 368
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_1
    if-eqz p3, :cond_2

    .line 373
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->createNewChunkLogInfo(B)Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;

    move-result-object v0

    .line 374
    iget-object v1, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    .line 375
    iput-object v5, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->UUID:Ljava/lang/String;

    .line 376
    iget-object v1, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    .line 377
    iput v2, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->resultState:I

    .line 378
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->addLogData(Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;)V

    .line 381
    :cond_2
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatIntentUriPath(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 386
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 388
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 389
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 393
    return-void
.end method

.method public startToAuthorized(Landroid/content/Context;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 450
    if-nez p1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "you must input an application or activity context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    if-nez p2, :cond_1

    .line 454
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "QQDownloaderParam param cann\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 459
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_2
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->createNewChunkLogInfo(B)Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;

    move-result-object v0

    .line 465
    iget-object v1, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    .line 466
    iput-object v5, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->UUID:Ljava/lang/String;

    .line 467
    iget-object v1, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    .line 468
    iput v2, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->resultState:I

    .line 469
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->addLogData(Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;)V

    .line 471
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 472
    const-string v0, "actionflag"

    invoke-interface {v6, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v0, "verifytype"

    invoke-interface {v6, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p2

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatIntentUriPath(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 478
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 480
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 481
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method public startToDownloadTaskList(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "you must input an application or activity context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tmast://download?hostpname="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&hostversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 238
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method public startToDownloadTaskList(Landroid/content/Context;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 263
    if-nez p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "you must input an application or activity context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    if-nez p2, :cond_1

    .line 301
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;

    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_2
    if-eqz p3, :cond_3

    .line 282
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->createNewChunkLogInfo(B)Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;

    move-result-object v0

    .line 283
    iput-object v5, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->UUID:Ljava/lang/String;

    .line 284
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->requestUrl:Ljava/lang/String;

    .line 285
    iget-object v1, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    .line 286
    iget-object v1, p2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    .line 287
    invoke-static {}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->getInstance()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->addLogData(Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;)V

    .line 290
    :cond_3
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->formatIntentUriPath(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 294
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 296
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_4

    .line 297
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    :cond_4
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startToMainActivity(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "you must input an application or activity context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tmast://competitive?hostpname="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&hostversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->hostVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 212
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public unregisterListener(Lcom/tencent/tmassistantsdk/openSDK/IQQDownloaderOpenSDKListener;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 694
    if-nez p1, :cond_0

    move v0, v1

    .line 709
    :goto_0
    return v0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mWeakListenerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 700
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 702
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/openSDK/IQQDownloaderOpenSDKListener;

    .line 703
    if-ne v0, p1, :cond_1

    .line 704
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 705
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 709
    goto :goto_0
.end method
