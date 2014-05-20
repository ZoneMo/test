.class public final Lcom/tencent/mm/z/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cuX:Ljava/util/List;


# instance fields
.field private cvl:Z

.field private cvm:Z

.field private cvn:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-boolean v1, p0, Lcom/tencent/mm/z/n;->cvl:Z

    .line 113
    iput-boolean v1, p0, Lcom/tencent/mm/z/n;->cvm:Z

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/n;->cvn:Ljava/util/List;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/n;->cvl:Z

    .line 118
    iput-boolean v1, p0, Lcom/tencent/mm/z/n;->cvm:Z

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/n;->cvn:Ljava/util/List;

    .line 120
    return-void
.end method

.method public static a(Lcom/tencent/mm/model/ax;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    sget-object v1, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/tencent/mm/protocal/a/dv;)V
    .locals 4
    .parameter

    .prologue
    .line 928
    iget-object v2, p0, Lcom/tencent/mm/protocal/a/dv;->fBb:Ljava/util/LinkedList;

    .line 929
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/dv;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/tencent/mm/model/bv;->n(Ljava/lang/String;I)I

    .line 929
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 932
    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/mm/protocal/a/ob;)V
    .locals 1
    .parameter

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/protocal/a/ob;[B)V

    .line 312
    return-void
.end method

