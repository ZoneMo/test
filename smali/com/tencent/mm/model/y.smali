.class public final Lcom/tencent/mm/model/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chS:Lcom/tencent/mm/model/ad;

.field private chT:Ljava/util/concurrent/BlockingQueue;

.field public chU:Lcom/tencent/mm/model/ab;

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/tencent/mm/model/y;->chS:Lcom/tencent/mm/model/ad;

    .line 29
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/model/y;->chT:Ljava/util/concurrent/BlockingQueue;

    .line 109
    iput-object v2, p0, Lcom/tencent/mm/model/y;->chU:Lcom/tencent/mm/model/ab;

    .line 121
    new-instance v0, Lcom/tencent/mm/model/z;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/model/z;-><init>(Lcom/tencent/mm/model/y;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/model/y;->handler:Landroid/os/Handler;

    .line 44
    iput-object v2, p0, Lcom/tencent/mm/model/y;->chS:Lcom/tencent/mm/model/ad;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/model/y;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/mm/model/y;->chT:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public static l(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/reader_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final j(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {p1, p2}, Lcom/tencent/mm/model/y;->l(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "MicroMsg.GetPicService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPicfileByUrl type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :try_start_0
    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 90
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/mm/model/y;->chT:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/tencent/mm/model/ac;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/tencent/mm/model/ac;-><init>(Lcom/tencent/mm/model/y;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/model/y;->chS:Lcom/tencent/mm/model/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/model/y;->chS:Lcom/tencent/mm/model/ad;

    invoke-virtual {v0}, Lcom/tencent/mm/model/ad;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    :cond_1
    new-instance v0, Lcom/tencent/mm/model/ad;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/ad;-><init>(Lcom/tencent/mm/model/y;)V

    iput-object v0, p0, Lcom/tencent/mm/model/y;->chS:Lcom/tencent/mm/model/ad;

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/model/y;->chS:Lcom/tencent/mm/model/ad;

    invoke-virtual {v0}, Lcom/tencent/mm/model/ad;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final tV()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/model/y;->chS:Lcom/tencent/mm/model/ad;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/model/y;->chS:Lcom/tencent/mm/model/ad;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/mm/model/ad;->chZ:Z

    .line 51
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/model/y;->chS:Lcom/tencent/mm/model/ad;

    .line 52
    return-void
.end method
