.class final Lcom/tencent/mm/modelfriend/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static cbL:[B


# instance fields
.field private final context:Landroid/content/Context;

.field private cpP:Ljava/util/List;

.field private cpQ:Ljava/util/List;

.field private final cqb:Lcom/tencent/mm/modelfriend/g;

.field private cqc:Ljava/util/List;

.field private cqd:Ljava/util/List;

.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/mm/modelfriend/e;->cbL:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/modelfriend/g;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 335
    const-string v0, "addrbook-reader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 326
    new-instance v0, Lcom/tencent/mm/modelfriend/f;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelfriend/f;-><init>(Lcom/tencent/mm/modelfriend/e;)V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/e;->handler:Landroid/os/Handler;

    .line 337
    iput-object p2, p0, Lcom/tencent/mm/modelfriend/e;->cqb:Lcom/tencent/mm/modelfriend/g;

    .line 338
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/e;->context:Landroid/content/Context;

    .line 339
    return-void
.end method

.method private static a(ILjava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 366
    if-nez p1, :cond_0

    .line 367
    const-string v0, "MicroMsg.AddrBookReadThread"

    const-string v1, "sync address book failed, null info list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 409
    :goto_0
    return-object v0

    .line 371
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 373
    if-eqz v0, :cond_1

    .line 374
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 377
    aget-object v4, v0, v9

    .line 378
    const/4 v5, 0x2

    aget-object v5, v0, v5

    .line 379
    const/4 v6, 0x3

    aget-object v6, v0, v6

    .line 380
    if-eqz v5, :cond_1

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    const-string v0, ""

    .line 384
    if-ne p0, v9, :cond_2

    .line 385
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_2
    if-nez p0, :cond_3

    .line 388
    invoke-static {v5}, Lcom/tencent/mm/pluginsdk/c;->kH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_3
    new-instance v7, Lcom/tencent/mm/modelfriend/h;

    invoke-direct {v7}, Lcom/tencent/mm/modelfriend/h;-><init>()V

    .line 392
    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/h;->eZ(Ljava/lang/String;)V

    .line 393
    invoke-static {v4}, Lcom/tencent/mm/platformtools/h;->hJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/mm/modelfriend/h;->fa(Ljava/lang/String;)V

    .line 394
    invoke-static {v4}, Lcom/tencent/mm/platformtools/h;->hI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/h;->fb(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v7, v3}, Lcom/tencent/mm/modelfriend/h;->eY(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v7, v6}, Lcom/tencent/mm/modelfriend/h;->fo(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v7, v0}, Lcom/tencent/mm/modelfriend/h;->eX(Ljava/lang/String;)V

    .line 398
    if-ne p0, v9, :cond_4

    .line 399
    invoke-virtual {v7, v5}, Lcom/tencent/mm/modelfriend/h;->bF(Ljava/lang/String;)V

    .line 401
    :cond_4
    if-nez p0, :cond_5

    .line 402
    invoke-virtual {v7, v5}, Lcom/tencent/mm/modelfriend/h;->ff(Ljava/lang/String;)V

    .line 404
    :cond_5
    invoke-virtual {v7, p0}, Lcom/tencent/mm/modelfriend/h;->setType(I)V

    .line 405
    const v0, 0xb876

    invoke-virtual {v7, v0}, Lcom/tencent/mm/modelfriend/h;->cL(I)V

    .line 407
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 409
    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/modelfriend/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/e;->cpP:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelfriend/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/e;->cpQ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelfriend/e;)Lcom/tencent/mm/modelfriend/g;
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/e;->cqb:Lcom/tencent/mm/modelfriend/g;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 344
    sget-object v1, Lcom/tencent/mm/modelfriend/e;->cbL:[B

    monitor-enter v1

    .line 345
    :try_start_0
    const-string v0, "MicroMsg.AddrBookReadThread"

    const-string v2, "reading email info"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/e;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/c;->aP(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/e;->cqc:Ljava/util/List;

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/e;->cqc:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "MicroMsg.AddrBookReadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync address book email size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/e;->cqc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/e;->cqc:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/tencent/mm/modelfriend/e;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/e;->cpP:Ljava/util/List;

    .line 351
    const-string v0, "MicroMsg.AddrBookReadThread"

    const-string v2, "reading mobile info"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/e;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/c;->aO(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/e;->cqd:Ljava/util/List;

    .line 354
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/e;->cqd:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "MicroMsg.AddrBookReadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync address book mobile size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/e;->cqd:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/e;->cqd:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/tencent/mm/modelfriend/e;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/e;->cpQ:Ljava/util/List;

    .line 359
    const-string v0, "MicroMsg.AddrBookReadThread"

    const-string v2, "reading done"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/e;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
