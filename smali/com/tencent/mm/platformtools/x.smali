.class final enum Lcom/tencent/mm/platformtools/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum cGC:Lcom/tencent/mm/platformtools/x;

.field private static cGH:Landroid/util/DisplayMetrics;

.field private static final synthetic cGI:[Lcom/tencent/mm/platformtools/x;


# instance fields
.field private cGD:Ljava/util/Map;

.field private cGE:Ljava/util/Map;

.field private cGF:Lcom/tencent/mm/sdk/platformtools/bu;

.field private cGG:Lcom/tencent/mm/sdk/platformtools/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/tencent/mm/platformtools/x;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/tencent/mm/platformtools/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/mm/platformtools/x;->cGC:Lcom/tencent/mm/platformtools/x;

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/mm/platformtools/x;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/mm/platformtools/x;->cGC:Lcom/tencent/mm/platformtools/x;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/platformtools/x;->cGI:[Lcom/tencent/mm/platformtools/x;

    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/platformtools/x;->cGH:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGD:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGE:Ljava/util/Map;

    .line 167
    iput-object v1, p0, Lcom/tencent/mm/platformtools/x;->cGF:Lcom/tencent/mm/sdk/platformtools/bu;

    .line 168
    iput-object v1, p0, Lcom/tencent/mm/platformtools/x;->cGG:Lcom/tencent/mm/sdk/platformtools/bu;

    .line 423
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/platformtools/x;Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    const-string v0, "picture strategy here must be validity"

    invoke-static {p1}, Lcom/tencent/mm/platformtools/v;->c(Lcom/tencent/mm/platformtools/s;)Z

    move-result v2

    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/tencent/mm/platformtools/s;->Fu()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/platformtools/x;->cGE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/platformtools/x;->cGE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/platformtools/x;)Lcom/tencent/mm/sdk/platformtools/bu;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGF:Lcom/tencent/mm/sdk/platformtools/bu;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/platformtools/x;Lcom/tencent/mm/sdk/platformtools/bu;)Lcom/tencent/mm/sdk/platformtools/bu;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tencent/mm/platformtools/x;->cGF:Lcom/tencent/mm/sdk/platformtools/bu;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/platformtools/x;Lcom/tencent/mm/platformtools/s;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/platformtools/x;->b(Lcom/tencent/mm/platformtools/s;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/platformtools/x;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-static {}, Lcom/tencent/mm/platformtools/v;->Fy()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/platformtools/w;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lcom/tencent/mm/platformtools/w;->i(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Lcom/tencent/mm/platformtools/v;->h(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGD:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGD:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/platformtools/aa;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/mm/platformtools/aa;->cGL:Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/platformtools/x;Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    const-string v0, "picture strategy here must be validity"

    invoke-static {p1}, Lcom/tencent/mm/platformtools/v;->c(Lcom/tencent/mm/platformtools/s;)Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/tencent/mm/platformtools/s;->Fu()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/platformtools/x;->cGE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/platformtools/x;->cGE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/platformtools/x;->d(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/mm/platformtools/x;->d(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/tencent/mm/platformtools/s;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 330
    const-string v0, "picture strategy here must be validity"

    invoke-static {p1}, Lcom/tencent/mm/platformtools/v;->c(Lcom/tencent/mm/platformtools/s;)Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 332
    invoke-interface {p1}, Lcom/tencent/mm/platformtools/s;->Fu()Ljava/lang/String;

    move-result-object v1

    .line 333
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGE:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGE:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 334
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGE:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGE:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_1
    return-void

    .line 333
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 178
    const-string v0, "picture strategy here must be validity"

    invoke-static {p1}, Lcom/tencent/mm/platformtools/v;->c(Lcom/tencent/mm/platformtools/s;)Z

    move-result v2

    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 180
    invoke-interface {p1}, Lcom/tencent/mm/platformtools/s;->Fs()Ljava/lang/String;

    move-result-object v2

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGD:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/platformtools/aa;

    .line 183
    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/tencent/mm/platformtools/aa;

    invoke-direct {v0}, Lcom/tencent/mm/platformtools/aa;-><init>()V

    .line 187
    :cond_0
    iget-boolean v3, v0, Lcom/tencent/mm/platformtools/aa;->cGL:Z

    if-eqz v3, :cond_3

    .line 189
    iget v3, v0, Lcom/tencent/mm/platformtools/aa;->cGM:I

    if-lt v3, v10, :cond_2

    .line 190
    iget v3, v0, Lcom/tencent/mm/platformtools/aa;->cGN:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->M(J)J

    move-result-wide v3

    const-wide/16 v5, 0x78

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 192
    const-string v0, "MicroMsg.MMPictureLogic"

    const-string v3, "download fail interval less than %d s for %s"

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v5, 0x78

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v2, v4, v7

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 238
    :goto_0
    return-object v0

    .line 196
    :cond_1
    iput v8, v0, Lcom/tencent/mm/platformtools/aa;->cGM:I

    .line 202
    :goto_1
    iput-boolean v8, v0, Lcom/tencent/mm/platformtools/aa;->cGL:Z

    .line 203
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lcom/tencent/mm/platformtools/aa;->cGN:I

    .line 204
    iget-object v3, p0, Lcom/tencent/mm/platformtools/x;->cGD:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :goto_2
    invoke-interface {p1}, Lcom/tencent/mm/platformtools/s;->Fv()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 219
    invoke-interface {p1}, Lcom/tencent/mm/platformtools/s;->Fr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/x;->hN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/platformtools/x;->a(Lcom/tencent/mm/platformtools/s;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/tencent/mm/platformtools/x;->cGD:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_2
    iget v3, v0, Lcom/tencent/mm/platformtools/aa;->cGM:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/tencent/mm/platformtools/aa;->cGM:I

    goto :goto_1

    .line 208
    :cond_3
    iget v3, v0, Lcom/tencent/mm/platformtools/aa;->cGN:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->M(J)J

    move-result-wide v3

    const-wide/16 v5, 0x78

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    .line 209
    const-string v0, "MicroMsg.MMPictureLogic"

    const-string v3, "downloading interval less than %d s for %s"

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v5, 0x78

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v2, v4, v7

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 210
    goto :goto_0

    .line 212
    :cond_4
    iget v3, v0, Lcom/tencent/mm/platformtools/aa;->cGM:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/tencent/mm/platformtools/aa;->cGM:I

    .line 213
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lcom/tencent/mm/platformtools/aa;->cGN:I

    .line 214
    iget-object v3, p0, Lcom/tencent/mm/platformtools/x;->cGD:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGF:Lcom/tencent/mm/sdk/platformtools/bu;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGF:Lcom/tencent/mm/sdk/platformtools/bu;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/bu;->azH()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    :cond_6
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/bu;

    const-string v2, "readerapp-pic-logic-download"

    invoke-direct {v0, v7, v2, v10}, Lcom/tencent/mm/sdk/platformtools/bu;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGF:Lcom/tencent/mm/sdk/platformtools/bu;

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGF:Lcom/tencent/mm/sdk/platformtools/bu;

    new-instance v2, Lcom/tencent/mm/platformtools/y;

    invoke-direct {v2, p1}, Lcom/tencent/mm/platformtools/y;-><init>(Lcom/tencent/mm/platformtools/s;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/sdk/platformtools/bu;->c(Lcom/tencent/mm/sdk/platformtools/bw;)I

    move-object v0, v1

    .line 230
    goto/16 :goto_0

    .line 234
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGG:Lcom/tencent/mm/sdk/platformtools/bu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGG:Lcom/tencent/mm/sdk/platformtools/bu;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/bu;->azH()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 235
    :cond_9
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/bu;

    const-string v2, "readerapp-pic-logic-reader"

    invoke-direct {v0, v7, v2, v7}, Lcom/tencent/mm/sdk/platformtools/bu;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGG:Lcom/tencent/mm/sdk/platformtools/bu;

    .line 237
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/platformtools/x;->cGG:Lcom/tencent/mm/sdk/platformtools/bu;

    new-instance v2, Lcom/tencent/mm/platformtools/z;

    invoke-direct {v2, p1}, Lcom/tencent/mm/platformtools/z;-><init>(Lcom/tencent/mm/platformtools/s;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/sdk/platformtools/bu;->c(Lcom/tencent/mm/sdk/platformtools/bw;)I

    move-object v0, v1

    .line 238
    goto/16 :goto_0
.end method

.method public static hN(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 364
    sget-object v0, Lcom/tencent/mm/platformtools/x;->cGH:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/platformtools/x;->cGH:Landroid/util/DisplayMetrics;

    :cond_0
    sget-object v0, Lcom/tencent/mm/platformtools/x;->cGH:Landroid/util/DisplayMetrics;

    .line 365
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v1, v0}, Lcom/tencent/mm/platformtools/x;->p(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static p(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const-string v1, "MicroMsg.MMPictureLogic"

    const-string v2, "error input, path is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-object v0

    .line 353
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 354
    :cond_1
    const-string v1, "MicroMsg.MMPictureLogic"

    const-string v2, "error input, targetWidth %d, targetHeight %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/tencent/mm/sdk/platformtools/h;->w(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/platformtools/x;
    .locals 1
    .parameter

    .prologue
    .line 139
    const-class v0, Lcom/tencent/mm/platformtools/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/platformtools/x;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/platformtools/x;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/tencent/mm/platformtools/x;->cGI:[Lcom/tencent/mm/platformtools/x;

    invoke-virtual {v0}, [Lcom/tencent/mm/platformtools/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/platformtools/x;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/tencent/mm/platformtools/s;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 275
    const-string v0, "picture strategy here must be validity"

    invoke-static {p1}, Lcom/tencent/mm/platformtools/v;->c(Lcom/tencent/mm/platformtools/s;)Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 278
    if-eqz p2, :cond_1

    .line 279
    sget-object v0, Lcom/tencent/mm/platformtools/t;->cGx:Lcom/tencent/mm/platformtools/t;

    invoke-interface {p1, p2, v0}, Lcom/tencent/mm/platformtools/s;->a(Landroid/graphics/Bitmap;Lcom/tencent/mm/platformtools/t;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    if-eq v0, p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/platformtools/x;->b(Lcom/tencent/mm/platformtools/s;Landroid/graphics/Bitmap;)V

    move-object p2, v0

    .line 285
    :cond_1
    return-object p2
.end method
