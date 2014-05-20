.class public final Lcom/tencent/mm/plugin/search/model/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/storage/ar;
.implements Ljava/io/Closeable;


# instance fields
.field private egK:Lcom/tencent/mm/plugin/search/model/y;

.field private egL:Lcom/tencent/mm/ap/i;

.field private egM:Lcom/tencent/mm/plugin/search/model/ap;

.field private ehS:Z

.field ehT:Lcom/tencent/mm/sdk/b/g;

.field ehU:Lcom/tencent/mm/sdk/platformtools/ay;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/y;Lcom/tencent/mm/plugin/search/model/ap;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/search/model/ag;->ehS:Z

    .line 394
    new-instance v0, Lcom/tencent/mm/plugin/search/model/ah;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/model/ah;-><init>(Lcom/tencent/mm/plugin/search/model/ag;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->ehT:Lcom/tencent/mm/sdk/b/g;

    .line 406
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/search/model/ai;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/search/model/ai;-><init>(Lcom/tencent/mm/plugin/search/model/ag;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->ehU:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 322
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/ag;->egK:Lcom/tencent/mm/plugin/search/model/y;

    .line 323
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sq()Lcom/tencent/mm/ap/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->egL:Lcom/tencent/mm/ap/i;

    .line 324
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/ag;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    .line 327
    new-array v0, v4, [I

    const/high16 v1, 0x1

    aput v1, v0, v3

    new-array v1, v4, [I

    aput v3, v1, v3

    new-instance v2, Lcom/tencent/mm/plugin/search/model/ab;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/ag;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    invoke-direct {v2, v3, v0, v1}, Lcom/tencent/mm/plugin/search/model/ab;-><init>(Lcom/tencent/mm/plugin/search/model/ap;[I[I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->egK:Lcom/tencent/mm/plugin/search/model/y;

    const v1, 0x1001d

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 330
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "Activate"

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ag;->ehT:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 334
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mm/storage/ap;->a(Lcom/tencent/mm/storage/ar;Landroid/os/Looper;)V

    .line 335
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    return-object v0
.end method

.method static synthetic al(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/model/bv;->dz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/ao/a;->tj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ao/d;->tl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/ap/i;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->egL:Lcom/tencent/mm/ap/i;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/search/model/ag;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->ehS:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/search/model/ag;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->ehS:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/y;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->egK:Lcom/tencent/mm/plugin/search/model/y;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)Lcom/tencent/mm/plugin/search/model/af;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/tencent/mm/plugin/search/model/an;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/mm/plugin/search/model/an;-><init>(Lcom/tencent/mm/plugin/search/model/ag;Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)V

    .line 50
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ag;->egK:Lcom/tencent/mm/plugin/search/model/y;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/storage/ap;Lcom/tencent/mm/storage/at;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x1001e

    .line 365
    iget-object v0, p2, Lcom/tencent/mm/storage/at;->giq:Ljava/lang/String;

    const-string v1, "insert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->egK:Lcom/tencent/mm/plugin/search/model/y;

    new-instance v1, Lcom/tencent/mm/plugin/search/model/am;

    iget-object v2, p2, Lcom/tencent/mm/storage/at;->dOI:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/plugin/search/model/am;-><init>(Lcom/tencent/mm/plugin/search/model/ag;Ljava/util/List;)V

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p2, Lcom/tencent/mm/storage/at;->giq:Ljava/lang/String;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-wide v0, p2, Lcom/tencent/mm/storage/at;->gis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 374
    iget-wide v0, p2, Lcom/tencent/mm/storage/at;->gis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->egK:Lcom/tencent/mm/plugin/search/model/y;

    new-instance v1, Lcom/tencent/mm/plugin/search/model/al;

    iget-object v2, p2, Lcom/tencent/mm/storage/at;->bNl:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/plugin/search/model/al;-><init>(Lcom/tencent/mm/plugin/search/model/ag;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ag;->egK:Lcom/tencent/mm/plugin/search/model/y;

    new-instance v1, Lcom/tencent/mm/plugin/search/model/ak;

    iget-wide v2, p2, Lcom/tencent/mm/storage/at;->gis:J

    invoke-direct {v1, p0, v2, v3}, Lcom/tencent/mm/plugin/search/model/ak;-><init>(Lcom/tencent/mm/plugin/search/model/ag;J)V

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    goto :goto_0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ap;->a(Lcom/tencent/mm/storage/ar;)V

    .line 340
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "Activate"

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ag;->ehT:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 341
    return-void
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ag;->close()V

    .line 346
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 347
    return-void
.end method
