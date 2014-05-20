.class abstract Lcom/tencent/mm/ui/tools/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final hpV:Ljava/util/concurrent/locks/Lock;

.field protected static final hpW:I


# instance fields
.field final cnG:Ljava/lang/String;

.field csW:Landroid/graphics/Bitmap;

.field final hpN:Lcom/tencent/mm/ui/tools/a/ab;

.field final hpX:Lcom/tencent/mm/ui/tools/a/n;

.field final hpY:Lcom/tencent/mm/ui/tools/a/e;

.field final hpZ:Lcom/tencent/mm/ui/tools/a/af;

.field final hqa:Ljava/util/List;

.field hqb:Ljava/util/concurrent/Future;

.field hqc:Lcom/tencent/mm/ui/tools/a/s;

.field hqd:Ljava/lang/Exception;

.field hqe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/tools/a/d;->hpV:Ljava/util/concurrent/locks/Lock;

    .line 32
    const/16 v0, 0x16

    sput v0, Lcom/tencent/mm/ui/tools/a/d;->hpW:I

    return-void
.end method

.method constructor <init>(Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/a/d;->hpX:Lcom/tencent/mm/ui/tools/a/n;

    .line 49
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/a/d;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    .line 50
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/a/d;->hpZ:Lcom/tencent/mm/ui/tools/a/af;

    .line 51
    iget-object v0, p4, Lcom/tencent/mm/ui/tools/a/a;->cnG:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->cnG:Ljava/lang/String;

    .line 52
    iget-object v0, p4, Lcom/tencent/mm/ui/tools/a/a;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqa:Ljava/util/List;

    .line 54
    invoke-virtual {p0, p4}, Lcom/tencent/mm/ui/tools/a/d;->a(Lcom/tencent/mm/ui/tools/a/a;)V

    .line 55
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)Lcom/tencent/mm/ui/tools/a/d;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p4, Lcom/tencent/mm/ui/tools/a/a;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    iget v0, v0, Lcom/tencent/mm/ui/tools/a/ab;->resourceId:I

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lcom/tencent/mm/ui/tools/a/ae;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/a/ae;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V

    .line 201
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p4, Lcom/tencent/mm/ui/tools/a/a;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/ab;->hqL:Lcom/tencent/mm/ui/tools/a/l;

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Lcom/tencent/mm/ui/tools/a/k;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/a/k;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p4, Lcom/tencent/mm/ui/tools/a/a;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/ab;->uri:Landroid/net/Uri;

    .line 182
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "photo"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Lcom/tencent/mm/ui/tools/a/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/a/h;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V

    goto :goto_0

    .line 189
    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/tools/a/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/a/i;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V

    goto :goto_0

    .line 192
    :cond_3
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    const-string v1, "android_asset"

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    new-instance v0, Lcom/tencent/mm/ui/tools/a/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/a/c;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V

    goto :goto_0

    .line 197
    :cond_4
    new-instance v0, Lcom/tencent/mm/ui/tools/a/q;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/a/q;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V

    goto/16 :goto_0

    .line 199
    :cond_5
    const-string v0, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    new-instance v0, Lcom/tencent/mm/ui/tools/a/ae;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/a/ae;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V

    goto/16 :goto_0

    .line 205
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "[for request] not supported type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(IILandroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 212
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 213
    const/4 v0, 0x1

    .line 214
    if-gt v1, p1, :cond_0

    if-le v2, p0, :cond_1

    .line 215
    :cond_0
    int-to-float v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 216
    int-to-float v1, v2

    int-to-float v2, p0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 217
    if-ge v0, v1, :cond_2

    .line 220
    :cond_1
    :goto_0
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 222
    return-void

    :cond_2
    move v0, v1

    .line 217
    goto :goto_0
.end method

