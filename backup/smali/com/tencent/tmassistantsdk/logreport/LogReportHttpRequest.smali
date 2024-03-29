.class public Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;
.super Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;
.source "SourceFile"


# instance fields
.field private mListener:Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;->mListener:Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;

    .line 26
    return-void
.end method


# virtual methods
.method protected onFinished(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    if-nez p2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;->mListener:Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;

    if-eqz v0, :cond_0

    .line 66
    instance-of v0, p2, Lcom/tencent/tmassistantsdk/protocol/jce/ReportLogResponse;

    if-eqz v0, :cond_0

    .line 67
    check-cast p2, Lcom/tencent/tmassistantsdk/protocol/jce/ReportLogResponse;

    .line 68
    iget v0, p2, Lcom/tencent/tmassistantsdk/protocol/jce/ReportLogResponse;->ret:I

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;->mListener:Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;->onLogReprotHttpRequestFinish(Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;Z)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;->mListener:Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;->onLogReprotHttpRequestFinish(Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;Z)V

    goto :goto_0
.end method

.method public sendLogDataToServer(Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;)Z
    .locals 4
    .parameter

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 44
    const-string v2, ""

    .line 46
    iget-object v3, p1, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper;->dataList:Ljava/util/List;

    invoke-static {v3, v0, v1, v2}, Lcom/tencent/tmassistantsdk/protocol/ProtocolPackage;->buildReportRequest(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/protocol/jce/ReportLogRequest;

    .line 49
    invoke-virtual {p0, v0}, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;->sendRequest(Lcom/qq/taf/jce/JceStruct;)Z

    move-result v0

    goto :goto_0
.end method

.method public setmListener(Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/logreport/LogReportHttpRequest;->mListener:Lcom/tencent/tmassistantsdk/logreport/ILogReportHttpListener;

    .line 55
    return-void
.end method
