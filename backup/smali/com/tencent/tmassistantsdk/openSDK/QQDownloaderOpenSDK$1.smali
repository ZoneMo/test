.class Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmassistantsdk/openSDK/DownloadStateChangedReceiver$IDownloadStateChangedListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;)V
    .locals 0
    .parameter

    .prologue
    .line 909
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK$1;->this$0:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStateChanged(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;)V
    .locals 8
    .parameter

    .prologue
    .line 915
    iget-object v2, p1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->param:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    .line 917
    iget v0, p1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->state:I

    .line 919
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->assistantState2SDKState(I)I

    move-result v1

    .line 921
    iget v0, p1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->errorCode:I

    invoke-static {v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->assistantErrorCode2SDKErrorCode(I)I

    move-result v3

    .line 923
    iget-object v4, p1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->errorMsg:Ljava/lang/String;

    .line 925
    iget-object v5, p1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->taskId:Ljava/lang/String;

    .line 927
    const-string v0, "QQDownloaderOpenSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onDownloadStateChanged state = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/4 v0, 0x0

    .line 932
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 933
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK$1;->this$0:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    #getter for: Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->access$000(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    .line 937
    :cond_0
    if-eqz v0, :cond_2

    .line 938
    iget-object v5, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK$1;->this$0:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    #calls: Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->onStateChanged(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;IILjava/lang/String;)V
    invoke-static {v5, v0, v1, v3, v4}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->access$100(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;IILjava/lang/String;)V

    .line 944
    :goto_0
    const/4 v0, 0x6

    if-ne v0, v1, :cond_4

    .line 945
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 946
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK$1;->this$0:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    #getter for: Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->access$000(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 947
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 948
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 949
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    .line 950
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 951
    if-eqz v1, :cond_1

    iget-object v5, v2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v1, v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    iget v5, v2, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    if-ne v1, v5, :cond_1

    .line 952
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 940
    :cond_2
    const-string v0, "QQDownloaderOpenSDK"

    const-string v3, "onDownloadStateChanged storeParam = null"

    invoke-static {v0, v3}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 957
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK$1;->this$0:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;

    #getter for: Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->mDownloadParams:Ljava/util/Map;
    invoke-static {v2}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;->access$000(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 962
    :cond_4
    return-void
.end method
