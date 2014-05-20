.class public Lcom/tencent/mm/pluginsdk/module/media/LyricView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private ctk:Landroid/os/Handler;

.field private fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

.field private fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

.field private fiT:Landroid/graphics/Bitmap;

.field private fiU:Landroid/graphics/Bitmap;

.field private fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

.field private fiW:Lcom/tencent/mm/pluginsdk/module/media/d;

.field private fiX:Ljava/lang/String;

.field private lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    .line 36
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    .line 37
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiT:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiU:Landroid/graphics/Bitmap;

    .line 39
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    .line 40
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    .line 41
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiW:Lcom/tencent/mm/pluginsdk/module/media/d;

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->lock:Ljava/lang/Object;

    .line 120
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->init()V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    .line 36
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    .line 37
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiT:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiU:Landroid/graphics/Bitmap;

    .line 39
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    .line 40
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    .line 41
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiW:Lcom/tencent/mm/pluginsdk/module/media/d;

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->lock:Ljava/lang/Object;

    .line 115
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->init()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    .line 36
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    .line 37
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiT:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiU:Landroid/graphics/Bitmap;

    .line 39
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    .line 40
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    .line 41
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiW:Lcom/tencent/mm/pluginsdk/module/media/d;

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->lock:Ljava/lang/Object;

    .line 110
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->init()V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    int-to-float v3, v2

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {p1, p0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 29
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    if-lez v3, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    new-instance p2, Landroid/graphics/Rect;

    neg-int v4, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    invoke-direct {p2, v2, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    :goto_1
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    if-gez v3, :cond_4

    neg-int v3, v3

    new-instance v0, Landroid/graphics/Rect;

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    new-instance p2, Landroid/graphics/Rect;

    neg-int v4, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-direct {p2, v4, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private aqE()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    if-nez v0, :cond_0

    .line 239
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "on stop draw:render is null, quit"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/tencent/mm/pluginsdk/module/media/e;->cWZ:Z

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 248
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/e;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string v1, "MicroMsg.LrcView"

    const-string v2, "render finish error [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiT:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    const-string v0, "MicroMsg.LrcView"

    const-string v1, "try to create blur bg, but bgBmp is exist"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiX:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "MicroMsg.LrcView"

    const-string v1, "try to create blur bg, but album url is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiX:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "MicroMsg.LrcView"

    const-string v1, "try to create blur bg, but album file is not exist"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/h;->su(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v3

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->g(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiT:Landroid/graphics/Bitmap;

    const-string v2, "MicroMsg.LrcView"

    const-string v5, "create blur image use %d ms, bgBmp is null ? %B"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->O(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiT:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v2, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiT:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiU:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private static g(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 32
    .parameter

    .prologue
    .line 646
    if-nez p0, :cond_0

    .line 647
    const-string v2, "MicroMsg.LrcView"

    const-string v3, "fastblur: but sentBitmap is null"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v2, 0x0

    .line 850
    :goto_0
    return-object v2

    .line 651
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 653
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 658
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 660
    mul-int v3, v5, v9

    new-array v3, v3, [I

    .line 661
    const-string v4, "pix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 664
    add-int/lit8 v21, v5, -0x1

    .line 665
    add-int/lit8 v22, v9, -0x1

    .line 666
    mul-int v4, v5, v9

    .line 667
    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 670
    new-array v0, v4, [I

    move-object/from16 v24, v0

    .line 671
    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 673
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 675
    const/16 v4, 0x5100

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 678
    const/4 v4, 0x0

    :goto_1
    const/16 v6, 0x5100

    if-ge v4, v6, :cond_1

    .line 679
    div-int/lit8 v6, v4, 0x51

    aput v6, v27, v4

    .line 678
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 682
    :cond_1
    const/4 v6, 0x0

    .line 684
    const/16 v4, 0x11

    const/4 v7, 0x3

    filled-new-array {v4, v7}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 689
    const/4 v7, 0x0

    move/from16 v19, v6

    move v13, v6

    move/from16 v20, v7

    :goto_2
    move/from16 v0, v20

    if-ge v0, v9, :cond_6

    .line 694
    const/4 v6, 0x0

    .line 695
    const/4 v7, -0x8

    move v8, v6

    move v10, v6

    move v11, v6

    move v12, v6

    move v14, v7

    move/from16 v16, v6

    move/from16 v17, v6

    move/from16 v18, v6

    move v7, v6

    :goto_3
    const/16 v15, 0x8

    if-gt v14, v15, :cond_3

    .line 696
    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v0, v21

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int/2addr v15, v13

    aget v15, v3, v15

    .line 697
    add-int/lit8 v28, v14, 0x8

    aget-object v28, v4, v28

    .line 698
    const/16 v29, 0x0

    const/high16 v30, 0xff

    and-int v30, v30, v15

    shr-int/lit8 v30, v30, 0x10

    aput v30, v28, v29

    .line 699
    const/16 v29, 0x1

    const v30, 0xff00

    and-int v30, v30, v15

    shr-int/lit8 v30, v30, 0x8

    aput v30, v28, v29

    .line 700
    const/16 v29, 0x2

    and-int/lit16 v15, v15, 0xff

    aput v15, v28, v29

    .line 701
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v15

    rsub-int/lit8 v15, v15, 0x9

    .line 702
    const/16 v29, 0x0

    aget v29, v28, v29

    mul-int v29, v29, v15

    add-int v18, v18, v29

    .line 703
    const/16 v29, 0x1

    aget v29, v28, v29

    mul-int v29, v29, v15

    add-int v17, v17, v29

    .line 704
    const/16 v29, 0x2

    aget v29, v28, v29

    mul-int v15, v15, v29

    add-int v16, v16, v15

    .line 705
    if-lez v14, :cond_2

    .line 706
    const/4 v15, 0x0

    aget v15, v28, v15

    add-int/2addr v8, v15

    .line 707
    const/4 v15, 0x1

    aget v15, v28, v15

    add-int/2addr v7, v15

    .line 708
    const/4 v15, 0x2

    aget v15, v28, v15

    add-int/2addr v6, v15

    .line 695
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 710
    :cond_2
    const/4 v15, 0x0

    aget v15, v28, v15

    add-int/2addr v12, v15

    .line 711
    const/4 v15, 0x1

    aget v15, v28, v15

    add-int/2addr v11, v15

    .line 712
    const/4 v15, 0x2

    aget v15, v28, v15

    add-int/2addr v10, v15

    goto :goto_4

    .line 715
    :cond_3
    const/16 v14, 0x8

    .line 717
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_5

    .line 719
    aget v28, v27, v18

    aput v28, v23, v13

    .line 720
    aget v28, v27, v17

    aput v28, v24, v13

    .line 721
    aget v28, v27, v16

    aput v28, v25, v13

    .line 723
    sub-int v18, v18, v12

    .line 724
    sub-int v17, v17, v11

    .line 725
    sub-int v16, v16, v10

    .line 727
    add-int/lit8 v28, v14, -0x8

    add-int/lit8 v28, v28, 0x11

    .line 728
    rem-int/lit8 v28, v28, 0x11

    aget-object v28, v4, v28

    .line 730
    const/16 v29, 0x0

    aget v29, v28, v29

    sub-int v12, v12, v29

    .line 731
    const/16 v29, 0x1

    aget v29, v28, v29

    sub-int v11, v11, v29

    .line 732
    const/16 v29, 0x2

    aget v29, v28, v29

    sub-int v10, v10, v29

    .line 734
    if-nez v20, :cond_4

    .line 735
    add-int/lit8 v29, v15, 0x8

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    aput v29, v26, v15

    .line 737
    :cond_4
    aget v29, v26, v15

    add-int v29, v29, v19

    aget v29, v3, v29

    .line 739
    const/16 v30, 0x0

    const/high16 v31, 0xff

    and-int v31, v31, v29

    shr-int/lit8 v31, v31, 0x10

    aput v31, v28, v30

    .line 740
    const/16 v30, 0x1

    const v31, 0xff00

    and-int v31, v31, v29

    shr-int/lit8 v31, v31, 0x8

    aput v31, v28, v30

    .line 741
    const/16 v30, 0x2

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    aput v29, v28, v30

    .line 743
    const/16 v29, 0x0

    aget v29, v28, v29

    add-int v8, v8, v29

    .line 744
    const/16 v29, 0x1

    aget v29, v28, v29

    add-int v7, v7, v29

    .line 745
    const/16 v29, 0x2

    aget v28, v28, v29

    add-int v6, v6, v28

    .line 747
    add-int v18, v18, v8

    .line 748
    add-int v17, v17, v7

    .line 749
    add-int v16, v16, v6

    .line 751
    add-int/lit8 v14, v14, 0x1

    rem-int/lit8 v14, v14, 0x11

    .line 752
    rem-int/lit8 v28, v14, 0x11

    aget-object v28, v4, v28

    .line 754
    const/16 v29, 0x0

    aget v29, v28, v29

    add-int v12, v12, v29

    .line 755
    const/16 v29, 0x1

    aget v29, v28, v29

    add-int v11, v11, v29

    .line 756
    const/16 v29, 0x2

    aget v29, v28, v29

    add-int v10, v10, v29

    .line 758
    const/16 v29, 0x0

    aget v29, v28, v29

    sub-int v8, v8, v29

    .line 759
    const/16 v29, 0x1

    aget v29, v28, v29

    sub-int v7, v7, v29

    .line 760
    const/16 v29, 0x2

    aget v28, v28, v29

    sub-int v6, v6, v28

    .line 762
    add-int/lit8 v13, v13, 0x1

    .line 717
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 764
    :cond_5
    add-int v6, v19, v5

    .line 693
    add-int/lit8 v7, v20, 0x1

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_2

    .line 766
    :cond_6
    const/4 v14, 0x0

    :goto_6
    if-ge v14, v5, :cond_c

    .line 767
    const/4 v7, 0x0

    .line 768
    mul-int/lit8 v8, v5, -0x8

    .line 769
    const/4 v6, -0x8

    move v10, v7

    move v11, v7

    move v12, v7

    move v13, v7

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v7

    move/from16 v18, v7

    move v6, v8

    move v8, v7

    :goto_7
    const/16 v19, 0x8

    move/from16 v0, v19

    if-gt v15, v0, :cond_9

    .line 770
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v19, v19, v14

    .line 772
    add-int/lit8 v20, v15, 0x8

    aget-object v20, v4, v20

    .line 774
    const/16 v21, 0x0

    aget v28, v23, v19

    aput v28, v20, v21

    .line 775
    const/16 v21, 0x1

    aget v28, v24, v19

    aput v28, v20, v21

    .line 776
    const/16 v21, 0x2

    aget v28, v25, v19

    aput v28, v20, v21

    .line 778
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v21

    rsub-int/lit8 v21, v21, 0x9

    .line 780
    aget v28, v23, v19

    mul-int v28, v28, v21

    add-int v18, v18, v28

    .line 781
    aget v28, v24, v19

    mul-int v28, v28, v21

    add-int v17, v17, v28

    .line 782
    aget v19, v25, v19

    mul-int v19, v19, v21

    add-int v16, v16, v19

    .line 784
    if-lez v15, :cond_8

    .line 785
    const/16 v19, 0x0

    aget v19, v20, v19

    add-int v10, v10, v19

    .line 786
    const/16 v19, 0x1

    aget v19, v20, v19

    add-int v8, v8, v19

    .line 787
    const/16 v19, 0x2

    aget v19, v20, v19

    add-int v7, v7, v19

    .line 794
    :goto_8
    move/from16 v0, v22

    if-ge v15, v0, :cond_7

    .line 795
    add-int/2addr v6, v5

    .line 769
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 789
    :cond_8
    const/16 v19, 0x0

    aget v19, v20, v19

    add-int v13, v13, v19

    .line 790
    const/16 v19, 0x1

    aget v19, v20, v19

    add-int v12, v12, v19

    .line 791
    const/16 v19, 0x2

    aget v19, v20, v19

    add-int v11, v11, v19

    goto :goto_8

    .line 799
    :cond_9
    const/16 v6, 0x8

    .line 800
    const/4 v15, 0x0

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v6

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    :goto_9
    move/from16 v0, v16

    if-ge v0, v9, :cond_b

    .line 802
    const/high16 v20, -0x100

    aget v21, v3, v13

    and-int v20, v20, v21

    aget v21, v27, v19

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    aget v21, v27, v18

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v27, v17

    or-int v20, v20, v21

    aput v20, v3, v13

    .line 804
    sub-int v19, v19, v12

    .line 805
    sub-int v18, v18, v11

    .line 806
    sub-int v17, v17, v10

    .line 808
    add-int/lit8 v20, v15, -0x8

    add-int/lit8 v20, v20, 0x11

    .line 809
    rem-int/lit8 v20, v20, 0x11

    aget-object v20, v4, v20

    .line 811
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v12, v12, v21

    .line 812
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v11, v11, v21

    .line 813
    const/16 v21, 0x2

    aget v21, v20, v21

    sub-int v10, v10, v21

    .line 815
    if-nez v14, :cond_a

    .line 816
    add-int/lit8 v21, v16, 0x9

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    mul-int v21, v21, v5

    aput v21, v26, v16

    .line 818
    :cond_a
    aget v21, v26, v16

    add-int v21, v21, v14

    .line 820
    const/16 v28, 0x0

    aget v29, v23, v21

    aput v29, v20, v28

    .line 821
    const/16 v28, 0x1

    aget v29, v24, v21

    aput v29, v20, v28

    .line 822
    const/16 v28, 0x2

    aget v21, v25, v21

    aput v21, v20, v28

    .line 824
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v8, v8, v21

    .line 825
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v7, v7, v21

    .line 826
    const/16 v21, 0x2

    aget v20, v20, v21

    add-int v6, v6, v20

    .line 828
    add-int v19, v19, v8

    .line 829
    add-int v18, v18, v7

    .line 830
    add-int v17, v17, v6

    .line 832
    add-int/lit8 v15, v15, 0x1

    rem-int/lit8 v15, v15, 0x11

    .line 833
    aget-object v20, v4, v15

    .line 835
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v12, v12, v21

    .line 836
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v11, v11, v21

    .line 837
    const/16 v21, 0x2

    aget v21, v20, v21

    add-int v10, v10, v21

    .line 839
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v8, v8, v21

    .line 840
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v7, v7, v21

    .line 841
    const/16 v21, 0x2

    aget v20, v20, v21

    sub-int v6, v6, v20

    .line 843
    add-int/2addr v13, v5

    .line 800
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 766
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 847
    :cond_c
    const-string v4, "pix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiX:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    .line 126
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->mark:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiU:Landroid/graphics/Bitmap;

    .line 127
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/pluginsdk/module/media/a;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    .line 131
    return-void
.end method

.method public final aqA()J
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    iget-wide v0, v0, Lcom/tencent/mm/pluginsdk/module/media/c;->fiY:J

    .line 141
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x5265c00

    goto :goto_0
.end method

.method public final aqB()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    const-string v2, "MicroMsg.LrcView"

    const-string v3, "on stop auto play, autoPlayJob is null ? %B"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    if-nez v5, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->setKeepScreenOn(Z)V

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    .line 167
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqE()V

    .line 169
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public final aqC()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqD()V

    .line 173
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    iget-boolean v0, v0, Lcom/tencent/mm/pluginsdk/module/media/e;->cWZ:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "on start auto refresh ok"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/tencent/mm/pluginsdk/module/media/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/pluginsdk/module/media/d;-><init>(Lcom/tencent/mm/pluginsdk/module/media/LyricView;B)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiW:Lcom/tencent/mm/pluginsdk/module/media/d;

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiW:Lcom/tencent/mm/pluginsdk/module/media/d;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "on start auto refresh fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final aqD()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "on stop auto refresh bg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiW:Lcom/tencent/mm/pluginsdk/module/media/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiW:Lcom/tencent/mm/pluginsdk/module/media/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiW:Lcom/tencent/mm/pluginsdk/module/media/d;

    .line 188
    :cond_0
    return-void
.end method

.method public final aqz()Lcom/tencent/mm/pluginsdk/module/media/a;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    return-object v0
.end method

.method public final e(JJ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x50

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqB()V

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    iget-boolean v0, v0, Lcom/tencent/mm/pluginsdk/module/media/e;->cWZ:Z

    if-nez v0, :cond_1

    .line 152
    :cond_0
    const-string v0, "MicroMsg.LrcView"

    const-string v3, "on start auto play[%d, %d] ok"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->setKeepScreenOn(Z)V

    .line 154
    new-instance v0, Lcom/tencent/mm/pluginsdk/module/media/c;

    add-long v2, p1, v7

    move-object v1, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/module/media/c;-><init>(Lcom/tencent/mm/pluginsdk/module/media/LyricView;JJ)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    .line 155
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->ctk:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiV:Lcom/tencent/mm/pluginsdk/module/media/c;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v3, "MicroMsg.LrcView"

    const-string v4, "on start auto play[%d, %d] fail, lyricMgr is null[%B], render is null[%B]"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    if-nez v6, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public final f(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 196
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    if-nez v2, :cond_0

    const-string v1, "MicroMsg.LrcView"

    const-string v2, "lyricMgr is null, do not start lyric render thread, return true"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_4

    .line 197
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "filter update event"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_1
    return-void

    .line 196
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/module/media/a;->aqw()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MicroMsg.LrcView"

    const-string v3, "song length %d, add tail"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiS:Lcom/tencent/mm/pluginsdk/module/media/a;

    invoke-virtual {v2, p3, p4}, Lcom/tencent/mm/pluginsdk/module/media/a;->bD(J)V

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    iget-boolean v2, v2, Lcom/tencent/mm/pluginsdk/module/media/e;->cWZ:Z

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "MicroMsg.LrcView"

    const-string v3, "start draw, time %d, return true"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/mm/pluginsdk/module/media/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/mm/pluginsdk/module/media/e;-><init>(Lcom/tencent/mm/pluginsdk/module/media/LyricView;J)V

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/module/media/e;->start()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    if-eqz v0, :cond_5

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    iput-wide p1, v0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjm:J

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final qB(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiX:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 855
    return-void
.end method

.method public final stop()V
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqD()V

    .line 211
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqB()V

    .line 212
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqE()V

    .line 213
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "on surface changed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqC()V

    .line 269
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    const-string v2, "MicroMsg.LrcView"

    const-string v3, "on surface created: render is null ? %B"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->fiR:Lcom/tencent/mm/pluginsdk/module/media/e;

    if-nez v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    return-void

    :cond_0
    move v0, v1

    .line 262
    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 273
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "on surface destroyed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->stop()V

    .line 275
    return-void
.end method
