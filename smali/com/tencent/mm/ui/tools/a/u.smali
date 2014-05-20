.class public Lcom/tencent/mm/ui/tools/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final hqC:Landroid/os/Handler;

.field private static hqw:Lcom/tencent/mm/ui/tools/a/u;


# instance fields
.field final context:Landroid/content/Context;

.field final hpX:Lcom/tencent/mm/ui/tools/a/n;

.field final hpY:Lcom/tencent/mm/ui/tools/a/e;

.field final hpZ:Lcom/tencent/mm/ui/tools/a/af;

.field final hqA:Ljava/lang/ref/ReferenceQueue;

.field hqB:Z

.field private final hqx:Lcom/tencent/mm/ui/tools/a/x;

.field final hqy:Ljava/util/Map;

.field final hqz:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    .line 68
    new-instance v0, Lcom/tencent/mm/ui/tools/a/v;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/a/v;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqC:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/a/u;->context:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/a/u;->hpX:Lcom/tencent/mm/ui/tools/a/n;

    .line 120
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/a/u;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    .line 121
    iput-object p4, p0, Lcom/tencent/mm/ui/tools/a/u;->hpZ:Lcom/tencent/mm/ui/tools/a/af;

    .line 122
    iput-boolean p5, p0, Lcom/tencent/mm/ui/tools/a/u;->hqB:Z

    .line 123
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hqy:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hqz:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hqA:Ljava/lang/ref/ReferenceQueue;

    .line 126
    new-instance v0, Lcom/tencent/mm/ui/tools/a/x;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/u;->hqA:Ljava/lang/ref/ReferenceQueue;

    sget-object v2, Lcom/tencent/mm/ui/tools/a/u;->hqC:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/tools/a/x;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hqx:Lcom/tencent/mm/ui/tools/a/x;

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hqx:Lcom/tencent/mm/ui/tools/a/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/x;->start()V

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;ZB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/tencent/mm/ui/tools/a/u;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Z)V

    return-void
.end method

.method public static a(Lcom/tencent/mm/ui/tools/a/l;)Lcom/tencent/mm/ui/tools/a/ad;
    .locals 2
    .parameter

    .prologue
    .line 270
    if-nez p0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object must not be zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/tools/a/ad;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/a/ad;-><init>(Lcom/tencent/mm/ui/tools/a/l;)V

    return-object v0
.end method

.method static aOH()Lcom/tencent/mm/ui/tools/a/u;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    return-object v0
.end method

.method public static aOI()Lcom/tencent/mm/ui/tools/a/ad;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/tencent/mm/ui/tools/a/ad;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/a/ad;-><init>()V

    return-object v0
.end method

.method static synthetic aOK()Lcom/tencent/mm/ui/tools/a/u;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    return-object v0
.end method

.method public static ch(Landroid/content/Context;)Lcom/tencent/mm/ui/tools/a/u;
    .locals 2
    .parameter

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    if-nez v0, :cond_0

    .line 53
    const-class v1, Lcom/tencent/mm/ui/tools/a/u;

    monitor-enter v1

    .line 54
    :try_start_0
    new-instance v0, Lcom/tencent/mm/ui/tools/a/w;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/a/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/w;->aOL()Lcom/tencent/mm/ui/tools/a/u;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized close()V
    .locals 3

    .prologue
    .line 95
    const-class v1, Lcom/tencent/mm/ui/tools/a/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/u;->hqy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 98
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/u;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    invoke-interface {v0}, Lcom/tencent/mm/ui/tools/a/e;->clear()V

    .line 99
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/u;->hpZ:Lcom/tencent/mm/ui/tools/a/af;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/af;->shutdown()V

    .line 100
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/u;->hpX:Lcom/tencent/mm/ui/tools/a/n;

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/a/n;->hqm:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/n;->hql:Lcom/tencent/mm/ui/tools/a/p;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/p;->quit()Z

    .line 101
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/u;->hqz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/a/m;

    .line 102
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/m;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    .line 104
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/u;->hqz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/u;->hqy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 106
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/u;->hqx:Lcom/tencent/mm/ui/tools/a/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/x;->shutdown()V

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :cond_2
    :try_start_2
    sget-object v0, Lcom/tencent/mm/ui/tools/a/u;->hqw:Lcom/tencent/mm/ui/tools/a/u;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/u;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    invoke-interface {v0}, Lcom/tencent/mm/ui/tools/a/e;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method


# virtual methods
.method final a(Landroid/widget/ImageView;Lcom/tencent/mm/ui/tools/a/m;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hqz:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public final aOJ()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hqB:Z

    .line 283
    return-void
.end method

.method public final an(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 317
    if-nez p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hqy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/a/a;

    .line 320
    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/a;->cancel()V

    .line 322
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/u;->hpX:Lcom/tencent/mm/ui/tools/a/n;

    iget-object v2, v1, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    :cond_2
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 326
    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hqz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/a/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/m;->cancel()V

    goto :goto_0
.end method

.method final c(Lcom/tencent/mm/ui/tools/a/a;)V
    .locals 3
    .parameter

    .prologue
    .line 338
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/a/a;->hpO:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/a/u;->an(Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/u;->hqy:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hpX:Lcom/tencent/mm/ui/tools/a/n;

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    return-void
.end method

.method final d(Lcom/tencent/mm/ui/tools/a/d;)V
    .locals 6
    .parameter

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/a/d;->aOF()Ljava/util/List;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    :cond_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/a/d;->aOE()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 298
    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/a/d;->aOC()Lcom/tencent/mm/ui/tools/a/s;

    move-result-object v2

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/a/a;

    .line 301
    iget-boolean v4, v0, Lcom/tencent/mm/ui/tools/a/a;->EM:Z

    if-nez v4, :cond_2

    .line 302
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/a/u;->hqy:Ljava/util/Map;

    iget-object v5, v0, Lcom/tencent/mm/ui/tools/a/a;->hpO:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    if-eqz v1, :cond_4

    .line 306
    if-nez v2, :cond_3

    .line 307
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LoadedFrom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 309
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/tools/a/a;->a(Landroid/graphics/Bitmap;Lcom/tencent/mm/ui/tools/a/s;)V

    goto :goto_0

    .line 311
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/a;->error()V

    goto :goto_0
.end method

.method final xW(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/u;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/tools/a/e;->fP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/u;->hpZ:Lcom/tencent/mm/ui/tools/a/af;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/a/af;->aOW()V

    .line 357
    :goto_0
    return-object v0

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/u;->hpZ:Lcom/tencent/mm/ui/tools/a/af;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/a/af;->aOX()V

    goto :goto_0
.end method
