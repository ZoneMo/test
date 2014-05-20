.class final Lcom/tencent/mapapi/map/bj;
.super Lcom/tencent/mapapi/map/ae;
.source "SourceFile"


# instance fields
.field final synthetic Xl:Lcom/tencent/mapapi/map/bi;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/tencent/mapapi/map/bj;->Xl:Lcom/tencent/mapapi/map/bi;

    invoke-direct {p0}, Lcom/tencent/mapapi/map/ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(I[I)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x3

    .line 416
    if-eqz p2, :cond_0

    array-length v1, p2

    if-eq v1, v0, :cond_1

    .line 418
    :cond_0
    const/4 v0, 0x0

    .line 437
    :goto_0
    return-object v0

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/tencent/mapapi/map/bj;->Xl:Lcom/tencent/mapapi/map/bi;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    invoke-static {v1}, Lcom/tencent/mapapi/map/bh;->b(Lcom/tencent/mapapi/map/bh;)I

    .line 421
    iget-object v1, p0, Lcom/tencent/mapapi/map/bj;->Xl:Lcom/tencent/mapapi/map/bi;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    invoke-static {v1}, Lcom/tencent/mapapi/map/bh;->c(Lcom/tencent/mapapi/map/bh;)I

    move-result v1

    if-le v1, v0, :cond_2

    .line 423
    iget-object v1, p0, Lcom/tencent/mapapi/map/bj;->Xl:Lcom/tencent/mapapi/map/bi;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    invoke-static {v1}, Lcom/tencent/mapapi/map/bh;->d(Lcom/tencent/mapapi/map/bh;)I

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/tencent/mapapi/map/bj;->Xl:Lcom/tencent/mapapi/map/bi;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    invoke-static {v1}, Lcom/tencent/mapapi/map/bh;->c(Lcom/tencent/mapapi/map/bh;)I

    move-result v1

    .line 426
    if-le v1, v0, :cond_3

    .line 430
    :goto_1
    const/4 v1, 0x0

    aget v1, p2, v1

    .line 431
    const/4 v2, 0x1

    aget v2, p2, v2

    .line 432
    aget v3, p2, v6

    add-int/lit8 v3, v3, 0x1

    .line 434
    const-wide/high16 v4, 0x4000

    aget v6, p2, v6

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    sub-int v2, v4, v2

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://mt"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".google.com/vt/lyrs=m@159000000&hl=zh-CN&gl=cn&x="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&s=Gali"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
