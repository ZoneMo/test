.class final Lcom/tencent/mapapi/map/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mapapi/a/c;


# instance fields
.field final synthetic VP:Lcom/tencent/mapapi/map/p;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/p;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/tencent/mapapi/map/q;->VP:Lcom/tencent/mapapi/map/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Integer;[BLjava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const-wide v8, 0x412e848000000000L

    const/4 v7, 0x0

    .line 405
    packed-switch p1, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 407
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/tencent/mapapi/map/q;->VP:Lcom/tencent/mapapi/map/p;

    invoke-static {v0}, Lcom/tencent/mapapi/map/p;->a(Lcom/tencent/mapapi/map/p;)Lcom/tencent/mapapi/map/s;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, v7}, Lcom/tencent/mapapi/map/s;->a(ILcom/tencent/mapapi/b/a;)V

    goto :goto_0

    .line 412
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    array-length v0, p3

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "data error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mapapi/map/q;->VP:Lcom/tencent/mapapi/map/p;

    invoke-static {v0}, Lcom/tencent/mapapi/map/p;->a(Lcom/tencent/mapapi/map/p;)Lcom/tencent/mapapi/map/s;

    move-result-object v0

    invoke-interface {v0, v10, v7}, Lcom/tencent/mapapi/map/s;->a(ILcom/tencent/mapapi/b/a;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "info"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v2, :cond_3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "data error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "detail"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "results"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "pointx"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "pointy"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    new-instance v5, Lcom/tencent/mapapi/b/a;

    invoke-direct {v5}, Lcom/tencent/mapapi/b/a;-><init>()V

    const-string v6, "addr"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mapapi/b/a;->XX:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/mapapi/b/a;->name:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mapapi/map/GeoPoint;

    mul-double/2addr v3, v8

    double-to-int v3, v3

    mul-double/2addr v1, v8

    double-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lcom/tencent/mapapi/map/GeoPoint;-><init>(II)V

    iput-object v0, v5, Lcom/tencent/mapapi/b/a;->VA:Lcom/tencent/mapapi/map/GeoPoint;

    iget-object v0, p0, Lcom/tencent/mapapi/map/q;->VP:Lcom/tencent/mapapi/map/p;

    invoke-static {v0}, Lcom/tencent/mapapi/map/p;->a(Lcom/tencent/mapapi/map/p;)Lcom/tencent/mapapi/map/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v5}, Lcom/tencent/mapapi/map/s;->a(ILcom/tencent/mapapi/b/a;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mapapi/map/q;->VP:Lcom/tencent/mapapi/map/p;

    invoke-static {v0}, Lcom/tencent/mapapi/map/p;->a(Lcom/tencent/mapapi/map/p;)Lcom/tencent/mapapi/map/s;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mapapi/map/s;->a(ILcom/tencent/mapapi/b/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method
