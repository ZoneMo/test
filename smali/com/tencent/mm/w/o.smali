.class public final Lcom/tencent/mm/w/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# static fields
.field private static ctA:Ljava/util/Set;


# instance fields
.field private ctB:Ljava/util/LinkedList;

.field private ctC:Z

.field private ctD:Lcom/tencent/mm/w/ad;

.field private ctE:Ljava/util/Queue;

.field private ctF:I

.field private ctG:J

.field private ctH:Z

.field ctI:Lcom/tencent/mm/compatible/g/k;

.field private ctJ:Lcom/tencent/mm/sdk/platformtools/ay;

.field private th:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/mm/w/o;->ctA:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/w/o;->ctB:Ljava/util/LinkedList;

    .line 28
    iput-boolean v3, p0, Lcom/tencent/mm/w/o;->ctC:Z

    .line 54
    new-instance v0, Lcom/tencent/mm/w/p;

    invoke-direct {v0, p0}, Lcom/tencent/mm/w/p;-><init>(Lcom/tencent/mm/w/o;)V

    iput-object v0, p0, Lcom/tencent/mm/w/o;->ctD:Lcom/tencent/mm/w/ad;

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/w/o;->ctE:Ljava/util/Queue;

    .line 181
    iput-boolean v3, p0, Lcom/tencent/mm/w/o;->th:Z

    .line 183
    iput v3, p0, Lcom/tencent/mm/w/o;->ctF:I

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/w/o;->ctG:J

    .line 185
    iput-boolean v3, p0, Lcom/tencent/mm/w/o;->ctH:Z

    .line 263
    new-instance v0, Lcom/tencent/mm/compatible/g/k;

    invoke-direct {v0}, Lcom/tencent/mm/compatible/g/k;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/w/o;->ctI:Lcom/tencent/mm/compatible/g/k;

    .line 297
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/w/s;

    invoke-direct {v2, p0}, Lcom/tencent/mm/w/s;-><init>(Lcom/tencent/mm/w/o;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/w/o;->ctJ:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 39
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/w/o;->ctB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 43
    iput-boolean v3, p0, Lcom/tencent/mm/w/o;->ctC:Z

    .line 44
    return-void
.end method

.method private AQ()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/mm/w/o;->ctE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/w/o;->th:Z

    .line 268
    const-string v0, "MicroMsg.ImgService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finish service use time(ms):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/w/o;->ctI:Lcom/tencent/mm/compatible/g/k;

    invoke-virtual {v2}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method static synthetic AR()Ljava/util/Set;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/mm/w/o;->ctA:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/w/o;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/w/o;->ctB:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/w/o;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/tencent/mm/w/o;->ctC:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/w/o;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/w/o;->ctH:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/w/o;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/mm/w/o;->ctF:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/w/o;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/w/o;->ctG:J

    iget-boolean v0, p0, Lcom/tencent/mm/w/o;->ctH:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/w/o;->ctE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/w/g;->AP()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/w/o;->ctH:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/w/o;->ctE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/tencent/mm/w/o;->AQ()V

    const-string v0, "MicroMsg.ImgService"

    const-string v1, "No Data Any More , Stop Service"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/w/e;

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/w/g;->dH(I)Lcom/tencent/mm/w/e;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v5

    long-to-int v1, v5

    :goto_3
    sget-object v5, Lcom/tencent/mm/w/o;->ctA:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MicroMsg.ImgService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File is Already running:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v5

    long-to-int v1, v5

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/tencent/mm/w/e;->AF()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v4}, Lcom/tencent/mm/w/e;->AH()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->vR()I

    move-result v5

    if-gt v1, v5, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->getStatus()I

    move-result v1

    if-eq v1, v8, :cond_3

    invoke-virtual {v4}, Lcom/tencent/mm/w/e;->getStatus()I

    move-result v1

    if-eq v1, v8, :cond_3

    :goto_4
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AE()I

    move-result v1

    add-int/lit16 v1, v1, 0x258

    int-to-long v4, v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_7

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AF()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AH()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->vR()I

    move-result v4

    if-gt v1, v4, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->getStatus()I

    move-result v1

    if-eq v1, v8, :cond_3

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/w/o;->ctE:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/w/o;->ctE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/tencent/mm/w/o;->ctH:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/w/o;->ctE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    move-object v0, v2

    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/tencent/mm/w/o;->ctE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/w/o;->ctE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/w/e;

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/w/g;->dH(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    long-to-int v1, v3

    :goto_6
    sget-object v3, Lcom/tencent/mm/w/o;->ctA:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, v2

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    long-to-int v1, v3

    goto :goto_6

    :cond_c
    iput-boolean v9, p0, Lcom/tencent/mm/w/o;->ctH:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/g;->dH(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v0, "MicroMsg.ImgService"

    const-string v2, "try upload hdinfo "

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/w/y;

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1, v9}, Lcom/tencent/mm/w/y;-><init>(II)V

    :goto_7
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto/16 :goto_1

    :cond_d
    const-string v1, "MicroMsg.ImgService"

    const-string v2, "try upload normalinfo "

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/w/y;

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/w/y;-><init>(II)V

    move-object v0, v1

    goto :goto_7
.end method

.method public static dI(I)Z
    .locals 2
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/tencent/mm/w/o;->ctA:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static dJ(I)Z
    .locals 2
    .parameter

    .prologue
    .line 35
    sget-object v0, Lcom/tencent/mm/w/o;->ctA:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static dK(I)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x108

    const/4 v6, -0x1

    .line 87
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/w/g;->dE(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/w/g;->dH(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0, v6}, Lcom/tencent/mm/w/e;->setStatus(I)V

    .line 96
    invoke-virtual {v0, v7}, Lcom/tencent/mm/w/e;->cL(I)V

    .line 97
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 98
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AF()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    .line 105
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AF()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 108
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    .line 109
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ak;->cL(I)V

    .line 110
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v1, v6}, Lcom/tencent/mm/w/e;->setStatus(I)V

    .line 101
    invoke-virtual {v1, v7}, Lcom/tencent/mm/w/e;->cL(I)V

    .line 102
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 103
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AF()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic e(Lcom/tencent/mm/w/o;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/mm/w/o;->AQ()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/w/o;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/tencent/mm/w/o;->ctG:J

    return-wide v0
.end method

.method static synthetic g(Lcom/tencent/mm/w/o;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/tencent/mm/w/o;->th:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/w/o;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/w/o;->th:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/w/o;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/w/o;->ctF:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/w/o;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/w/o;->ctJ:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/w/q;

    invoke-direct {v1, p0, p4}, Lcom/tencent/mm/w/q;-><init>(Lcom/tencent/mm/w/o;Lcom/tencent/mm/n/x;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    .line 261
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 74
    invoke-static {v4, p3, p6}, Lcom/tencent/mm/model/v;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 76
    :goto_1
    new-instance v0, Lcom/tencent/mm/w/y;

    iget-object v7, p0, Lcom/tencent/mm/w/o;->ctD:Lcom/tencent/mm/w/ad;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tencent/mm/w/ad;)V

    .line 77
    iget-boolean v1, p0, Lcom/tencent/mm/w/o;->ctC:Z

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/tencent/mm/w/o;->ctB:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 81
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/w/o;->ctC:Z

    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/w/r;

    invoke-direct {v1, p0}, Lcom/tencent/mm/w/r;-><init>(Lcom/tencent/mm/w/o;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    .line 295
    return-void
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/w/o;->ctF:I

    .line 311
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 312
    return-void
.end method
