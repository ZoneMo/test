.class public final Lcom/tencent/mm/plugin/backup/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Ljava/util/HashMap;)V
    .locals 10
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/ax;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ap;->uW(Ljava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v3

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/mm/storage/n;

    invoke-direct {v0, v5}, Lcom/tencent/mm/storage/n;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/n;->bZ(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/n;->bY(I)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/n;->t(Lcom/tencent/mm/storage/ak;)V

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/n;->bP(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rT()J

    move-result-wide v6

    const-wide/high16 v8, 0x4000

    and-long/2addr v6, v8

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v3

    const-wide v8, 0xffffffffffffffL

    and-long/2addr v3, v8

    or-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/n;->p(J)V

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/ax;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/o;->c(Lcom/tencent/mm/storage/n;)J

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/backup/model/ax;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 30
    :cond_4
    return-void
.end method

.method public static cp(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_1
    const-string v0, "@chatroom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static d(Lcom/tencent/mm/storage/ak;)J
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 82
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gn()Lcom/tencent/mm/plugin/backup/model/am;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/backup/model/am;->d(ILjava/lang/Object;)Z

    .line 86
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/i;

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/storage/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->B(Lcom/tencent/mm/storage/i;)Z

    .line 94
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ap;->v(Lcom/tencent/mm/storage/ak;)J

    move-result-wide v0

    return-wide v0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->tv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gn()Lcom/tencent/mm/plugin/backup/model/am;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/backup/model/am;->d(ILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public static dw(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-static {p0}, Lcom/tencent/mm/plugin/backup/c/a;->dx(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static dx(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 113
    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 123
    if-eq v1, v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public static dz(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, Lcom/tencent/mm/plugin/backup/c/a;->dx(Ljava/lang/String;)I

    move-result v0

    .line 100
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object p0

    .line 104
    :cond_1
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 108
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static fU(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 211
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->sG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg_"

    const-string v2, ".amr"

    const/4 v3, 0x2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const/4 v0, 0x0

    .line 233
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/ax;->sF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 228
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-static {v1, v0, v5}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-static {p0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ai/r;->gW(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v0

    goto :goto_0
.end method
