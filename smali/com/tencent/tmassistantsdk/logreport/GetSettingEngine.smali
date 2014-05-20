.class public Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmassistantsdk/network/IGetSettingHttpListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetSettingEngine"

.field private static mInstance:Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;->mInstance:Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;->mInstance:Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;->mInstance:Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;

    .line 35
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;->mInstance:Lcom/tencent/tmassistantsdk/logreport/GetSettingEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onSettingHttpRequestFinish(Lcom/tencent/tmassistantsdk/protocol/jce/GetSettingsRequest;Lcom/tencent/tmassistantsdk/protocol/jce/GetSettingsResponse;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    if-eqz p3, :cond_0

    .line 48
    iget-object v0, p2, Lcom/tencent/tmassistantsdk/protocol/jce/GetSettingsResponse;->settings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tencent/tmassistantsdk/protocol/jce/GetSettingsResponse;->settings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p2, Lcom/tencent/tmassistantsdk/protocol/jce/GetSettingsResponse;->settings:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/protocol/jce/SettingsCfg;

    .line 50
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/SettingsCfg;->cfg:[B

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, v0, Lcom/tencent/tmassistantsdk/protocol/jce/SettingsCfg;->cfg:[B

    const-class v1, Lcom/tencent/tmassistantsdk/protocol/jce/StatCfg;

    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/protocol/ProtocolPackage;->bytes2JceObj([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/protocol/jce/StatCfg;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v1

    iget-byte v0, v0, Lcom/tencent/tmassistantsdk/protocol/jce/StatCfg;->netType:B

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->setNetTypeValue(B)V

    .line 55
    :cond_0
    return-void
.end method

.method public sendRequest()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/tencent/tmassistantsdk/network/GetSettingHttpRequest;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/network/GetSettingHttpRequest;-><init>()V

    .line 40
    invoke-virtual {v0, p0}, Lcom/tencent/tmassistantsdk/network/GetSettingHttpRequest;->setGetSettingHttpListener(Lcom/tencent/tmassistantsdk/network/IGetSettingHttpListener;)V

    .line 41
    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/network/GetSettingHttpRequest;->sendSettingRequest()V

    .line 42
    return-void
.end method
