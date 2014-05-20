.class final Lcom/tencent/mm/t/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/at;
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private ckk:Z

.field private cku:J

.field private csf:Lcom/tencent/mm/a/d;

.field private csg:Ljava/util/Map;

.field private csh:I

.field private csi:Lcom/tencent/mm/protocal/a/il;

.field csj:Lcom/tencent/mm/sdk/platformtools/ay;

.field final csk:I

.field private csl:Lcom/tencent/mm/sdk/platformtools/ay;

.field final csm:I

.field private csn:Lcom/tencent/mm/sdk/platformtools/ay;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v4, p0, Lcom/tencent/mm/t/c;->ckk:Z

    .line 38
    new-instance v0, Lcom/tencent/mm/a/d;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/tencent/mm/a/d;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/t/c;->csf:Lcom/tencent/mm/a/d;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/t/c;->csg:Ljava/util/Map;

    .line 82
    iput v4, p0, Lcom/tencent/mm/t/c;->csh:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/t/c;->csi:Lcom/tencent/mm/protocal/a/il;

    .line 86
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/t/d;

    invoke-direct {v2, p0}, Lcom/tencent/mm/t/d;-><init>(Lcom/tencent/mm/t/c;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/t/c;->csj:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 198
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/tencent/mm/t/c;->csk:I

    .line 199
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/t/f;

    invoke-direct {v2, p0}, Lcom/tencent/mm/t/f;-><init>(Lcom/tencent/mm/t/c;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/t/c;->csl:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 209
    const/16 v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/t/c;->csm:I

    .line 210
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/t/g;

    invoke-direct {v2, p0}, Lcom/tencent/mm/t/g;-><init>(Lcom/tencent/mm/t/c;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/t/c;->csn:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 221
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/t/c;->cku:J

    .line 74
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 75
    iput-boolean v4, p0, Lcom/tencent/mm/t/c;->ckk:Z

    .line 76
    return-void
.end method

.method private Av()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 226
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v3

    .line 227
    iget-boolean v0, p0, Lcom/tencent/mm/t/c;->ckk:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/t/c;->cku:J

    sub-long v0, v3, v0

    const-wide/32 v5, 0x927c0

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    .line 228
    iput-boolean v2, p0, Lcom/tencent/mm/t/c;->ckk:Z

    .line 230
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/t/c;->ckk:Z

    if-eqz v0, :cond_2

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/t/b;->Au()Ljava/util/List;

    move-result-object v5

    .line 235
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 239
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 240
    const/16 v0, 0x14

    if-ge v1, v0, :cond_7

    .line 241
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/t/a;

    invoke-virtual {v0}, Lcom/tencent/mm/t/a;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 246
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csf:Lcom/tencent/mm/a/d;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 247
    const-string v8, "MicroMsg.GetContactService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "username:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mapCnt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    if-nez v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csf:Lcom/tencent/mm/a/d;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/tencent/mm/a/d;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    :goto_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_5

    .line 251
    iget-object v8, p0, Lcom/tencent/mm/t/c;->csf:Lcom/tencent/mm/a/d;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Lcom/tencent/mm/a/d;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 253
    :cond_5
    const-string v0, "MicroMsg.GetContactService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LRUMap Max now :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csg:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csg:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/au;

    .line 256
    if-eqz v0, :cond_6

    .line 257
    invoke-interface {v0, v7, v2}, Lcom/tencent/mm/model/au;->g(Ljava/lang/String;Z)V

    .line 259
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csg:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 265
    :cond_7
    const-string v0, "MicroMsg.GetContactService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tryStartNetscene req lst:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/t/c;->ckk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-boolean v0, p0, Lcom/tencent/mm/t/c;->ckk:Z

    if-nez v0, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 267
    iput-wide v3, p0, Lcom/tencent/mm/t/c;->cku:J

    .line 268
    iput-boolean v11, p0, Lcom/tencent/mm/t/c;->ckk:Z

    .line 269
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/t/k;

    invoke-direct {v1, v6}, Lcom/tencent/mm/t/k;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/t/c;)Lcom/tencent/mm/protocal/a/il;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csi:Lcom/tencent/mm/protocal/a/il;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/t/c;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/tencent/mm/t/c;->csh:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/t/c;)Lcom/tencent/mm/protocal/a/il;
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/t/c;->csi:Lcom/tencent/mm/protocal/a/il;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/t/c;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/t/c;->csh:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/t/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/t/c;->ckk:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/t/c;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csl:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/t/c;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csg:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/t/c;)I
    .locals 2
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/tencent/mm/t/c;->csh:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/t/c;->csh:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/t/c;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/mm/t/c;->Av()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 280
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 281
    :cond_1
    const-string v0, "MicroMsg.GetContactService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd errType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csn:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto :goto_0

    .line 286
    :cond_2
    new-instance v0, Lcom/tencent/mm/t/h;

    check-cast p4, Lcom/tencent/mm/t/k;

    iget-object v1, p4, Lcom/tencent/mm/t/k;->cke:Lcom/tencent/mm/n/a;

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/t/h;-><init>(Lcom/tencent/mm/t/c;Lcom/tencent/mm/n/a;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/t/h;->bO(J)V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/t/c;->ckk:Z

    .line 289
    invoke-direct {p0}, Lcom/tencent/mm/t/c;->Av()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/mm/model/au;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    const-string v0, "MicroMsg.GetContactService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNow :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/tencent/mm/t/a;

    invoke-direct {v0}, Lcom/tencent/mm/t/a;-><init>()V

    .line 66
    invoke-virtual {v0, p1}, Lcom/tencent/mm/t/a;->setUsername(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/t/a;->D(J)V

    .line 68
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/t/b;->a(Lcom/tencent/mm/t/a;)Z

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csg:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Lcom/tencent/mm/t/c;->Av()V

    goto :goto_0
.end method

.method public final do(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    const-string v0, "MicroMsg.GetContactService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add Contact :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/tencent/mm/t/a;

    invoke-direct {v0}, Lcom/tencent/mm/t/a;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/tencent/mm/t/a;->setUsername(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/t/a;->D(J)V

    .line 55
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/t/b;->a(Lcom/tencent/mm/t/a;)Z

    .line 56
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csl:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto :goto_0
.end method

.method public final dp(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/mm/t/c;->csg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
