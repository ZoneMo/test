.class public final Lcom/tencent/mm/ui/video/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private fileSize:I

.field private filename:Ljava/lang/String;

.field private hsB:Lcom/tencent/mm/ui/video/a;

.field private hsC:Landroid/media/MediaRecorder;

.field private hsD:Lcom/tencent/mm/ui/video/ak;

.field private hsE:I

.field private final hsF:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/video/b;->hsE:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/mm/ui/video/b;->hsF:I

    .line 285
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/b;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method private setOrientationHint(I)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 124
    const/16 v0, 0x9

    new-instance v1, Lcom/tencent/mm/ui/video/c;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/video/c;-><init>(Lcom/tencent/mm/ui/video/b;I)V

    invoke-static {v0, v1}, Lcom/tencent/mm/compatible/a/a;->a(ILcom/tencent/mm/compatible/a/b;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public final DO()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v0, v0, Lcom/tencent/mm/ui/video/a;->cAX:I

    return v0
.end method

.method public final a(Landroid/app/Activity;Z)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/tencent/mm/ui/video/b;->context:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsD:Lcom/tencent/mm/ui/video/ak;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    invoke-virtual {v0, p1, v1, p2}, Lcom/tencent/mm/ui/video/ak;->a(Landroid/app/Activity;Lcom/tencent/mm/ui/video/a;Z)I

    move-result v0

    .line 140
    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x120

    const/16 v4, 0xe0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    new-instance v2, Lcom/tencent/mm/ui/video/a;

    invoke-direct {v2}, Lcom/tencent/mm/ui/video/a;-><init>()V

    const/16 v3, 0xa

    iput v3, v2, Lcom/tencent/mm/ui/video/a;->te:I

    iput v1, v2, Lcom/tencent/mm/ui/video/a;->cdK:I

    iput v5, v2, Lcom/tencent/mm/ui/video/a;->hsq:I

    iput v4, v2, Lcom/tencent/mm/ui/video/a;->hsr:I

    iput v5, v2, Lcom/tencent/mm/ui/video/a;->hso:I

    iput v4, v2, Lcom/tencent/mm/ui/video/a;->hsp:I

    iput v0, v2, Lcom/tencent/mm/ui/video/a;->hss:I

    const/4 v3, 0x4

    iput v3, v2, Lcom/tencent/mm/ui/video/a;->hst:I

    const-string v3, "/sdcard/1.yuv"

    iput-object v3, v2, Lcom/tencent/mm/ui/video/a;->hsu:Ljava/lang/String;

    const-string v3, "/sdcard/1.mp4"

    iput-object v3, v2, Lcom/tencent/mm/ui/video/a;->hsy:Ljava/lang/String;

    const-string v3, "/sdcard/1.pcm"

    iput-object v3, v2, Lcom/tencent/mm/ui/video/a;->hsv:Ljava/lang/String;

    const-string v3, "/sdcard/1.x264"

    iput-object v3, v2, Lcom/tencent/mm/ui/video/a;->hsx:Ljava/lang/String;

    iput v1, v2, Lcom/tencent/mm/ui/video/a;->hsz:I

    iput v1, v2, Lcom/tencent/mm/ui/video/a;->cAX:I

    iput v1, v2, Lcom/tencent/mm/ui/video/a;->hsA:I

    iput-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    .line 44
    iput-object p5, p0, Lcom/tencent/mm/ui/video/b;->filename:Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iput-object p3, v2, Lcom/tencent/mm/ui/video/a;->hsy:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iput-object p4, v2, Lcom/tencent/mm/ui/video/a;->hsw:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "temp.pcm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/ui/video/a;->hsv:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "temp.yuv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/ui/video/a;->hsu:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "temp.vid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/ui/video/a;->hsx:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->getNumberOfCameras()I

    move-result v3

    iput v3, v2, Lcom/tencent/mm/ui/video/a;->hsA:I

    .line 51
    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    if-eqz p1, :cond_0

    :goto_0
    iput v0, v2, Lcom/tencent/mm/ui/video/a;->cdK:I

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iput v1, v0, Lcom/tencent/mm/ui/video/a;->cAX:I

    .line 54
    new-instance v0, Lcom/tencent/mm/ui/video/ak;

    invoke-direct {v0}, Lcom/tencent/mm/ui/video/ak;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsD:Lcom/tencent/mm/ui/video/ak;

    .line 55
    return v1

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method public final aPe()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsD:Lcom/tencent/mm/ui/video/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/ak;->aPk()V

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public final ci(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/a;->hsw:Ljava/lang/String;

    .line 164
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 184
    :cond_1
    :goto_0
    return-object v0

    .line 168
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {p1}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/e;->e(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 174
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 175
    const/high16 v3, 0x4360

    invoke-static {p1, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v3

    .line 176
    int-to-float v0, v0

    int-to-float v4, v3

    div-float/2addr v0, v4

    .line 177
    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 178
    const/4 v2, 0x1

    invoke-static {v1, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    if-eq v1, v0, :cond_1

    .line 180
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final ck(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 273
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    iput-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    .line 278
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/tencent/mm/ui/video/a;->cAX:I

    .line 279
    iget-object v3, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v0, v0, Lcom/tencent/mm/ui/video/a;->cAX:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v0, v0, Lcom/tencent/mm/ui/video/a;->cAX:I

    :goto_1
    iput v0, v3, Lcom/tencent/mm/ui/video/a;->cAX:I

    .line 280
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v3, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v3, v3, Lcom/tencent/mm/ui/video/a;->cAX:I

    iget-object v4, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v4, v4, Lcom/tencent/mm/ui/video/a;->te:I

    mul-int/2addr v3, v4

    iput v3, v0, Lcom/tencent/mm/ui/video/a;->hsz:I

    .line 281
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/a;->hsy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/a;->hsw:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/tencent/mm/compatible/g/g;->bG(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/a;->hsy:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    :try_start_1
    const-string v1, "MicroMsg.SceneVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveBitmapToImage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v3, v3, Lcom/tencent/mm/ui/video/a;->hsw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v2, v2, Lcom/tencent/mm/ui/video/a;->hsw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/video/d;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/a;->hsy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/a;->hsy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/video/b;->fileSize:I

    .line 283
    :cond_1
    return-void

    .line 275
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.SceneVideo"

    const-string v3, "video[tiger] video stop failed"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 279
    goto :goto_1

    .line 281
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->adH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v2, v2, Lcom/tencent/mm/ui/video/a;->hsw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/video/d;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public final d(Landroid/view/SurfaceHolder;)I
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsD:Lcom/tencent/mm/ui/video/ak;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/video/ak;->d(Landroid/view/SurfaceHolder;)I

    move-result v0

    return v0
.end method

.method public final e(Landroid/view/SurfaceHolder;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 218
    iput v8, p0, Lcom/tencent/mm/ui/video/b;->hsE:I

    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v0, v0, Lcom/tencent/mm/ui/video/a;->te:I

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/video/b;->hsD:Lcom/tencent/mm/ui/video/ak;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/video/b;->hsD:Lcom/tencent/mm/ui/video/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/video/ak;->aPl()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz p1, :cond_0

    if-nez v2, :cond_2

    :cond_0
    const-string v0, "MicroMsg.SceneVideo"

    const-string v1, "holder or cam is null "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    :goto_1
    return-void

    .line 218
    :cond_2
    sget-object v1, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v1, v1, Lcom/tencent/mm/compatible/c/m;->cem:I

    if-ne v1, v11, :cond_3

    move v1, v0

    :goto_2
    iget-object v3, p0, Lcom/tencent/mm/ui/video/b;->hsD:Lcom/tencent/mm/ui/video/ak;

    invoke-static {}, Lcom/tencent/mm/ui/video/ak;->aPj()I

    move-result v3

    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v2}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v9}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v10}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v4, v4, Lcom/tencent/mm/ui/video/a;->hsp:I

    iget-object v5, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v5, v5, Lcom/tencent/mm/ui/video/a;->hso:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v10}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v12}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget-object v4, v4, Lcom/tencent/mm/ui/video/a;->hsy:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    const-string v2, "MicroMsg.SceneVideo"

    const-string v4, "doStart fps[%s], camid[%s], width[%s], height[%s]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    iget-object v1, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v1, v1, Lcom/tencent/mm/ui/video/a;->hsp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v10

    iget-object v1, p0, Lcom/tencent/mm/ui/video/b;->hsB:Lcom/tencent/mm/ui/video/a;

    iget v1, v1, Lcom/tencent/mm/ui/video/a;->hso:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v12

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v3, :cond_5

    sget-object v1, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v1, v1, Lcom/tencent/mm/compatible/c/m;->ceg:I

    if-ne v1, v11, :cond_4

    const/16 v1, 0x5a

    :goto_4
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/video/b;->setOrientationHint(I)V

    :goto_5
    :try_start_1
    iget-object v1, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v1, p0, Lcom/tencent/mm/ui/video/b;->hsC:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v2, "MicroMsg.SceneVideo"

    const-string v3, "exception in mediaRecorder[%s] doStartCount[%s]"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    iget v1, p0, Lcom/tencent/mm/ui/video/b;->hsE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/tencent/mm/ui/video/b;->hsE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/ui/video/b;->hsE:I

    iget v1, p0, Lcom/tencent/mm/ui/video/b;->hsE:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/video/b;->hsD:Lcom/tencent/mm/ui/video/ak;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/video/ak;->oB(I)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v1, v1, Lcom/tencent/mm/compatible/c/m;->cem:I

    goto/16 :goto_2

    :catch_1
    move-exception v4

    const-string v5, "MicroMsg.SceneVideo"

    const-string v6, "exception in cam.unlock() [%s]"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    sget-object v1, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v1, v1, Lcom/tencent/mm/compatible/c/m;->ceg:I

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v1, v1, Lcom/tencent/mm/compatible/c/m;->ceh:I

    if-ne v1, v11, :cond_6

    const/16 v1, 0x10e

    :goto_6
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/video/b;->setOrientationHint(I)V

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v1, v1, Lcom/tencent/mm/compatible/c/m;->ceh:I

    goto :goto_6
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tencent/mm/ui/video/b;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/tencent/mm/ui/video/b;->fileSize:I

    return v0
.end method
