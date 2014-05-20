.class Lcom/tencent/tmassistantsdk/logreport/LogReportManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$INetworkChangedObserver;


# instance fields
.field final synthetic this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$1;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged()V
    .locals 3

    .prologue
    .line 163
    const-string v0, "LogReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNetworkChanged,netState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tmassistantsdk/downloadservice/DownloadHelper;->getNetStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$1;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->maxReportCount:I
    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->access$002(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;I)I

    .line 166
    invoke-static {}, Lcom/tencent/tmassistantsdk/downloadservice/DownloadHelper;->isNetworkConncted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmassistantsdk/downloadservice/DownloadHelper;->getNetStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$1;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportLogData()V

    .line 170
    :cond_0
    return-void
.end method
