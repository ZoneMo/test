.class final Lcom/tencent/mm/model/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/o;


# instance fields
.field final synthetic ciN:Lcom/tencent/mm/model/be;

.field final synthetic ciP:Lcom/tencent/mm/model/an;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/be;Lcom/tencent/mm/model/an;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    iput-object p2, p0, Lcom/tencent/mm/model/bj;->ciP:Lcom/tencent/mm/model/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/model/b;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->f(Lcom/tencent/mm/model/be;)V

    .line 454
    iget-object v0, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->e(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/dr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/mm/model/dr;->N(Z)V

    .line 456
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ap/i;->ca(J)J

    move-result-wide v2

    .line 458
    iget-object v0, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->c(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    const-string v4, "qqmail"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ap;->vn(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    const-string v4, "@t.qq.com"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ap;->ve(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/tencent/mm/storage/ak;

    invoke-direct {v4}, Lcom/tencent/mm/storage/ak;-><init>()V

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/ak;->convertFrom(Landroid/database/Cursor;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/storage/ap;->af(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tencent/mm/storage/ap;->v(Lcom/tencent/mm/storage/ak;)J

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_2
    const-string v0, "MicroMsg.MMCore"

    const-string v4, "dkwt set forceManual :%b"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    if-eqz p2, :cond_8

    .line 465
    invoke-virtual {p1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    const-string v4, "readerapp"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/k;->tU(Ljava/lang/String;)I

    .line 466
    invoke-virtual {p1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v4, 0x100

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 467
    invoke-static {}, Lcom/tencent/mm/model/w;->tS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rl()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qF()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/i;->bM(I)V

    const-string v5, "MicroMsg.HardCodeUpdateTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "contact to updatefavour "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/tencent/mm/model/w;->chR:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_7

    aget-object v1, v4, v0

    invoke-virtual {p1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->qP()V

    invoke-virtual {p1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 468
    :cond_7
    invoke-static {p1}, Lcom/tencent/mm/model/ag;->d(Lcom/tencent/mm/model/b;)V

    .line 469
    invoke-static {p1}, Lcom/tencent/mm/model/ag;->c(Lcom/tencent/mm/model/b;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ver"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ce;->dC(Ljava/lang/String;)V

    .line 473
    :cond_8
    new-instance v0, Lcom/tencent/mm/model/af;

    iget-object v1, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v1}, Lcom/tencent/mm/model/be;->c(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/b;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/model/bj;->ciP:Lcom/tencent/mm/model/an;

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/model/af;-><init>(Lcom/tencent/mm/model/b;Lcom/tencent/mm/model/an;)V

    .line 474
    invoke-virtual {v0, p2}, Lcom/tencent/mm/model/af;->O(Z)V

    .line 476
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 478
    iget-object v0, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->c(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uK()Lcom/tencent/mm/model/be;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/be;->g(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/an;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/an;->nR()Lcom/tencent/mm/storage/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/s;)V

    .line 480
    return-void
.end method

.method public final b(Lcom/tencent/mm/model/b;)V
    .locals 1
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->e(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/dr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/model/dr;->b(Lcom/tencent/mm/model/b;)V

    .line 485
    return-void
.end method

.method public final td()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->b(Lcom/tencent/mm/model/be;)V

    .line 445
    iget-object v0, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->c(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v1}, Lcom/tencent/mm/model/be;->d(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/n/aw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/n/f;->a(Lcom/tencent/mm/n/e;Lcom/tencent/mm/n/aw;)V

    .line 447
    iget-object v0, p0, Lcom/tencent/mm/model/bj;->ciN:Lcom/tencent/mm/model/be;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->e(Lcom/tencent/mm/model/be;)Lcom/tencent/mm/model/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/dr;->vE()V

    .line 448
    return-void
.end method
