.class Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogReprotHttpRequestFinish(Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 181
    const-string v0, "LogReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLogReprotHttpRequestFinish,result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz p2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    #getter for: Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->idLists:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->access$100(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    #getter for: Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->idLists:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->access$100(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->getInstance()Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    #getter for: Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->idLists:Ljava/util/List;
    invoke-static {v1}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->access$100(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;->delete(Ljava/util/List;)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportRequest:Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;
    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->access$202(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;)Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;

    .line 193
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    #getter for: Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->idLists:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->access$100(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    #getter for: Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->maxReportCount:I
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->access$000(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 198
    const-string v0, "LogReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLogReprotHttpRequestFinish wifi is true reportlog go on,result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    #getter for: Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->maxReportCount:I
    invoke-static {v2}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->access$000(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->reportLogData()V

    .line 200
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportManager$2;->this$0:Lcom/tencent/tmassistantsdk/logreport/LogReportManager;

    invoke-static {v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportManager;->access$008(Lcom/tencent/tmassistantsdk/logreport/LogReportManager;)I

    .line 202
    :cond_1
    return-void
.end method
