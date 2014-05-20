.class final Lcom/tencent/mapapi/map/au;
.super Lcom/tencent/mapapi/map/am;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mapapi/map/av;


# instance fields
.field Wy:Lcom/tencent/mapapi/map/bl;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/tencent/mapapi/map/am;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iput-object v0, p0, Lcom/tencent/mapapi/map/au;->Wy:Lcom/tencent/mapapi/map/bl;

    .line 286
    return-void
.end method

.method private g([B)Ljava/lang/Boolean;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 299
    if-nez p1, :cond_0

    .line 301
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/au;->UK:Ljava/lang/String;

    .line 311
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 312
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :try_start_1
    const-string v1, "info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 328
    :try_start_2
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/tencent/mapapi/map/au;->Wy:Lcom/tencent/mapapi/map/bl;

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/tencent/mapapi/map/au;->Wy:Lcom/tencent/mapapi/map/bl;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/mapapi/map/br;->XG:Lcom/tencent/mapapi/map/br;

    sput-object v0, Lcom/tencent/mapapi/map/bq;->VK:Lcom/tencent/mapapi/map/br;

    .line 344
    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 324
    :catch_1
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 332
    :catch_2
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_2
    sget-object v0, Lcom/tencent/mapapi/map/br;->XH:Lcom/tencent/mapapi/map/br;

    sput-object v0, Lcom/tencent/mapapi/map/bq;->VK:Lcom/tencent/mapapi/map/br;

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic f([B)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/tencent/mapapi/map/au;->g([B)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final mJ()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/au;->mH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final me()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/au;->Wy:Lcom/tencent/mapapi/map/bl;

    .line 364
    return-void
.end method

.method protected final mj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/tencent/mapapi/map/au;->Wr:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
