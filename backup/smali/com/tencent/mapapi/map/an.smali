.class final Lcom/tencent/mapapi/map/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private UN:Z

.field UO:J

.field Ws:Lcom/tencent/mapapi/map/ao;

.field protected final b:I


# direct methods
.method public constructor <init>(IZJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/tencent/mapapi/map/an;->Ws:Lcom/tencent/mapapi/map/ao;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/an;->UN:Z

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mapapi/map/an;->UO:J

    .line 27
    iput p1, p0, Lcom/tencent/mapapi/map/an;->b:I

    .line 28
    iput-boolean p2, p0, Lcom/tencent/mapapi/map/an;->UN:Z

    .line 29
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lcom/tencent/mapapi/map/an;->UO:J

    .line 30
    iget v0, p0, Lcom/tencent/mapapi/map/an;->b:I

    if-lez v0, :cond_0

    .line 31
    new-instance v0, Lcom/tencent/mapapi/map/ao;

    iget v1, p0, Lcom/tencent/mapapi/map/an;->b:I

    invoke-direct {v0, v1}, Lcom/tencent/mapapi/map/ao;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/an;->Ws:Lcom/tencent/mapapi/map/ao;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iput-object v2, p0, Lcom/tencent/mapapi/map/an;->Ws:Lcom/tencent/mapapi/map/ao;

    goto :goto_0
.end method


# virtual methods
.method protected final ao(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/tencent/mapapi/map/an;->Ws:Lcom/tencent/mapapi/map/ao;

    invoke-virtual {v1, p1}, Lcom/tencent/mapapi/map/ao;->ao(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;

    move-result-object v1

    .line 43
    iget-boolean v2, p0, Lcom/tencent/mapapi/map/an;->UN:Z

    if-nez v2, :cond_2

    move-object v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 52
    iget-wide v4, v1, Lcom/tencent/mapapi/map/ap;->UG:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/tencent/mapapi/map/an;->UO:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 54
    iget-object v1, p0, Lcom/tencent/mapapi/map/an;->Ws:Lcom/tencent/mapapi/map/ao;

    invoke-virtual {v1, p1}, Lcom/tencent/mapapi/map/ao;->ap(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 58
    goto :goto_0
.end method

.method protected final b([BLjava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return v0

    .line 69
    :cond_0
    new-instance v2, Lcom/tencent/mapapi/map/ap;

    invoke-direct {v2}, Lcom/tencent/mapapi/map/ap;-><init>()V

    .line 72
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mapapi/map/ap;->Wu:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    iget-object v3, v2, Lcom/tencent/mapapi/map/ap;->Wu:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 81
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/tencent/mapapi/map/ap;->Wu:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 85
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/an;->UN:Z

    if-ne v0, v1, :cond_2

    .line 87
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/mapapi/map/ap;->UG:J

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/an;->Ws:Lcom/tencent/mapapi/map/ao;

    invoke-virtual {v0, p2, v2}, Lcom/tencent/mapapi/map/ao;->a(Ljava/lang/String;Lcom/tencent/mapapi/map/ap;)V

    move v0, v1

    .line 91
    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method