.method private aOD()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/d;->cnG:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/tools/a/e;->fP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/a/a;

    .line 96
    iget-boolean v0, v0, Lcom/tencent/mm/ui/tools/a/a;->hpS:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 102
    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hpZ:Lcom/tencent/mm/ui/tools/a/af;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/af;->aOW()V

    .line 104
    sget-object v0, Lcom/tencent/mm/ui/tools/a/s;->hqr:Lcom/tencent/mm/ui/tools/a/s;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqc:Lcom/tencent/mm/ui/tools/a/s;

    move-object v0, v1

    .line 123
    :cond_1
    :goto_1
    return-object v0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/a/d;->a(Lcom/tencent/mm/ui/tools/a/ab;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/d;->hpZ:Lcom/tencent/mm/ui/tools/a/af;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/tools/a/af;->q(Landroid/graphics/Bitmap;)V

    .line 112
    sget-object v1, Lcom/tencent/mm/ui/tools/a/d;->hpV:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/d;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/a/ab;->aON()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/tencent/mm/ui/tools/a/d;->hqe:I

    if-eqz v1, :cond_6

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/d;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    iget v7, p0, Lcom/tencent/mm/ui/tools/a/d;->hqe:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/a/ab;->aON()Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, v1, Lcom/tencent/mm/ui/tools/a/ab;->dhY:I

    iget v8, v1, Lcom/tencent/mm/ui/tools/a/ab;->dhZ:I

    iget v9, v1, Lcom/tencent/mm/ui/tools/a/ab;->hqO:F

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_4

    iget-boolean v10, v1, Lcom/tencent/mm/ui/tools/a/ab;->hqR:Z

    if-eqz v10, :cond_7

    iget v10, v1, Lcom/tencent/mm/ui/tools/a/ab;->hqP:F

    iget v11, v1, Lcom/tencent/mm/ui/tools/a/ab;->hqQ:F

    invoke-virtual {v5, v9, v10, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_4
    :goto_2
    iget-boolean v9, v1, Lcom/tencent/mm/ui/tools/a/ab;->hqM:Z

    if-eqz v9, :cond_9

    int-to-float v1, v6

    int-to-float v6, v3

    div-float/2addr v1, v6

    int-to-float v6, v8

    int-to-float v8, v4

    div-float/2addr v6, v8

    cmpl-float v8, v1, v6

    if-lez v8, :cond_8

    int-to-float v8, v4

    div-float/2addr v6, v1

    mul-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    move v12, v1

    move v1, v2

    move v2, v4

    move v4, v6

    move v6, v12

    :goto_3
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_4
    if-eqz v7, :cond_5

    int-to-float v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_5
    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 118
    :cond_6
    sget-object v1, Lcom/tencent/mm/ui/tools/a/d;->hpV:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/d;->hpZ:Lcom/tencent/mm/ui/tools/a/af;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/tools/a/af;->r(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 115
    :cond_7
    :try_start_1
    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 118
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/mm/ui/tools/a/d;->hpV:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 115
    :cond_8
    int-to-float v8, v3

    div-float/2addr v1, v6

    mul-float/2addr v1, v8

    float-to-double v8, v1

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    move v12, v1

    move v1, v3

    move v3, v12

    goto :goto_3

    :cond_9
    iget-boolean v1, v1, Lcom/tencent/mm/ui/tools/a/ab;->hqN:Z

    if-eqz v1, :cond_b

    int-to-float v1, v6

    int-to-float v6, v3

    div-float/2addr v1, v6

    int-to-float v6, v8

    int-to-float v8, v4

    div-float/2addr v6, v8

    cmpg-float v8, v1, v6

    if-gez v8, :cond_a

    :goto_5
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v1, v2

    goto :goto_4

    :cond_a
    move v1, v6

    goto :goto_5

    :cond_b
    if-eqz v6, :cond_d

    if-eqz v8, :cond_d

    if-ne v6, v3, :cond_c

    if-eq v8, v4, :cond_d

    :cond_c
    int-to-float v1, v6

    int-to-float v6, v3

    div-float/2addr v1, v6

    int-to-float v6, v8

    int-to-float v8, v4

    div-float/2addr v6, v8

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Matrix;->preScale(FF)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    move v1, v2

    goto :goto_4

    :cond_e
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method abstract a(Lcom/tencent/mm/ui/tools/a/ab;)Landroid/graphics/Bitmap;
.end method

.method final a(Lcom/tencent/mm/ui/tools/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method aOC()Lcom/tencent/mm/ui/tools/a/s;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqc:Lcom/tencent/mm/ui/tools/a/s;

    return-object v0
.end method

.method final aOE()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->csW:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method final aOF()Ljava/util/List;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqa:Ljava/util/List;

    return-object v0
.end method

.method final b(Lcom/tencent/mm/ui/tools/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method final cancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/d;->hqa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/d;->hqb:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/d;->hqb:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->cnG:Ljava/lang/String;

    return-object v0
.end method

.method final isCancelled()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqb:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqb:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Monet-"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hpN:Lcom/tencent/mm/ui/tools/a/ab;

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/a/ab;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/ab;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/a/d;->aOD()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->csW:Landroid/graphics/Bitmap;

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->csW:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hpX:Lcom/tencent/mm/ui/tools/a/n;

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Monet-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 78
    :goto_2
    return-void

    .line 64
    :cond_0
    :try_start_1
    iget-object v3, v0, Lcom/tencent/mm/ui/tools/a/ab;->hqL:Lcom/tencent/mm/ui/tools/a/l;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/ab;->hqL:Lcom/tencent/mm/ui/tools/a/l;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/l;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/tencent/mm/ui/tools/a/ab;->resourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hpX:Lcom/tencent/mm/ui/tools/a/n;

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqd:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Monet-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Monet-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
