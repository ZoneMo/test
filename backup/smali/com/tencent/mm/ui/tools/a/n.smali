.class final Lcom/tencent/mm/ui/tools/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final context:Landroid/content/Context;

.field final handler:Landroid/os/Handler;

.field final hpY:Lcom/tencent/mm/ui/tools/a/e;

.field final hpZ:Lcom/tencent/mm/ui/tools/a/af;

.field final hql:Lcom/tencent/mm/ui/tools/a/p;

.field final hqm:Ljava/util/concurrent/ExecutorService;

.field final hqn:Ljava/util/Map;

.field final hqo:Landroid/os/Handler;

.field final hqp:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/tencent/mm/ui/tools/a/p;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/a/p;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->hql:Lcom/tencent/mm/ui/tools/a/p;

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->hql:Lcom/tencent/mm/ui/tools/a/p;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/a/p;->start()V

    .line 46
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/a/n;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/a/n;->hqm:Ljava/util/concurrent/ExecutorService;

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->hqn:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/tencent/mm/ui/tools/a/o;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/n;->hql:Lcom/tencent/mm/ui/tools/a/p;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/a/p;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/mm/ui/tools/a/o;-><init>(Landroid/os/Looper;Lcom/tencent/mm/ui/tools/a/n;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    .line 50
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/a/n;->hqo:Landroid/os/Handler;

    .line 51
    iput-object p4, p0, Lcom/tencent/mm/ui/tools/a/n;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    .line 52
    iput-object p5, p0, Lcom/tencent/mm/ui/tools/a/n;->hpZ:Lcom/tencent/mm/ui/tools/a/af;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->hqp:Ljava/util/List;

    .line 54
    return-void
.end method

.method private c(Lcom/tencent/mm/ui/tools/a/d;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x7

    .line 123
    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/a/d;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->hqp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/tencent/mm/ui/tools/a/d;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/a/d;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/a/d;->aOE()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/tools/a/e;->s(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->hqn:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/a/d;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/a/n;->c(Lcom/tencent/mm/ui/tools/a/d;)V

    .line 109
    return-void
.end method

.method final b(Lcom/tencent/mm/ui/tools/a/d;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/n;->hqn:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/a/d;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/a/n;->c(Lcom/tencent/mm/ui/tools/a/d;)V

    .line 120
    return-void
.end method
