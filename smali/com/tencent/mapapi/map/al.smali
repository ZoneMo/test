.class public final Lcom/tencent/mapapi/map/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mapapi/map/al;->TX:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/tencent/mapapi/map/bq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/al;->TX:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final mG()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mapapi/map/al;->TX:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mapapi/a/b;->mj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/a/a/a;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/a/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/a/a/c;->data:[B

    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    iget-object v2, v1, Lcom/tencent/a/a/c;->XZ:Ljava/lang/String;

    .line 37
    iget-object v3, v1, Lcom/tencent/a/a/c;->data:[B

    .line 41
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    :goto_1
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 53
    :try_start_3
    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 61
    :try_start_4
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 65
    :catch_1
    move-exception v1

    goto :goto_0

    .line 57
    :catch_2
    move-exception v1

    goto :goto_0

    .line 49
    :catch_3
    move-exception v1

    goto :goto_0

    .line 30
    :catch_4
    move-exception v1

    goto :goto_0
.end method
