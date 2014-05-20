.class abstract Lcom/tencent/mapapi/map/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected UK:Ljava/lang/String;

.field protected Wr:Ljava/lang/Object;

.field protected b:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mapapi/map/am;->b:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/am;->UK:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mapapi/map/am;->d:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/tencent/mapapi/map/am;->Wr:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lcom/tencent/mapapi/map/am;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract f([B)Ljava/lang/Object;
.end method

.method public final mH()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/tencent/mapapi/map/am;->Wr:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/am;->mj()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mapapi/map/am;->d:Ljava/lang/String;

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mapapi/map/am;->d:Ljava/lang/String;

    const-string v2, "Android_SDK"

    invoke-static {v1, v2}, Lcom/tencent/a/a/a;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/a/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/a/a/c;->data:[B

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, v1, Lcom/tencent/a/a/c;->XZ:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mapapi/map/am;->UK:Ljava/lang/String;

    .line 72
    :try_start_1
    iget-object v1, v1, Lcom/tencent/a/a/c;->data:[B

    invoke-virtual {p0, v1}, Lcom/tencent/mapapi/map/am;->f([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 75
    :catch_1
    move-exception v1

    goto :goto_0

    .line 64
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected abstract mj()Ljava/lang/String;
.end method