.method private static a(Lcom/tencent/mm/protocal/a/ob;Ljava/lang/String;Lcom/tencent/mm/storage/i;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/p/k;->eG(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v0

    .line 483
    iput-object p1, v0, Lcom/tencent/mm/p/a;->field_username:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqy:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/p/a;->field_brandList:Ljava/lang/String;

    .line 486
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNw:Lcom/tencent/mm/protocal/a/dl;

    .line 487
    if-eqz v1, :cond_0

    .line 488
    iget v2, v1, Lcom/tencent/mm/protocal/a/dl;->cqC:I

    iput v2, v0, Lcom/tencent/mm/p/a;->field_brandFlag:I

    .line 489
    iget-object v2, v1, Lcom/tencent/mm/protocal/a/dl;->cqE:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/p/a;->field_brandInfo:Ljava/lang/String;

    .line 490
    iget-object v2, v1, Lcom/tencent/mm/protocal/a/dl;->cqF:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/p/a;->field_brandIconURL:Ljava/lang/String;

    .line 491
    iget-object v1, v1, Lcom/tencent/mm/protocal/a/dl;->cqD:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/p/a;->field_extInfo:Ljava/lang/String;

    .line 494
    :cond_0
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/p/k;->b(Lcom/tencent/mm/p/a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/p/k;->a(Lcom/tencent/mm/p/a;)Z

    .line 498
    :cond_1
    iget v0, v0, Lcom/tencent/mm/p/a;->field_type:I

    iput v0, p2, Lcom/tencent/mm/storage/i;->bUi:I

    .line 500
    :cond_2
    return-void
.end method

.method private static a(Lcom/tencent/mm/protocal/a/ob;[B)V
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 316
    if-nez p0, :cond_1

    .line 317
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "unable to parse mod contact"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v4

    .line 326
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPe:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "processModContact user is null user:%s enuser:%s"

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v4, v6, v3

    aput-object v5, v6, v2

    invoke-static {v0, v1, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_2
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "processModContact : %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-static {v0, v1, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v6

    .line 336
    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->aAs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "cat\'s replace user with stranger"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_3
    new-instance v7, Lcom/tencent/mm/storage/i;

    invoke-direct {v7, v4}, Lcom/tencent/mm/storage/i;-><init>(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bx(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEj:I

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEk:I

    and-int/2addr v0, v1

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->setType(I)V

    .line 343
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 344
    invoke-virtual {v7, v5}, Lcom/tencent/mm/storage/i;->tF(Ljava/lang/String;)V

    .line 348
    :cond_4
    :goto_1
    if-nez v6, :cond_12

    const-wide/16 v0, 0x0

    :goto_2
    iput-wide v0, v7, Lcom/tencent/mm/storage/i;->cfY:J

    .line 349
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bv(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bw(Ljava/lang/String;)V

    .line 352
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqq:I

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bL(I)V

    .line 353
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEp:I

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bS(I)V

    .line 354
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOY:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bM(Ljava/lang/String;)V

    .line 355
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEt:I

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bT(I)V

    .line 356
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqs:I

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bN(I)V

    .line 357
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqx:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->Tu:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/mm/protocal/a/ob;->Tv:Ljava/lang/String;

    invoke-static {v0, v1, v8}, Lcom/tencent/mm/storage/RegionCodeDecoder;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bO(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqr:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bz(Ljava/lang/String;)V

    .line 359
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNp:I

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bV(I)V

    .line 360
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNq:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bN(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->fzV:I

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->setSource(I)V

    .line 362
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNt:I

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bP(I)V

    .line 363
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNs:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bE(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNr:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->dh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 365
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNr:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bD(Ljava/lang/String;)V

    .line 367
    :cond_5
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bX(I)V

    .line 369
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bJ(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bI(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fAb:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/mm/storage/i;->bUj:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPo:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/mm/storage/i;->bUk:Ljava/lang/String;

    .line 375
    iget-object v0, v6, Lcom/tencent/mm/storage/i;->bUk:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPo:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 376
    invoke-static {}, Lcom/tencent/mm/ae/c;->BT()Lcom/tencent/mm/ae/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ae/c;->gl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.RemarkImageStorage"

    const-string v8, "remove remark image: %s, path:%s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v3

    aput-object v0, v9, v2

    invoke-static {v1, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 379
    :cond_6
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v0

    if-nez v0, :cond_13

    .line 380
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/tencent/mm/storage/k;->g(Ljava/lang/String;[B)I

    .line 381
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rJ()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->lP(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 382
    invoke-static {p0, v4, v7}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/protocal/a/ob;Ljava/lang/String;Lcom/tencent/mm/storage/i;)V

    .line 389
    :cond_7
    :goto_3
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPn:I

    iput v0, v7, Lcom/tencent/mm/storage/i;->field_deleteFlag:I

    .line 391
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/m;->fzB:Lcom/tencent/mm/protocal/a/mu;

    if-eqz v0, :cond_8

    .line 392
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/m;->fzB:Lcom/tencent/mm/protocal/a/mu;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/mu;->fBp:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/mm/storage/i;->bUl:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/m;->fzB:Lcom/tencent/mm/protocal/a/mu;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/mu;->fBq:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/mm/storage/i;->bUm:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/m;->fzB:Lcom/tencent/mm/protocal/a/mu;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/mu;->fBr:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/mm/storage/i;->bUn:Ljava/lang/String;

    .line 397
    :cond_8
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->ru()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v3

    .line 398
    :cond_9
    :goto_4
    invoke-static {v4}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 399
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->qP()V

    .line 401
    :cond_a
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 402
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->qS()V

    .line 405
    :cond_b
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 406
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Lcom/tencent/mm/storage/k;->b(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    .line 411
    :goto_5
    if-eqz v0, :cond_c

    .line 412
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "needModContact"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {v7}, Lcom/tencent/mm/model/w;->o(Lcom/tencent/mm/storage/i;)V

    .line 416
    :cond_c
    invoke-static {v4}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 418
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    if-eqz v0, :cond_d

    .line 419
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ce;->fDc:Ljava/util/LinkedList;

    invoke-static {v4, v0}, Lcom/tencent/mm/z/n;->a(Ljava/lang/String;Ljava/util/LinkedList;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 420
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ce;->fDc:Ljava/util/LinkedList;

    invoke-static {v4, v0}, Lcom/tencent/mm/z/n;->b(Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 424
    :cond_d
    const-string v1, "MicroMsg.SyncDoCmd"

    const-string v5, "processModContact chatroom count:%d"

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    if-nez v0, :cond_1b

    move v0, v3

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-static {v1, v5, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ce;->fzc:I

    if-eqz v0, :cond_f

    .line 426
    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "mod roomdata "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/mm/protocal/a/ob;->fPc:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/tencent/mm/plugin/chatroom/b/a;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/chatroom/b/a;-><init>()V

    .line 428
    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPm:I

    iput v1, v0, Lcom/tencent/mm/plugin/chatroom/b/a;->type:I

    .line 429
    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPl:I

    iput v1, v0, Lcom/tencent/mm/plugin/chatroom/b/a;->yx:I

    .line 430
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEv:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/chatroom/b/a;->cWp:Ljava/lang/String;

    .line 431
    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPk:I

    iput v1, v0, Lcom/tencent/mm/plugin/chatroom/b/a;->cWr:I

    .line 432
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ce;->fDd:I

    if-nez v1, :cond_e

    .line 433
    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPk:I

    iput v1, v0, Lcom/tencent/mm/plugin/chatroom/b/a;->cWq:I

    .line 435
    :cond_e
    const-string v1, "MicroMsg.SyncDoCmd"

    const-string v5, "chatOwner:%s, type:%d,  maxCount: %d, upgrader: %s,  Version:%d,  infoMask:%d, isInit:%b"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/tencent/mm/protocal/a/ob;->fPb:Ljava/lang/String;

    aput-object v9, v8, v3

    iget v9, p0, Lcom/tencent/mm/protocal/a/ob;->fPm:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    iget v9, p0, Lcom/tencent/mm/protocal/a/ob;->fPl:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    iget-object v9, p0, Lcom/tencent/mm/protocal/a/ob;->fEv:Ljava/lang/String;

    aput-object v9, v8, v13

    const/4 v9, 0x4

    iget v10, p0, Lcom/tencent/mm/protocal/a/ob;->fPk:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    iget v10, v10, Lcom/tencent/mm/protocal/a/ce;->fDd:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget-object v10, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    iget v10, v10, Lcom/tencent/mm/protocal/a/ce;->fDd:I

    if-nez v10, :cond_1c

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v1, v5, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPb:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v2, v3, v0}, Lcom/tencent/mm/model/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/a/ce;Ljava/lang/String;Lcom/tencent/mm/plugin/chatroom/b/a;)Z

    .line 440
    :cond_f
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rc()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 441
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    .line 444
    :cond_10
    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->getType()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getType()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eq v0, v1, :cond_0

    .line 445
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getType()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1d

    .line 446
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->ub(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 345
    :cond_11
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-lez v0, :cond_4

    .line 346
    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->aAs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->tF(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 348
    :cond_12
    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_2

    .line 385
    :cond_13
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/k;->tT(Ljava/lang/String;)I

    .line 386
    invoke-static {v7, p0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/storage/i;Lcom/tencent/mm/protocal/a/ob;)Z

    goto/16 :goto_3

    .line 397
    :cond_14
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sv()Lcom/tencent/mm/storage/cf;

    move-result-object v0

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cf;->vF(Ljava/lang/String;)Lcom/tencent/mm/storage/ce;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ce;->aAs()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sv()Lcom/tencent/mm/storage/cf;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/cf;->vF(Ljava/lang/String;)Lcom/tencent/mm/storage/ce;

    move-result-object v0

    :cond_16
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ce;->aAs()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "MicroMsg.SyncDoCmd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mod stranger remark : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ce;->aAs()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ce;->ru()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ce;->ru()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/h;->hI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/tencent/mm/storage/i;->bJ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ce;->ru()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/h;->hJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/tencent/mm/storage/i;->bI(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sv()Lcom/tencent/mm/storage/cf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ce;->aAs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/cf;->vG(Ljava/lang/String;)I

    move v0, v2

    :goto_8
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getSource()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    const/4 v1, 0x0

    if-eqz p0, :cond_19

    iget-object v8, p0, Lcom/tencent/mm/protocal/a/ob;->fPh:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_19

    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v1

    iget-object v8, p0, Lcom/tencent/mm/protocal/a/ob;->fPh:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/mm/protocal/a/ob;->fPi:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Lcom/tencent/mm/modelfriend/i;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/modelfriend/h;

    move-result-object v1

    :cond_17
    :goto_9
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yW()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "MicroMsg.SyncDoCmd"

    const-string v9, "remarkName RealName[%s], User[%s], remarkChange[%s]"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->getUsername()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v8, v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/tencent/mm/modelfriend/h;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lcom/tencent/mm/modelfriend/h;->setStatus(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yV()V

    if-nez v0, :cond_18

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/h;->hI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bJ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/h;->hJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tencent/mm/storage/i;->bI(Ljava/lang/String;)V

    move v0, v2

    :cond_18
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v8

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yK()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/tencent/mm/modelfriend/i;->a(Ljava/lang/String;Lcom/tencent/mm/modelfriend/h;)I

    goto/16 :goto_4

    :cond_19
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tencent/mm/modelfriend/i;->fq(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/h;

    move-result-object v1

    goto :goto_9

    .line 408
    :cond_1a
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/tencent/mm/storage/k;->A(Lcom/tencent/mm/storage/i;)Z

    goto/16 :goto_5

    .line 424
    :cond_1b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ce;->fzc:I

    goto/16 :goto_6

    :cond_1c
    move v2, v3

    .line 435
    goto/16 :goto_7

    .line 448
    :cond_1d
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->uc(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_1e
    move v0, v3

    goto/16 :goto_8

    .line 397
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/protocal/a/l;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "no notifiers, ignore"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 153
    :cond_2
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "not new msg, ignore"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p2, Lcom/tencent/mm/protocal/a/l;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/cb;

    invoke-direct {v2, v0}, Lcom/tencent/mm/storage/cb;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/cb;->vA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->aDi()Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "account no notification"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/z/n;->cvm:Z

    if-nez v0, :cond_6

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/n;->cvm:Z

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    sget-object v2, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    monitor-enter v2

    .line 170
    :try_start_0
    sget-object v0, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/ax;

    .line 171
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/ax;

    .line 175
    new-instance v2, Landroid/os/Handler;

    invoke-interface {v0}, Lcom/tencent/mm/model/ax;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/tencent/mm/z/p;

    invoke-direct {v3, p0, v0, p1}, Lcom/tencent/mm/z/p;-><init>(Lcom/tencent/mm/z/n;Lcom/tencent/mm/model/ax;Lcom/tencent/mm/storage/ak;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/z/n;->cvn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static a(Lcom/tencent/mm/storage/i;Lcom/tencent/mm/protocal/a/ob;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 504
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    :cond_0
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "dkinit dealModContactExtInfo failed invalid contact"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x0

    .line 552
    :goto_0
    return v0

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->aAs()Ljava/lang/String;

    move-result-object v3

    .line 512
    invoke-static {v2, p1}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/ob;)Lcom/tencent/mm/m/x;

    move-result-object v0

    .line 513
    invoke-static {}, Lcom/tencent/mm/m/af;->wm()Lcom/tencent/mm/m/y;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/mm/m/y;->a(Lcom/tencent/mm/m/x;)Z

    .line 516
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fNv:Lcom/tencent/mm/protocal/a/vp;

    .line 517
    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@chatroom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    .line 518
    const-string v4, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SnsFlag modcontact "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/tencent/mm/protocal/a/vp;->cqz:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v4, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SnsBg modcontact "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/tencent/mm/protocal/a/vp;->cqA:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v4, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SnsBgId modcontact "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/tencent/mm/protocal/a/vp;->cqB:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v4, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SnsBgId modcontact "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/tencent/mm/protocal/a/vp;->fWj:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 523
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/tencent/mm/pluginsdk/v;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/vp;)Z

    .line 528
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/ah/b;->v(Ljava/lang/String;I)Z

    move-result v0

    .line 530
    if-eqz v0, :cond_6

    .line 531
    const-string v3, "MicroMsg.SyncDoCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fmsgConversation updateState succ, user = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :goto_1
    const-string v3, "MicroMsg.SyncDoCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "processModContact, update state(ADDED) FMessageConversation, ret = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getSource()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getSource()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    .line 542
    :cond_4
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->aAs()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/modelsimple/f;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->aAs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelfriend/i;->fq(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/h;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->yX()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 545
    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelfriend/h;->setUsername(Ljava/lang/String;)V

    .line 546
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->yX()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mm/modelfriend/i;->a(Ljava/lang/String;Lcom/tencent/mm/modelfriend/h;)I

    move-result v0

    .line 547
    const-string v3, "MicroMsg.SyncDoCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "account sync: update addr "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_5
    invoke-static {p1, v2, p0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/protocal/a/ob;Ljava/lang/String;Lcom/tencent/mm/storage/i;)V

    move v0, v1

    .line 552
    goto/16 :goto_0

    .line 533
    :cond_6
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/ah/b;->v(Ljava/lang/String;I)Z

    move-result v0

    .line 534
    const-string v4, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fmsgConversation updateState succ, encryptUser = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/LinkedList;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const-wide/16 v3, 0x0

    const/4 v10, 0x0

    .line 556
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v10

    .line 593
    :goto_0
    return v0

    .line 559
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/an;->Rp()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v10

    .line 562
    goto :goto_0

    .line 564
    :cond_2
    if-eqz p1, :cond_4

    .line 565
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/cf;

    .line 566
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/cf;->eBo:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 567
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/cf;->eBo:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    .line 570
    goto :goto_0

    .line 574
    :cond_4
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 575
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/tencent/mm/pluginsdk/ap;->aa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 578
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "kicked self shareing"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v0, Lcom/tencent/mm/c/a/hh;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hh;-><init>()V

    .line 580
    iget-object v1, v0, Lcom/tencent/mm/c/a/hh;->bRe:Lcom/tencent/mm/c/a/hi;

    iput-object p0, v1, Lcom/tencent/mm/c/a/hi;->bPx:Ljava/lang/String;

    .line 582
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 584
    :cond_5
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    const/4 v2, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v1, p0

    move-wide v5, v3

    invoke-interface/range {v0 .. v9}, Lcom/tencent/mm/pluginsdk/ap;->a(Ljava/lang/String;Ljava/util/LinkedList;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_6
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ap;->Rz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 588
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "sync remove chatroom end track %s"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/pluginsdk/an;->Rp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    new-instance v0, Lcom/tencent/mm/c/a/aa;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/aa;-><init>()V

    .line 590
    iget-object v1, v0, Lcom/tencent/mm/c/a/aa;->bMq:Lcom/tencent/mm/c/a/ab;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/pluginsdk/an;->Rp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/c/a/ab;->username:Ljava/lang/String;

    .line 591
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    :cond_7
    move v0, v11

    .line 593
    goto/16 :goto_0
.end method

.method public static b(Lcom/tencent/mm/model/ax;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    sget-object v1, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 597
    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    .line 598
    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v6, v1, Lcom/tencent/mm/c/a/gz;->bQU:Z

    .line 599
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 600
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v1, v1, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    if-eqz p1, :cond_3

    .line 604
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/cf;

    .line 605
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/cf;->eBo:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 606
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/cf;->eBo:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 615
    :cond_3
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 616
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/aj;->a(Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;I)V

    .line 620
    :cond_4
    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    .line 621
    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v6, v1, Lcom/tencent/mm/c/a/gz;->bQV:Z

    .line 622
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 624
    new-instance v0, Lcom/tencent/mm/c/a/gw;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gw;-><init>()V

    .line 625
    iget-object v1, v0, Lcom/tencent/mm/c/a/gw;->bQQ:Lcom/tencent/mm/c/a/gx;

    iput-boolean v6, v1, Lcom/tencent/mm/c/a/gx;->bQR:Z

    .line 626
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto :goto_0
.end method

.method private static c(Lcom/tencent/mm/protocal/a/l;)V
    .locals 5
    .parameter

    .prologue
    .line 776
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/l;->fzA:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "notifyPushContent, pushContent = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/protocal/a/l;->fzA:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    invoke-static {}, Lcom/tencent/mm/model/be;->nQ()Lcom/tencent/mm/model/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/l;->fzA:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/l;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/protocal/a/l;->fzu:I

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/model/ap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static r(Lcom/tencent/mm/storage/i;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 454
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    :cond_0
    const-string v2, "MicroMsg.SyncDoCmd"

    const-string v3, "dealModContactExtInfo username:%s "

    new-array v4, v6, [Ljava/lang/Object;

    if-nez p0, :cond_1

    const-string v0, "-1"

    :goto_0
    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 475
    :goto_1
    return v0

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->tS(Ljava/lang/String;)[B

    move-result-object v2

    .line 459
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    const-string v3, "MicroMsg.SyncDoCmd"

    const-string v4, "dealModContactExtInfo username:%s  buf:%d"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    if-nez v2, :cond_3

    const/4 v0, -0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 461
    goto :goto_1

    .line 460
    :cond_3
    array-length v0, v2

    goto :goto_2

    .line 464
    :cond_4
    const/4 v0, 0x0

    .line 466
    :try_start_0
    new-instance v3, Lcom/tencent/mm/protocal/a/ob;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/ob;-><init>()V

    invoke-virtual {v3, v2}, Lcom/tencent/mm/protocal/a/ob;->by([B)Lcom/tencent/mm/protocal/a/ob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    :goto_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/k;->tT(Ljava/lang/String;)I

    .line 471
    if-nez v0, :cond_5

    .line 472
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v2, "dkinit dealModContactExtInfo failed parse buf failed."

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 473
    goto :goto_1

    .line 475
    :cond_5
    invoke-static {p0, v0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/storage/i;Lcom/tencent/mm/protocal/a/ob;)Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public final Bx()V
    .locals 5

    .prologue
    .line 123
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/z/n;->cvn:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/z/n;->cvn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    sget-object v3, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    monitor-enter v3

    .line 129
    :try_start_0
    sget-object v0, Lcom/tencent/mm/z/n;->cuX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/ax;

    .line 130
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/ax;

    .line 135
    new-instance v3, Landroid/os/Handler;

    invoke-interface {v0}, Lcom/tencent/mm/model/ax;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/tencent/mm/z/o;

    invoke-direct {v4, p0, v0, v1}, Lcom/tencent/mm/z/o;-><init>(Lcom/tencent/mm/z/n;Lcom/tencent/mm/model/ax;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 143
    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/mm/protocal/a/cx;Z)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "account storage disabled, discard all commands"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    .line 196
    :cond_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v3

    .line 197
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/cx;->fEa:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v0

    .line 198
    const-string v1, "MicroMsg.SyncDoCmd"

    const-string v2, "doCmd %d cmdid:%d buf:%d thr:[%s]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p1, Lcom/tencent/mm/protocal/a/cx;->fDZ:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->co([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "docmd: no protobuf found."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    goto :goto_0

    .line 204
    :cond_1
    :try_start_0
    iget v1, p1, Lcom/tencent/mm/protocal/a/cx;->fDZ:I

    sparse-switch v1, :sswitch_data_0

    .line 284
    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doCmd: no processing method, cmd id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/mm/protocal/a/cx;->fDZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_2
    :goto_1
    :pswitch_0
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "doCmd FIN %d cmdid:%d Time:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget v6, p1, Lcom/tencent/mm/protocal/a/cx;->fDZ:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->N(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 208
    :sswitch_0
    new-instance v1, Lcom/tencent/mm/protocal/a/ob;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ob;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/ob;->by([B)Lcom/tencent/mm/protocal/a/ob;

    move-result-object v1

    if-eqz p2, :cond_3

    :goto_2
    invoke-static {v1, v0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/protocal/a/ob;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    const-string v1, "MicroMsg.SyncDoCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "docmd: parse protobuf error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 208
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 212
    :sswitch_1
    :try_start_1
    new-instance v1, Lcom/tencent/mm/protocal/a/dp;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/dp;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/dp;->aO([B)Lcom/tencent/mm/protocal/a/dp;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/dp;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/dp;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cx(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :sswitch_2
    new-instance v1, Lcom/tencent/mm/protocal/a/l;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/l;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/l;->aE([B)Lcom/tencent/mm/protocal/a/l;

    move-result-object v2

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "dkmsgid  set svrmsgid %d -> %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Lcom/tencent/mm/protocal/a/l;->fzo:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget v7, Lcom/tencent/mm/platformtools/at;->cHK:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v1, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2718

    sget v1, Lcom/tencent/mm/platformtools/at;->cHJ:I

    if-ne v0, v1, :cond_4

    sget v0, Lcom/tencent/mm/platformtools/at;->cHK:I

    if-eqz v0, :cond_4

    sget v0, Lcom/tencent/mm/platformtools/at;->cHK:I

    iput v0, v2, Lcom/tencent/mm/protocal/a/l;->fzo:I

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/platformtools/at;->cHK:I

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget v1, v2, Lcom/tencent/mm/protocal/a/l;->fzo:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->mk(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "ignore, because reSync the deleted msg perhaps the IDC has change has swtiched"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, v2, Lcom/tencent/mm/protocal/a/l;->fzz:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ce;->dC(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/tencent/mm/protocal/a/l;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/k;->tP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/tencent/mm/model/at;->do(Ljava/lang/String;)V

    :cond_6
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "add msg, user:%s type:%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    iget v8, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v1, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "readerapp"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "newsapp"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->hQ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/protocal/a/l;->fzs:Lcom/tencent/mm/protocal/a/rw;

    const v0, 0xbd357f

    iput v0, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    :cond_7
    const-string v0, "blogapp"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "newsapp"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const v0, 0xbd357f

    iput v0, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    :cond_9
    iget v0, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    const/16 v1, 0x34

    if-ne v0, v1, :cond_a

    const v0, 0xf4274

    iput v0, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    :cond_a
    iget v0, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    const/16 v1, 0x35

    if-ne v0, v1, :cond_b

    const v0, 0xf4275

    iput v0, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    :cond_b
    iget v0, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/n/l;->T(Ljava/lang/Object;)Lcom/tencent/mm/n/j;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {v5}, Lcom/tencent/mm/n/l;->T(Ljava/lang/Object;)Lcom/tencent/mm/n/j;

    move-result-object v0

    :cond_c
    if-eqz v0, :cond_12

    invoke-interface {v0, v2}, Lcom/tencent/mm/n/j;->a(Lcom/tencent/mm/protocal/a/l;)Lcom/tencent/mm/n/k;

    move-result-object v6

    if-nez v6, :cond_d

    const/4 v0, 0x0

    move-object v1, v0

    :goto_3
    if-nez v1, :cond_e

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "extension declared but skipped msg, type="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", svrid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v2, Lcom/tencent/mm/protocal/a/l;->fzo:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/mm/z/n;->c(Lcom/tencent/mm/protocal/a/l;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, v6, Lcom/tencent/mm/n/k;->bLP:Lcom/tencent/mm/storage/ak;

    move-object v1, v0

    goto :goto_3

    :cond_e
    invoke-static {v5}, Lcom/tencent/mm/model/w;->cz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/tencent/mm/x/b;->Bj()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_10

    invoke-static {v2}, Lcom/tencent/mm/z/n;->c(Lcom/tencent/mm/protocal/a/l;)V

    goto/16 :goto_1

    :cond_f
    const/4 v0, 0x0

    goto :goto_4

    :cond_10
    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " msg , id ="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/tencent/mm/z/n;->cvl:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_11

    iget-boolean v0, p0, Lcom/tencent/mm/z/n;->cvl:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v6, Lcom/tencent/mm/n/k;->clN:Z

    if-eqz v0, :cond_11

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/protocal/a/l;)V

    :cond_11
    invoke-static {v2}, Lcom/tencent/mm/z/n;->c(Lcom/tencent/mm/protocal/a/l;)V

    goto/16 :goto_1

    :cond_12
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "unknown add msg request, type=%d. drop now !!!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v2, v2, Lcom/tencent/mm/protocal/a/l;->fzu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v0, v1, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 220
    :sswitch_3
    new-instance v1, Lcom/tencent/mm/protocal/a/ol;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ol;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/ol;->bA([B)Lcom/tencent/mm/protocal/a/ol;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/ak;

    invoke-direct {v2}, Lcom/tencent/mm/storage/ak;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/tencent/mm/storage/ak;->cL(I)V

    iget v6, v1, Lcom/tencent/mm/protocal/a/ol;->fzr:I

    invoke-virtual {v2, v6}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/ol;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v6}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/ol;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v6}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/ol;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    :goto_5
    iget v0, v1, Lcom/tencent/mm/protocal/a/ol;->fzo:I

    invoke-virtual {v5, v0, v2}, Lcom/tencent/mm/storage/ap;->a(ILcom/tencent/mm/storage/ak;)V

    goto/16 :goto_1

    :cond_13
    iget-object v6, v1, Lcom/tencent/mm/protocal/a/ol;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v6}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/ol;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v6}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/ol;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v6, "doCmd : CmdModMsgStatus not found this msg"

    invoke-static {v0, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "invalid mod msg cmd, unknown talker"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_5

    .line 224
    :sswitch_4
    new-instance v1, Lcom/tencent/mm/protocal/a/oq;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/oq;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/oq;->bC([B)Lcom/tencent/mm/protocal/a/oq;

    move-result-object v1

    iget v0, v1, Lcom/tencent/mm/protocal/a/oq;->fPG:I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v5, "mod user info, bitflag=-1"

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "userinfo state "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/tencent/mm/protocal/a/oq;->fzr:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/oq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/oq;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/oq;->fPI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/oq;->fPJ:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    :cond_15
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0, v5}, Lcom/tencent/mm/storage/i;-><init>(Ljava/lang/String;)V

    :cond_16
    iget-object v9, v1, Lcom/tencent/mm/protocal/a/oq;->cqt:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/i;->bx(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/tencent/mm/protocal/a/oq;->cqx:Ljava/lang/String;

    iget-object v10, v1, Lcom/tencent/mm/protocal/a/oq;->Tu:Ljava/lang/String;

    iget-object v11, v1, Lcom/tencent/mm/protocal/a/oq;->Tv:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/tencent/mm/storage/RegionCodeDecoder;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/i;->bO(Ljava/lang/String;)V

    iget v9, v1, Lcom/tencent/mm/protocal/a/oq;->cqq:I

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/i;->bL(I)V

    iget-object v9, v1, Lcom/tencent/mm/protocal/a/oq;->cqr:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/i;->bz(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/tencent/mm/storage/k;->A(Lcom/tencent/mm/storage/i;)Z

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, v6}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0, v7}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {v2, v0, v8}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doCmd : status "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/tencent/mm/protocal/a/oq;->fzr:I

    invoke-static {v6}, Lcom/tencent/mm/protocal/j;->lh(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    iget v5, v1, Lcom/tencent/mm/protocal/a/oq;->fzr:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    iget v0, v1, Lcom/tencent/mm/protocal/a/oq;->cqs:I

    if-eqz v0, :cond_17

    new-instance v0, Lcom/tencent/mm/model/co;

    invoke-direct {v0}, Lcom/tencent/mm/model/co;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/model/co;->vy()V

    iget v5, v1, Lcom/tencent/mm/protocal/a/oq;->cqq:I

    invoke-virtual {v0, v5}, Lcom/tencent/mm/model/co;->bL(I)V

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->cqr:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/model/co;->bz(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->cqx:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/model/co;->setCountryCode(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->Tu:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/model/co;->dM(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->Tv:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/model/co;->dL(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->fNr:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/model/co;->bD(Ljava/lang/String;)V

    const-string v5, "MicroMsg.SyncDoCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " getPersonalCard weibo url : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/model/co;->rG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nickName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/tencent/mm/protocal/a/oq;->fNs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/model/co;->a(Lcom/tencent/mm/model/co;)Lcom/tencent/mm/protocal/a/oq;

    :cond_17
    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "userinfo Plugstate: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/tencent/mm/protocal/a/oq;->fPK:I

    invoke-static {v6}, Lcom/tencent/mm/protocal/j;->li(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x22

    iget v5, v1, Lcom/tencent/mm/protocal/a/oq;->fPK:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    iget v0, v1, Lcom/tencent/mm/protocal/a/oq;->fPK:I

    invoke-static {v0}, Lcom/tencent/mm/model/b;->bJ(I)V

    const/16 v5, 0x2008

    const/4 v0, 0x1

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/oq;->fPq:Lcom/tencent/mm/protocal/a/ed;

    iget v6, v6, Lcom/tencent/mm/protocal/a/ed;->fES:I

    if-ne v0, v6, :cond_19

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const/16 v0, 0x2009

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->fPq:Lcom/tencent/mm/protocal/a/ed;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    iget v5, v5, Lcom/tencent/mm/protocal/a/ee;->fEW:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x16

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const/16 v0, 0x2010

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->fPq:Lcom/tencent/mm/protocal/a/ed;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    iget v5, v5, Lcom/tencent/mm/protocal/a/ee;->fDR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const v0, 0x10201

    iget v5, v1, Lcom/tencent/mm/protocal/a/oq;->fNp:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const v0, 0x10202

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->fNq:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const/16 v0, 0x28

    iget v5, v1, Lcom/tencent/mm/protocal/a/oq;->fPP:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const/16 v0, 0x29

    iget v5, v1, Lcom/tencent/mm/protocal/a/oq;->fNt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const/16 v0, 0x2b

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->fNs:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doCmd PluginSwitch:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/tencent/mm/protocal/a/oq;->fPP:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WeiboFlag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/tencent/mm/protocal/a/oq;->fNt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x33c48be9

    iget v5, v1, Lcom/tencent/mm/protocal/a/oq;->fPB:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doCmd USERINFO_TXNEWSCATEGORY:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/tencent/mm/protocal/a/oq;->fPB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2a

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->cqt:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "userid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/tencent/mm/protocal/a/oq;->fGv:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " username:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/oq;->fGw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x10121

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/tencent/mm/protocal/a/oq;->fGv:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v1, Lcom/tencent/mm/protocal/a/oq;->fGv:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/m/c;->dR(Ljava/lang/String;)V

    const v0, 0x10122

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/oq;->fGw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "getiAlbumFlag "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/tencent/mm/protocal/a/oq;->cqu:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "getiAlbumStyle "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/tencent/mm/protocal/a/oq;->cqv:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "getPcAlbumBGImgID "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/oq;->cqw:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x10126

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_18
    iget-object v0, v1, Lcom/tencent/mm/protocal/a/oq;->fPS:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v2, 0x10126

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 228
    :sswitch_5
    new-instance v1, Lcom/tencent/mm/protocal/a/dm;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/dm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/dm;->aN([B)Lcom/tencent/mm/protocal/a/dm;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/dm;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 232
    :sswitch_6
    new-instance v1, Lcom/tencent/mm/protocal/a/dq;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/dq;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/dq;->aP([B)Lcom/tencent/mm/protocal/a/dq;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/tencent/mm/protocal/a/dq;->fEK:I

    invoke-static {v1, v0}, Lcom/tencent/mm/model/bv;->o(Ljava/lang/String;I)I

    goto/16 :goto_1

    .line 236
    :sswitch_7
    new-instance v1, Lcom/tencent/mm/protocal/a/lv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/lv;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/lv;->br([B)Lcom/tencent/mm/protocal/a/lv;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelfriend/ae;

    invoke-direct {v1}, Lcom/tencent/mm/modelfriend/ae;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/lv;->eBo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelfriend/ae;->setUsername(Ljava/lang/String;)V

    iget v0, v0, Lcom/tencent/mm/protocal/a/lv;->fNb:I

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelfriend/ae;->dg(I)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelfriend/ae;->dh(I)V

    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ap()Lcom/tencent/mm/modelfriend/af;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/af;->a(Lcom/tencent/mm/modelfriend/ae;)Z

    goto/16 :goto_1

    .line 240
    :sswitch_8
    new-instance v1, Lcom/tencent/mm/protocal/a/dv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/dv;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/dv;->aQ([B)Lcom/tencent/mm/protocal/a/dv;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/protocal/a/dv;)V

    goto/16 :goto_1

    .line 244
    :sswitch_9
    new-instance v1, Lcom/tencent/mm/protocal/a/ok;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ok;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/ok;->bz([B)Lcom/tencent/mm/protocal/a/ok;

    move-result-object v2

    const/4 v0, 0x1

    iget v1, v2, Lcom/tencent/mm/protocal/a/ok;->fPy:I

    if-ne v0, v1, :cond_1c

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v5

    iget-object v0, v2, Lcom/tencent/mm/protocal/a/ok;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v6

    iget v0, v2, Lcom/tencent/mm/protocal/a/ok;->fPn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    move v1, v0

    :goto_7
    iget v0, v2, Lcom/tencent/mm/protocal/a/ok;->fPz:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v5, v6, v1, v0}, Lcom/tencent/mm/storage/cc;->b(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_1a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_7

    :cond_1b
    const/4 v0, 0x0

    goto :goto_8

    :cond_1c
    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "unknown micro blog type:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/tencent/mm/protocal/a/ok;->fPy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
    :sswitch_a
    new-instance v1, Lcom/tencent/mm/protocal/a/nw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/nw;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/nw;->bx([B)Lcom/tencent/mm/protocal/a/nw;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "MicroMsg.SyncDoCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "processModChatRoomMember username:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nickname:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/storage/i;

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/storage/i;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/i;->bv(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/nw;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/i;->bw(Ljava/lang/String;)V

    iget v2, v0, Lcom/tencent/mm/protocal/a/nw;->cqq:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/i;->bL(I)V

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/i;->bJ(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/i;->bI(Ljava/lang/String;)V

    iget v2, v0, Lcom/tencent/mm/protocal/a/nw;->fEp:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/i;->bS(I)V

    new-instance v2, Lcom/tencent/mm/m/x;

    invoke-direct {v2}, Lcom/tencent/mm/m/x;-><init>()V

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lcom/tencent/mm/m/x;->cL(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/m/x;->setUsername(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/nw;->fDh:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/tencent/mm/m/x;->ep(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/nw;->fDg:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/tencent/mm/m/x;->eo(Ljava/lang/String;)V

    const-string v5, "MicroMsg.SyncDoCmd"

    const-string v6, "dkhurl chatmember %s b[%s] s[%s]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/tencent/mm/m/x;->getUsername()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/tencent/mm/m/x;->vV()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v2}, Lcom/tencent/mm/m/x;->vW()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/tencent/mm/m/x;->Q(Z)V

    iget v5, v0, Lcom/tencent/mm/protocal/a/nw;->fOT:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1d

    iget v5, v0, Lcom/tencent/mm/protocal/a/nw;->fOT:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_20

    :cond_1d
    iget v5, v0, Lcom/tencent/mm/protocal/a/nw;->fOT:I

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storage/i;->bU(I)V

    iget v5, v0, Lcom/tencent/mm/protocal/a/nw;->fOT:I

    invoke-virtual {v2, v5}, Lcom/tencent/mm/m/x;->bU(I)V

    :cond_1e
    :goto_9
    invoke-static {}, Lcom/tencent/mm/m/af;->wm()Lcom/tencent/mm/m/y;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/tencent/mm/m/y;->a(Lcom/tencent/mm/m/x;)Z

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/k;->A(Lcom/tencent/mm/storage/i;)Z

    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/p/k;->eG(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/p/a;->field_username:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/nw;->cqy:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/p/a;->field_brandList:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/nw;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v0, :cond_1f

    iget v1, v0, Lcom/tencent/mm/protocal/a/dl;->cqC:I

    iput v1, v2, Lcom/tencent/mm/p/a;->field_brandFlag:I

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/dl;->cqE:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/p/a;->field_brandInfo:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/dl;->cqF:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/p/a;->field_brandIconURL:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/dl;->cqD:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/mm/p/a;->field_extInfo:Ljava/lang/String;

    :cond_1f
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/p/k;->b(Lcom/tencent/mm/p/a;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/p/k;->a(Lcom/tencent/mm/p/a;)Z

    goto/16 :goto_1

    :cond_20
    iget v5, v0, Lcom/tencent/mm/protocal/a/nw;->fOT:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1e

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storage/i;->bU(I)V

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/tencent/mm/m/x;->bU(I)V

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storage/i;->bU(I)V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/m/m;->i(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/m/m;->i(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mm/m/af;->wo()Lcom/tencent/mm/m/e;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/m/e;->dY(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sT()Lcom/tencent/mm/as/a;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/as/d;

    const/16 v7, 0x3e9

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/tencent/mm/as/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/tencent/mm/as/a;->a(Lcom/tencent/mm/as/d;)I

    goto/16 :goto_9

    .line 252
    :sswitch_b
    new-instance v1, Lcom/tencent/mm/protocal/a/gf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/gf;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/gf;->aV([B)Lcom/tencent/mm/protocal/a/gf;

    move-result-object v0

    iget v1, v0, Lcom/tencent/mm/protocal/a/gf;->fIH:I

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    const-string v1, "MicroMsg.SyncDoCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unknown function switch id:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/tencent/mm/protocal/a/gf;->fIH:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x11

    iget v0, v0, Lcom/tencent/mm/protocal/a/gf;->fII:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 256
    :sswitch_c
    new-instance v1, Lcom/tencent/mm/protocal/a/wl;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/wl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/wl;->bY([B)Lcom/tencent/mm/protocal/a/wl;

    move-result-object v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/wl;->eBo:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/wl;->eBo:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "processModTContact: tcontact should ends with @t.qq.com"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    const/4 v0, 0x0

    goto :goto_a

    :cond_22
    const/4 v0, 0x0

    goto :goto_b

    :cond_23
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/wl;->eBo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v2

    if-nez v2, :cond_29

    :cond_24
    new-instance v0, Lcom/tencent/mm/storage/i;

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/wl;->eBo:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/tencent/mm/storage/i;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/wl;->fDf:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bS(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qM()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/k;->C(Lcom/tencent/mm/storage/i;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_25

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "processModTContact: insert contact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_25
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    const-string v0, "MicroMsg.AvatarLogic"

    const-string v2, "setMBTAvatarImgFlag failed : invalid username"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_c
    new-instance v0, Lcom/tencent/mm/c/a/gq;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gq;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/c/a/gq;->bQL:Lcom/tencent/mm/c/a/gr;

    const/4 v5, 0x1

    iput v5, v2, Lcom/tencent/mm/c/a/gr;->bNK:I

    iget-object v2, v0, Lcom/tencent/mm/c/a/gq;->bQL:Lcom/tencent/mm/c/a/gr;

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/wl;->eBo:Ljava/lang/String;

    iput-object v5, v2, Lcom/tencent/mm/c/a/gr;->user:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/c/a/gq;->bQL:Lcom/tencent/mm/c/a/gr;

    iget v5, v1, Lcom/tencent/mm/protocal/a/wl;->fTa:I

    iput v5, v2, Lcom/tencent/mm/c/a/gr;->bPl:I

    iget-object v2, v0, Lcom/tencent/mm/c/a/gq;->bQL:Lcom/tencent/mm/c/a/gr;

    iget v1, v1, Lcom/tencent/mm/protocal/a/wl;->fEx:I

    iput v1, v2, Lcom/tencent/mm/c/a/gr;->bPm:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_1

    :cond_27
    const-string v2, "@t.qq.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v0, "MicroMsg.AvatarLogic"

    const-string v2, "setMBTAvatarImgFlag failed : invalid username"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_28
    new-instance v2, Lcom/tencent/mm/m/x;

    invoke-direct {v2}, Lcom/tencent/mm/m/x;-><init>()V

    invoke-virtual {v2, v0}, Lcom/tencent/mm/m/x;->setUsername(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/tencent/mm/m/x;->bU(I)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/tencent/mm/m/x;->cL(I)V

    invoke-static {}, Lcom/tencent/mm/m/af;->wm()Lcom/tencent/mm/m/y;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/m/y;->a(Lcom/tencent/mm/m/x;)Z

    goto :goto_c

    :cond_29
    iget-object v2, v1, Lcom/tencent/mm/protocal/a/wl;->fDf:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/wl;->fDf:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_26

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v2, "processModTContact: update contact failed"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 260
    :sswitch_d
    new-instance v1, Lcom/tencent/mm/protocal/a/qn;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/qn;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/qn;->bJ([B)Lcom/tencent/mm/protocal/a/qn;

    move-result-object v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/qn;->eBo:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/qn;->eBo:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "processModQContact: qcontact should ends with @t.qq.com"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2a
    const/4 v0, 0x0

    goto :goto_d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_e

    :cond_2c
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/qn;->eBo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v2

    if-nez v2, :cond_30

    :cond_2d
    new-instance v0, Lcom/tencent/mm/storage/i;

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/qn;->eBo:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/tencent/mm/storage/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qM()V

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/qn;->fDf:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/qn;->fDf:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bS(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/k;->C(Lcom/tencent/mm/storage/i;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2e

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v1, "processModQContact: insert contact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2e
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/m/c;->dV(Ljava/lang/String;)Z

    :cond_2f
    :goto_f
    new-instance v0, Lcom/tencent/mm/c/a/ei;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ei;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/c/a/ei;->bPh:Lcom/tencent/mm/c/a/ej;

    const/4 v5, 0x1

    iput v5, v2, Lcom/tencent/mm/c/a/ej;->bNK:I

    iget-object v2, v0, Lcom/tencent/mm/c/a/ei;->bPh:Lcom/tencent/mm/c/a/ej;

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/qn;->eBo:Ljava/lang/String;

    iput-object v5, v2, Lcom/tencent/mm/c/a/ej;->user:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/c/a/ei;->bPh:Lcom/tencent/mm/c/a/ej;

    iget v5, v1, Lcom/tencent/mm/protocal/a/qn;->fTa:I

    iput v5, v2, Lcom/tencent/mm/c/a/ej;->bPl:I

    iget-object v2, v0, Lcom/tencent/mm/c/a/ei;->bPh:Lcom/tencent/mm/c/a/ej;

    iget v1, v1, Lcom/tencent/mm/protocal/a/qn;->fEx:I

    iput v1, v2, Lcom/tencent/mm/c/a/ej;->bPm:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_1

    :cond_30
    iget-object v2, v1, Lcom/tencent/mm/protocal/a/qn;->fDf:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/qn;->fDf:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/mm/protocal/a/qn;->fDf:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bH(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2f

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v2, "processModQContact: update contact failed"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 264
    :sswitch_e
    new-instance v1, Lcom/tencent/mm/protocal/a/nu;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/nu;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/nu;->bw([B)Lcom/tencent/mm/protocal/a/nu;

    move-result-object v1

    if-eqz v1, :cond_32

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/nu;->eBo:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_33

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v2, Lcom/tencent/mm/storage/i;

    invoke-direct {v2}, Lcom/tencent/mm/storage/i;-><init>()V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/nu;->eBo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    iget v0, v1, Lcom/tencent/mm/protocal/a/nu;->dGR:I

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/i;->setType(I)V

    iget v0, v1, Lcom/tencent/mm/protocal/a/nu;->cqq:I

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/i;->bL(I)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/nu;->cqx:Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/mm/protocal/a/nu;->Tu:Ljava/lang/String;

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/nu;->Tv:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/storage/RegionCodeDecoder;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/i;->bO(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/nu;->cqr:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/i;->bz(Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/mm/m/x;

    invoke-direct {v5}, Lcom/tencent/mm/m/x;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Lcom/tencent/mm/m/x;->cL(I)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/nu;->eBo:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/tencent/mm/m/x;->setUsername(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/nu;->fDh:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/tencent/mm/m/x;->ep(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/nu;->fDg:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/tencent/mm/m/x;->eo(Ljava/lang/String;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v6, "dkhurl bottle %s b[%s] s[%s]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/tencent/mm/m/x;->getUsername()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Lcom/tencent/mm/m/x;->vV()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v5}, Lcom/tencent/mm/m/x;->vW()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bottlecontact imgflag:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/tencent/mm/protocal/a/nu;->fOT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/tencent/mm/protocal/a/nu;->fOU:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/tencent/mm/protocal/a/nu;->fOU:I

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v5, v0}, Lcom/tencent/mm/m/x;->Q(Z)V

    iget v0, v1, Lcom/tencent/mm/protocal/a/nu;->fOT:I

    const/4 v6, 0x3

    if-eq v0, v6, :cond_31

    iget v0, v1, Lcom/tencent/mm/protocal/a/nu;->fOT:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_35

    :cond_31
    iget v0, v1, Lcom/tencent/mm/protocal/a/nu;->fOT:I

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/i;->bU(I)V

    iget v0, v1, Lcom/tencent/mm/protocal/a/nu;->fOT:I

    invoke-virtual {v5, v0}, Lcom/tencent/mm/m/x;->bU(I)V

    :goto_13
    invoke-static {}, Lcom/tencent/mm/m/af;->wm()Lcom/tencent/mm/m/y;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/m/y;->a(Lcom/tencent/mm/m/x;)Z

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->z(Lcom/tencent/mm/storage/i;)Z

    goto/16 :goto_1

    :cond_32
    const/4 v0, 0x0

    goto/16 :goto_10

    :cond_33
    const/4 v0, 0x0

    goto/16 :goto_11

    :cond_34
    const/4 v0, 0x0

    goto :goto_12

    :cond_35
    iget v0, v1, Lcom/tencent/mm/protocal/a/nu;->fOT:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_36

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/i;->bU(I)V

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/tencent/mm/m/x;->bU(I)V

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/nu;->eBo:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/tencent/mm/m/m;->i(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/nu;->eBo:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/tencent/mm/m/m;->i(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mm/m/af;->wo()Lcom/tencent/mm/m/e;

    move-result-object v0

    iget-object v6, v1, Lcom/tencent/mm/protocal/a/nu;->eBo:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/m/e;->dY(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sT()Lcom/tencent/mm/as/a;

    move-result-object v0

    new-instance v6, Lcom/tencent/mm/as/d;

    const/16 v7, 0x3e9

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/nu;->eBo:Ljava/lang/String;

    invoke-direct {v6, v7, v1}, Lcom/tencent/mm/as/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/tencent/mm/as/a;->a(Lcom/tencent/mm/as/d;)I

    goto :goto_13

    :cond_36
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/i;->bU(I)V

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/tencent/mm/m/x;->bU(I)V

    goto :goto_13

    .line 268
    :sswitch_f
    new-instance v1, Lcom/tencent/mm/protocal/a/op;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/op;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/op;->bB([B)Lcom/tencent/mm/protocal/a/op;

    move-result-object v5

    if-eqz v5, :cond_3c

    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    iget v6, v5, Lcom/tencent/mm/protocal/a/op;->fPC:I

    const/4 v0, 0x2

    if-ne v6, v0, :cond_3d

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x3109

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v1

    move-object v1, v0

    :goto_15
    const/4 v0, 0x0

    if-eqz v1, :cond_37

    iget-object v7, v5, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    :cond_37
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/m/m;->i(Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v7

    const/4 v1, 0x2

    if-ne v6, v1, :cond_3e

    const/16 v1, 0x3109

    :goto_16
    iget-object v8, v5, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    :cond_38
    const-string v1, "MicroMsg.SyncDoCmd"

    const-string v7, "ModUserImg beRemove:%b imgtype:%d md5:%s big:%s sm:%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v5, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, v5, Lcom/tencent/mm/protocal/a/op;->fDg:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, v5, Lcom/tencent/mm/protocal/a/op;->fDh:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v1, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/mm/m/x;

    invoke-direct {v1}, Lcom/tencent/mm/m/x;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/m/x;->setUsername(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/tencent/mm/protocal/a/op;->fDg:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/tencent/mm/m/x;->eo(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/tencent/mm/protocal/a/op;->fDh:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/tencent/mm/m/x;->ep(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/m/x;->vW()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_39

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3f

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v6

    const/16 v7, 0x3b

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    :cond_39
    :goto_17
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/tencent/mm/m/x;->Q(Z)V

    const/16 v6, 0x38

    invoke-virtual {v1, v6}, Lcom/tencent/mm/m/x;->cL(I)V

    iget-object v6, v5, Lcom/tencent/mm/protocal/a/op;->fPF:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/tencent/mm/m/x;->Q(Z)V

    :cond_3a
    invoke-static {}, Lcom/tencent/mm/m/af;->wm()Lcom/tencent/mm/m/y;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/tencent/mm/m/y;->a(Lcom/tencent/mm/m/x;)Z

    if-eqz v0, :cond_3b

    new-instance v1, Lcom/tencent/mm/m/s;

    invoke-direct {v1}, Lcom/tencent/mm/m/s;-><init>()V

    new-instance v6, Lcom/tencent/mm/z/q;

    invoke-direct {v6, p0}, Lcom/tencent/mm/z/q;-><init>(Lcom/tencent/mm/z/n;)V

    invoke-virtual {v1, v2, v6}, Lcom/tencent/mm/m/s;->a(Ljava/lang/String;Lcom/tencent/mm/m/u;)I

    :cond_3b
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sT()Lcom/tencent/mm/as/a;

    move-result-object v1

    new-instance v6, Lcom/tencent/mm/as/d;

    const/16 v7, 0x3ec

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ";"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v5, Lcom/tencent/mm/protocal/a/op;->fDg:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, v5, Lcom/tencent/mm/protocal/a/op;->fDg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v5, Lcom/tencent/mm/protocal/a/op;->fDh:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, v5, Lcom/tencent/mm/protocal/a/op;->fDh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/tencent/mm/as/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/tencent/mm/as/a;->a(Lcom/tencent/mm/as/d;)I

    goto/16 :goto_1

    :cond_3c
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_3d
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x3009

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_15

    :cond_3e
    const/16 v1, 0x3009

    goto/16 :goto_16

    :cond_3f
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v6

    const/16 v7, 0x3c

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto/16 :goto_17

    :cond_40
    const/4 v0, -0x1

    goto :goto_18

    :cond_41
    const/4 v0, -0x1

    goto :goto_19

    .line 272
    :sswitch_10
    new-instance v1, Lcom/tencent/mm/protocal/a/yu;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/yu;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/yu;->cd([B)Lcom/tencent/mm/protocal/a/yu;

    move-result-object v2

    const-string v0, "MicroMsg.SyncDoCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "snsExtFlag "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/tencent/mm/protocal/a/yu;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget v5, v5, Lcom/tencent/mm/protocal/a/vp;->cqz:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v1

    iget-object v5, v2, Lcom/tencent/mm/protocal/a/yu;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-interface {v1, v0, v5}, Lcom/tencent/mm/pluginsdk/v;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/vp;)Z

    :cond_42
    invoke-static {}, Lcom/tencent/mm/p/p;->xH()Lcom/tencent/mm/p/a;

    move-result-object v1

    if-nez v1, :cond_43

    new-instance v1, Lcom/tencent/mm/p/a;

    invoke-direct {v1}, Lcom/tencent/mm/p/a;-><init>()V

    :cond_43
    iput-object v0, v1, Lcom/tencent/mm/p/a;->field_username:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/mm/protocal/a/yu;->cqy:Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/mm/p/a;->field_brandList:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/tencent/mm/p/k;->b(Lcom/tencent/mm/p/a;)Z

    move-result v5

    if-nez v5, :cond_44

    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/tencent/mm/p/k;->a(Lcom/tencent/mm/p/a;)Z

    :cond_44
    iget v1, v2, Lcom/tencent/mm/protocal/a/yu;->fYX:I

    iget v5, v2, Lcom/tencent/mm/protocal/a/yu;->fYY:I

    iget v6, v2, Lcom/tencent/mm/protocal/a/yu;->fYZ:I

    const-string v7, "MicroMsg.SyncDoCmd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "roomSize :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rommquota: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " invite: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v7

    const v8, 0x21007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v7, 0x21008

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v5, 0x21009

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v5, 0x23401

    iget v6, v2, Lcom/tencent/mm/protocal/a/yu;->fZd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    new-instance v1, Lcom/tencent/mm/m/x;

    invoke-direct {v1}, Lcom/tencent/mm/m/x;-><init>()V

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/tencent/mm/m/x;->cL(I)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/m/x;->setUsername(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/tencent/mm/protocal/a/yu;->fDg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/m/x;->eo(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/tencent/mm/protocal/a/yu;->fDh:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/m/x;->ep(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/m/x;->Q(Z)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/tencent/mm/m/x;->bU(I)V

    const-string v0, "MicroMsg.SyncDoCmd"

    const-string v5, "dkavatar user:[%s] big:[%s] sm:[%s]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/tencent/mm/m/x;->getUsername()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/tencent/mm/m/x;->vV()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v1}, Lcom/tencent/mm/m/x;->vW()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/m/af;->wm()Lcom/tencent/mm/m/y;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/m/y;->a(Lcom/tencent/mm/m/x;)Z

    iget-object v0, v2, Lcom/tencent/mm/protocal/a/yu;->fPf:Ljava/lang/String;

    iget-object v1, v2, Lcom/tencent/mm/protocal/a/yu;->fPg:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v5

    const v6, 0x43001

    invoke-virtual {v5, v6, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v5, 0x43002

    invoke-virtual {v1, v5, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    iget-object v0, v2, Lcom/tencent/mm/protocal/a/yu;->fzB:Lcom/tencent/mm/protocal/a/mu;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x46001

    iget-object v5, v2, Lcom/tencent/mm/protocal/a/yu;->fzB:Lcom/tencent/mm/protocal/a/mu;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/mu;->fBp:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x46002

    iget-object v5, v2, Lcom/tencent/mm/protocal/a/yu;->fzB:Lcom/tencent/mm/protocal/a/mu;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/mu;->fBq:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x46003

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/yu;->fzB:Lcom/tencent/mm/protocal/a/mu;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/mu;->fBr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 276
    :sswitch_11
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0, v1}, Lcom/tencent/mm/a/i;->b([BI)I

    move-result v0

    const-string v1, "MicroMsg.SyncDoCmd"

    const-string v2, "local test synccmd, sleep %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v0, :cond_2

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 277
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 280
    :sswitch_12
    :try_start_3
    new-instance v1, Lcom/tencent/mm/protocal/a/ov;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ov;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/ov;->bF([B)Lcom/tencent/mm/protocal/a/ov;

    move-result-object v0

    const-string v1, "MicroMsg.SyncDoCmd"

    const-string v2, "rollback, msgtype is %d, msgid is %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/tencent/mm/protocal/a/ov;->fzu:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v0, Lcom/tencent/mm/protocal/a/ov;->fzo:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ov;->fzp:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/tencent/mm/c/a/fq;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/fq;-><init>()V

    iget-object v1, v1, Lcom/tencent/mm/c/a/fq;->bQk:Lcom/tencent/mm/c/a/fr;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ov;->fzo:I

    iput v0, v1, Lcom/tencent/mm/c/a/fr;->bQl:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_8
        0xd -> :sswitch_9
        0xf -> :sswitch_a
        0x11 -> :sswitch_0
        0x16 -> :sswitch_7
        0x17 -> :sswitch_b
        0x18 -> :sswitch_d
        0x19 -> :sswitch_c
        0x21 -> :sswitch_e
        0x23 -> :sswitch_f
        0x2c -> :sswitch_10
        0x35 -> :sswitch_12
        0xf423f -> :sswitch_11
    .end sparse-switch

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
