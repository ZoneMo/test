.class public final Lcom/tencent/mm/z/i;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# static fields
.field protected static cuT:I

.field private static cuU:Z

.field private static cuX:Ljava/util/List;


# instance fields
.field private bLI:I

.field private bLJ:I

.field private bOM:Ljava/lang/String;

.field private cjh:Lcom/tencent/mm/n/m;

.field private ckr:Lcom/tencent/mm/sdk/platformtools/ay;

.field private cuC:Lcom/tencent/mm/z/a;

.field private cuG:J

.field private final cuO:Lcom/tencent/mm/z/r;

.field private final cuP:Lcom/tencent/mm/z/b;

.field private final cuQ:I

.field private cuR:Z

.field private cuS:Z

.field private cuV:Z

.field private cuW:I

.field private cuY:Z

.field private cuZ:Lcom/tencent/mm/compatible/g/k;

.field private cva:Ljava/lang/StringBuilder;

.field private cvb:Z

.field private cvc:Z

.field private cvd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x7

    sput v0, Lcom/tencent/mm/z/i;->cuT:I

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/z/i;->cuU:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/mm/z/i;->cuX:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x2004

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 74
    new-instance v0, Lcom/tencent/mm/z/a;

    invoke-direct {v0}, Lcom/tencent/mm/z/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    .line 83
    iput-boolean v4, p0, Lcom/tencent/mm/z/i;->cuR:Z

    .line 84
    iput-boolean v4, p0, Lcom/tencent/mm/z/i;->cuS:Z

    .line 89
    iput v4, p0, Lcom/tencent/mm/z/i;->bLI:I

    .line 90
    iput v4, p0, Lcom/tencent/mm/z/i;->bLJ:I

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/z/i;->bOM:Ljava/lang/String;

    .line 95
    iput-boolean v4, p0, Lcom/tencent/mm/z/i;->cuV:Z

    .line 97
    iput v4, p0, Lcom/tencent/mm/z/i;->cuW:I

    .line 104
    iput-boolean v4, p0, Lcom/tencent/mm/z/i;->cuY:Z

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/i;->cva:Ljava/lang/StringBuilder;

    .line 110
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/z/i;->cuG:J

    .line 111
    iput-boolean v4, p0, Lcom/tencent/mm/z/i;->cvb:Z

    .line 112
    iput-boolean v4, p0, Lcom/tencent/mm/z/i;->cvc:Z

    .line 114
    iput-boolean v4, p0, Lcom/tencent/mm/z/i;->cvd:Z

    .line 117
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "dksord NetSceneSync hash:%d stack:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lcom/tencent/mm/compatible/g/k;

    invoke-direct {v0}, Lcom/tencent/mm/compatible/g/k;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/i;->cuZ:Lcom/tencent/mm/compatible/g/k;

    .line 119
    iput p1, p0, Lcom/tencent/mm/z/i;->cuQ:I

    .line 120
    new-instance v0, Lcom/tencent/mm/z/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/z/r;-><init>(Lcom/tencent/mm/z/i;)V

    iput-object v0, p0, Lcom/tencent/mm/z/i;->cuO:Lcom/tencent/mm/z/r;

    .line 121
    new-instance v0, Lcom/tencent/mm/z/b;

    invoke-direct {v0, p0}, Lcom/tencent/mm/z/b;-><init>(Lcom/tencent/mm/z/i;)V

    iput-object v0, p0, Lcom/tencent/mm/z/i;->cuP:Lcom/tencent/mm/z/b;

    .line 124
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 125
    sput-boolean v5, Lcom/tencent/mm/z/i;->cuU:Z

    .line 128
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0, v6, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 130
    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    .line 132
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 133
    sget v2, Lcom/tencent/mm/z/i;->cuT:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    long-to-int v0, v0

    .line 134
    sput v0, Lcom/tencent/mm/z/i;->cuT:I

    and-int/lit8 v0, v0, 0x5f

    sput v0, Lcom/tencent/mm/z/i;->cuT:I

    .line 139
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 140
    sget v0, Lcom/tencent/mm/z/i;->cuT:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/tencent/mm/z/i;->cuT:I

    .line 141
    sput-boolean v5, Lcom/tencent/mm/z/i;->cuU:Z

    .line 145
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 146
    sget v0, Lcom/tencent/mm/z/i;->cuT:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/tencent/mm/z/i;->cuT:I

    .line 147
    sput-boolean v5, Lcom/tencent/mm/z/i;->cuU:Z

    .line 150
    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 151
    sget v0, Lcom/tencent/mm/z/i;->cuT:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/tencent/mm/z/i;->cuT:I

    .line 152
    sput-boolean v5, Lcom/tencent/mm/z/i;->cuU:Z

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cva:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/z/i;->cuQ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    return-void
.end method

.method public constructor <init>(ILcom/tencent/mm/n/n;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/tencent/mm/z/i;-><init>(I)V

    .line 159
    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    invoke-virtual {v0, p2, p0}, Lcom/tencent/mm/z/a;->a(Lcom/tencent/mm/n/n;Lcom/tencent/mm/z/i;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuP:Lcom/tencent/mm/z/b;

    iget-object v1, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/z/b;->a(Lcom/tencent/mm/z/a;)V

    .line 163
    :cond_0
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "dkinit hash:%d progress:%s stack:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/protocal/as;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/tencent/mm/z/i;-><init>(I)V

    .line 169
    iput p2, p0, Lcom/tencent/mm/z/i;->cuW:I

    .line 170
    iput-wide p3, p0, Lcom/tencent/mm/z/i;->cuG:J

    .line 171
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "dkpush do scene resp SCENE_SYNC_WAIT"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/z/j;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/z/j;-><init>(Lcom/tencent/mm/z/i;Lcom/tencent/mm/protocal/as;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/z/i;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 183
    return-void
.end method

.method private static Bs()V
    .locals 3

    .prologue
    .line 499
    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync or init end: reset selector : now = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/mm/z/i;->cuT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " default = 7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/4 v0, 0x7

    sput v0, Lcom/tencent/mm/z/i;->cuT:I

    .line 501
    return-void
.end method

.method protected static Bt()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method protected static Bu()V
    .locals 2

    .prologue
    .line 512
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "resp canceled, synckey not set"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    .line 518
    return-void
.end method

.method protected static Bv()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method

.method private a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;[B[B[BJ)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p2, p0, Lcom/tencent/mm/z/i;->cjh:Lcom/tencent/mm/n/m;

    .line 252
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x2003

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/z/i;->cva:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " lastd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/mm/n/x;->clV:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dotime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " net:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/ba;->aK(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v2, "MicroMsg.NetSceneSync"

    const-string v3, "doScene[%d] selector:%d scene:%d pusher:%b needInit:%b"

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Lcom/tencent/mm/z/i;->cuQ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/tencent/mm/z/i;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v1, p0, Lcom/tencent/mm/z/i;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    if-eqz v1, :cond_3

    .line 262
    invoke-virtual {p0, p1}, Lcom/tencent/mm/z/i;->c(Lcom/tencent/mm/network/r;)V

    .line 263
    iget-object v0, p0, Lcom/tencent/mm/z/i;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/z/i;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 265
    const/4 v0, -0x1

    .line 327
    :goto_2
    return v0

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 256
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 270
    :cond_3
    if-eqz v0, :cond_c

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/i;->cvd:Z

    .line 272
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "dksord dkInit [%d] doScene Begin threadID:%d t:%d "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/mm/z/i;->cuZ:Lcom/tencent/mm/compatible/g/k;

    invoke-virtual {v4}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-boolean v0, p0, Lcom/tencent/mm/z/i;->cuY:Z

    if-nez v0, :cond_4

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/i;->cuY:Z

    .line 276
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 277
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/v;->afS()V

    .line 282
    :cond_4
    new-instance v1, Lcom/tencent/mm/z/k;

    invoke-direct {v1}, Lcom/tencent/mm/z/k;-><init>()V

    .line 283
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    iget v2, v0, Lcom/tencent/mm/z/a;->cus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/mm/z/a;->cus:I

    .line 286
    if-eqz p3, :cond_5

    array-length v0, p3

    if-gtz v0, :cond_6

    .line 287
    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x2005

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->ib(Ljava/lang/String;)[B

    move-result-object p3

    .line 290
    :cond_6
    if-eqz p4, :cond_7

    array-length v0, p4

    if-gtz v0, :cond_8

    .line 291
    :cond_7
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->ib(Ljava/lang/String;)[B

    move-result-object p4

    .line 294
    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_9

    array-length v0, p3

    if-gtz v0, :cond_a

    .line 295
    :cond_9
    invoke-interface {v1}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/p;->cR(I)V

    .line 302
    :goto_3
    invoke-interface {v1}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ao;

    iget-object v2, v0, Lcom/tencent/mm/protocal/ao;->fyq:Lcom/tencent/mm/protocal/a/oy;

    .line 303
    invoke-static {p3}, Lcom/tencent/mm/platformtools/an;->y([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/protocal/a/oy;->fRd:Lcom/tencent/mm/protocal/a/rv;

    .line 304
    invoke-static {p4}, Lcom/tencent/mm/platformtools/an;->y([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/protocal/a/oy;->fRe:Lcom/tencent/mm/protocal/a/rv;

    .line 305
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/mm/protocal/a/oy;->eBo:Ljava/lang/String;

    .line 307
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v0

    .line 308
    iput-object v0, v2, Lcom/tencent/mm/protocal/a/oy;->fBF:Ljava/lang/String;

    .line 310
    const-string v3, "MicroMsg.NetSceneSync"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dksord do init, initkey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->cn([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", username="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/oy;->eBo:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", language="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 325
    :goto_4
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/mm/z/i;->cuU:Z

    .line 327
    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/z/i;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    goto/16 :goto_2

    .line 296
    :cond_a
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x2003

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 297
    invoke-interface {v1}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/p;->cR(I)V

    goto/16 :goto_3

    .line 299
    :cond_b
    invoke-interface {v1}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/p;->cR(I)V

    goto/16 :goto_3

    .line 315
    :cond_c
    new-instance v1, Lcom/tencent/mm/z/l;

    iget v0, p0, Lcom/tencent/mm/z/i;->cuQ:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-direct {v1, v0}, Lcom/tencent/mm/z/l;-><init>(Z)V

    .line 317
    invoke-interface {v1}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ar;

    iget-object v2, v0, Lcom/tencent/mm/protocal/ar;->fys:Lcom/tencent/mm/protocal/a/pd;

    .line 318
    long-to-int v0, p6

    iput v0, v2, Lcom/tencent/mm/protocal/a/pd;->fIw:I

    .line 319
    if-eqz p5, :cond_d

    array-length v0, p5

    if-gtz v0, :cond_e

    :cond_d
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x2003

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->ib(Ljava/lang/String;)[B

    move-result-object p5

    :cond_e
    invoke-static {p5}, Lcom/tencent/mm/platformtools/an;->y([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/protocal/a/pd;->fIx:Lcom/tencent/mm/protocal/a/rv;

    .line 320
    iget v0, p0, Lcom/tencent/mm/z/i;->cuQ:I

    iget-boolean v3, p0, Lcom/tencent/mm/z/i;->cvc:Z

    if-eqz v3, :cond_10

    const/4 v0, 0x6

    :goto_6
    iput v0, v2, Lcom/tencent/mm/protocal/a/pd;->fyJ:I

    .line 321
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/au;->aCY()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/z/i;->t(Ljava/util/List;)Lcom/tencent/mm/protocal/a/cy;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/protocal/a/pd;->fRx:Lcom/tencent/mm/protocal/a/cy;

    .line 322
    sget-object v0, Lcom/tencent/mm/protocal/a;->fxk:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/mm/protocal/a/pd;->fQw:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_4

    .line 315
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 320
    :cond_10
    const/4 v3, 0x7

    if-ne v3, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_6

    :cond_11
    const/4 v3, 0x3

    if-ne v3, v0, :cond_12

    const/4 v0, 0x2

    goto :goto_6

    :cond_12
    const/4 v3, 0x1

    if-ne v3, v0, :cond_13

    const/4 v0, 0x4

    goto :goto_6

    :cond_13
    const/16 v3, 0xd

    if-ne v3, v0, :cond_14

    const/4 v0, 0x5

    goto :goto_6

    :cond_14
    const/16 v3, 0xc

    if-ne v3, v0, :cond_15

    const/4 v0, 0x3

    goto :goto_6

    :cond_15
    const/16 v3, 0xe

    if-ne v3, v0, :cond_16

    const/16 v0, 0x8

    goto :goto_6

    :cond_16
    const/4 v0, 0x7

    goto :goto_6
.end method

.method static synthetic a(Lcom/tencent/mm/z/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/i;->cvb:Z

    return v0
.end method

.method private static t(Ljava/util/List;)Lcom/tencent/mm/protocal/a/cy;
    .locals 6
    .parameter

    .prologue
    .line 350
    new-instance v2, Lcom/tencent/mm/protocal/a/cy;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/cy;-><init>()V

    .line 351
    const/4 v0, 0x0

    .line 352
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/bz;

    .line 353
    invoke-virtual {v0}, Lcom/tencent/mm/storage/bz;->getBytes()[B

    move-result-object v4

    .line 354
    if-eqz v4, :cond_1

    .line 355
    new-instance v5, Lcom/tencent/mm/protocal/a/cx;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/cx;-><init>()V

    .line 356
    invoke-virtual {v0}, Lcom/tencent/mm/storage/bz;->getCmdId()I

    move-result v0

    iput v0, v5, Lcom/tencent/mm/protocal/a/cx;->fDZ:I

    .line 357
    new-instance v0, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/mm/protocal/a/cx;->fEa:Lcom/tencent/mm/protocal/a/rv;

    .line 358
    iget-object v0, v2, Lcom/tencent/mm/protocal/a/cy;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 361
    goto :goto_0

    .line 362
    :cond_0
    iput v1, v2, Lcom/tencent/mm/protocal/a/cy;->fAC:I

    .line 363
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final Bq()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/tencent/mm/z/i;->cuR:Z

    return v0
.end method

.method public final Br()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/tencent/mm/z/i;->cvd:Z

    return v0
.end method

.method protected final Bw()V
    .locals 6

    .prologue
    .line 560
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "resp canceled, initkey not set"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/v;->afT()V

    .line 571
    :cond_0
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "dkInit [%d] onRespHandled threadID:%d t:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/mm/z/i;->cuZ:Lcom/tencent/mm/compatible/g/k;

    invoke-virtual {v4}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 247
    sget-object v3, Lcom/tencent/mm/protocal/a;->fxx:[B

    sget-object v4, Lcom/tencent/mm/protocal/a;->fxy:[B

    sget-object v5, Lcom/tencent/mm/protocal/a;->fxw:[B

    sget v0, Lcom/tencent/mm/z/i;->cuT:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/z/i;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;[B[B[BJ)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 217
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    if-nez p5, :cond_1

    .line 369
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "rr null, skip resp"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cva:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " endtime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "onGYNetEnd: %d [%d,%d,%s] hash isnotifydata:%b time:%d [%s]"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/tencent/mm/z/i;->cvb:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/tencent/mm/z/i;->cuZ:Lcom/tencent/mm/compatible/g/k;

    invoke-virtual {v4}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/tencent/mm/z/i;->cva:Ljava/lang/StringBuilder;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/i;->cuV:Z

    .line 376
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->getType()I

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_11

    .line 377
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/mm/z/i;->cvb:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/au;->cT(Z)V

    .line 379
    const/4 v0, 0x0

    .line 380
    const/4 v1, 0x4

    if-ne p2, v1, :cond_16

    const/16 v1, -0x7d6

    if-ne p3, v1, :cond_16

    .line 381
    const/4 v0, 0x1

    .line 382
    const/4 p2, 0x0

    .line 383
    const/4 p3, 0x0

    move v1, v0

    .line 386
    :goto_2
    if-nez p2, :cond_2

    if-eqz p3, :cond_5

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuO:Lcom/tencent/mm/z/r;

    iget-object v0, v0, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    if-eqz v0, :cond_4

    .line 388
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "oreh sync mIRH.processingResp is not null, and simulate not continue"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iput p2, p0, Lcom/tencent/mm/z/i;->bLI:I

    .line 390
    iput p3, p0, Lcom/tencent/mm/z/i;->bLJ:I

    .line 391
    iput-object p4, p0, Lcom/tencent/mm/z/i;->bOM:Ljava/lang/String;

    .line 392
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/as;

    iget-object v0, v0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/protocal/a/pe;->fIz:I

    goto/16 :goto_0

    .line 377
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 399
    :cond_5
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/as;

    .line 401
    if-nez v1, :cond_a

    .line 402
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/ar;

    iget-object v1, v1, Lcom/tencent/mm/protocal/ar;->fys:Lcom/tencent/mm/protocal/a/pd;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/pd;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v2

    .line 403
    const-string v3, "MicroMsg.NetSceneSync"

    const-string v4, "dkpush req Key : %d[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v2, :cond_b

    const/4 v1, -0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->cn([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 406
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x2003

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->ib(Ljava/lang/String;)[B

    move-result-object v2

    .line 407
    const-string v3, "MicroMsg.NetSceneSync"

    const-string v4, "dkpush userinfo key : %d[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v2, :cond_c

    const/4 v1, -0x1

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->cn([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move-object v1, v2

    .line 410
    iget-object v2, v0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v2

    .line 412
    if-eqz v1, :cond_7

    array-length v3, v1

    if-gtz v3, :cond_d

    :cond_7
    const-string v1, "MicroMsg.NetSceneSync"

    const-string v3, "empty old key, use new key"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 413
    :goto_5
    if-eqz v1, :cond_8

    array-length v3, v1

    if-gtz v3, :cond_9

    .line 416
    :cond_8
    const-string v1, "MicroMsg.NetSceneSync"

    const-string v3, "merge key failed, use server side instead"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 418
    :cond_9
    iget-object v2, v0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->y([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    .line 421
    :cond_a
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget v2, v2, Lcom/tencent/mm/protocal/a/pe;->fzr:I

    iget-object v3, v0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget v3, v3, Lcom/tencent/mm/protocal/a/pe;->fRy:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/model/b;->A(II)V

    .line 435
    iget-object v1, p0, Lcom/tencent/mm/z/i;->cuO:Lcom/tencent/mm/z/r;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/z/r;->c(Lcom/tencent/mm/protocal/as;)V

    goto/16 :goto_0

    .line 403
    :cond_b
    array-length v1, v2

    goto/16 :goto_3

    .line 407
    :cond_c
    array-length v1, v2

    goto :goto_4

    .line 412
    :cond_d
    if-eqz v2, :cond_e

    array-length v3, v2

    if-gtz v3, :cond_f

    :cond_e
    const-string v1, "MicroMsg.NetSceneSync"

    const-string v3, "newKey is null"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_5

    :cond_f
    new-instance v3, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v3}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/protocal/MMProtocalJni;->mergeSyncKey([B[BLcom/tencent/mm/pointers/PByteArray;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "MicroMsg.NetSceneSync"

    const-string v3, "merge key failed"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_5

    :cond_10
    iget-object v1, v3, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    goto :goto_5

    .line 438
    :cond_11
    if-nez p2, :cond_12

    if-eqz p3, :cond_14

    .line 439
    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuP:Lcom/tencent/mm/z/b;

    iget-object v0, v0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    if-eqz v0, :cond_13

    .line 440
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "oreh init mIRH.processingResp is not null, and simulate not continue"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iput p2, p0, Lcom/tencent/mm/z/i;->bLI:I

    .line 442
    iput p3, p0, Lcom/tencent/mm/z/i;->bLJ:I

    .line 443
    iput-object p4, p0, Lcom/tencent/mm/z/i;->bOM:Ljava/lang/String;

    .line 444
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ap;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/protocal/a/oz;->fIz:I

    goto/16 :goto_0

    .line 447
    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 453
    :cond_14
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/tencent/mm/protocal/ap;

    .line 454
    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resp initkey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/oz;->fRd:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->cn([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxInitKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/oz;->fRe:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->cn([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    iget v1, v0, Lcom/tencent/mm/z/a;->cuu:I

    iget-object v2, v8, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget v2, v2, Lcom/tencent/mm/protocal/a/oz;->fRg:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/mm/z/a;->cuu:I

    .line 457
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "dkinit resp count:%d sum:%d resp:%d stack:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget v4, v4, Lcom/tencent/mm/protocal/a/oz;->fRg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    iget v4, v4, Lcom/tencent/mm/z/a;->cuu:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuP:Lcom/tencent/mm/z/b;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/z/b;->b(Lcom/tencent/mm/protocal/ap;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 461
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "init done"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/i;->cuS:Z

    .line 463
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/mm/z/a;->cut:Z

    .line 464
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    iget v1, v0, Lcom/tencent/mm/z/a;->cuu:I

    iget-object v2, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    iget v2, v2, Lcom/tencent/mm/z/a;->cur:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/mm/z/a;->cuu:I

    .line 465
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/z/a;->cur:I

    goto/16 :goto_0

    .line 470
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/z/i;->cvc:Z

    .line 471
    invoke-virtual {p0}, Lcom/tencent/mm/z/i;->wM()Lcom/tencent/mm/network/r;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/z/i;->cjh:Lcom/tencent/mm/n/m;

    iget-object v0, v8, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/oz;->fRd:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v3

    iget-object v0, v8, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/oz;->fRe:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v4

    sget-object v5, Lcom/tencent/mm/protocal/a;->fxw:[B

    sget v0, Lcom/tencent/mm/z/i;->cuT:I

    int-to-long v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/z/i;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;[B[B[BJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 472
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "parally processing init failed, mark resp as finished"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, v8, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/protocal/a/oz;->fIz:I

    goto/16 :goto_0

    :cond_16
    move v1, v0

    goto/16 :goto_2
.end method

.method protected final a(Lcom/tencent/mm/protocal/as;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 521
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "onRespHandled sync"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x2003

    iget-object v2, p1, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->cp([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 523
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x2004

    iget-object v2, p1, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget v2, v2, Lcom/tencent/mm/protocal/a/pe;->fIz:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 524
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/e;->zz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/b;->bZ(Ljava/lang/String;)I

    .line 529
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "dkpush notifyPending:%s pushSyncFlag:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-boolean v4, Lcom/tencent/mm/z/i;->cuU:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/tencent/mm/z/i;->cuW:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuO:Lcom/tencent/mm/z/r;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/z/r;->b(Lcom/tencent/mm/protocal/as;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iput-boolean v5, p0, Lcom/tencent/mm/z/i;->cvc:Z

    .line 533
    invoke-virtual {p0}, Lcom/tencent/mm/z/i;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/z/i;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/z/i;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    .line 550
    :goto_0
    return-void

    .line 535
    :cond_0
    sget-boolean v0, Lcom/tencent/mm/z/i;->cuU:Z

    if-eqz v0, :cond_1

    .line 536
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "new notify pending, sync now"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iput-boolean v5, p0, Lcom/tencent/mm/z/i;->cvc:Z

    .line 538
    invoke-virtual {p0}, Lcom/tencent/mm/z/i;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/z/i;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/z/i;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    goto :goto_0

    .line 542
    :cond_1
    iget v0, p0, Lcom/tencent/mm/z/i;->cuW:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_2

    .line 543
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "dkpush TODO NotifyData ack"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/d;

    iget-wide v2, p0, Lcom/tencent/mm/z/i;->cuG:J

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/z/d;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 547
    :cond_2
    invoke-static {}, Lcom/tencent/mm/z/i;->Bs()V

    .line 548
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cjh:Lcom/tencent/mm/n/m;

    iget v1, p0, Lcom/tencent/mm/z/i;->bLI:I

    iget v2, p0, Lcom/tencent/mm/z/i;->bLJ:I

    iget-object v3, p0, Lcom/tencent/mm/z/i;->bOM:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/n/x;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 196
    instance-of v2, p1, Lcom/tencent/mm/z/i;

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    check-cast p1, Lcom/tencent/mm/z/i;

    .line 201
    iget-boolean v2, p1, Lcom/tencent/mm/z/i;->cuV:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/tencent/mm/z/i;->cuU:Z

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "MicroMsg.NetSceneSync"

    const-string v3, "old not busy and notified, maybe cancel old scene, last dispatch=%d"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p1, Lcom/tencent/mm/z/i;->clV:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v2, p0, Lcom/tencent/mm/z/i;->cva:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " cp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/tencent/mm/z/i;->clV:J

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->O(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-wide v2, p1, Lcom/tencent/mm/z/i;->clV:J

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->O(J)J

    move-result-wide v2

    const-wide/32 v4, 0x3a980

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected final c(Lcom/tencent/mm/protocal/ap;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x2006

    const/16 v6, 0x2005

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 575
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v3, "onRespHandled init"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    iget-object v3, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/oz;->fRd:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->cp([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 577
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    iget-object v3, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/oz;->fRe:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->cp([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 578
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 579
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/storage/e;->zz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/model/b;->bZ(Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuC:Lcom/tencent/mm/z/a;

    invoke-virtual {v0}, Lcom/tencent/mm/z/a;->Bm()V

    .line 585
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuP:Lcom/tencent/mm/z/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/z/b;->a(Lcom/tencent/mm/protocal/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "waiting for next init resp"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :goto_0
    return-void

    .line 589
    :cond_0
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v3, "all resp handled"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-boolean v0, p0, Lcom/tencent/mm/z/i;->cuS:Z

    if-eqz v0, :cond_2

    .line 592
    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "set sync_selector equal last init selector :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget v4, v4, Lcom/tencent/mm/protocal/a/oz;->fRf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/oz;->fRe:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/oz;->fRe:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 594
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x2004

    iget-object v4, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget v4, v4, Lcom/tencent/mm/protocal/a/oz;->fRf:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 595
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x2003

    iget-object v4, p1, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/oz;->fRe:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v4}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->cp([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 596
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v6, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 597
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v7, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 598
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 600
    iput-boolean v2, p0, Lcom/tencent/mm/z/i;->cuR:Z

    .line 601
    invoke-static {}, Lcom/tencent/mm/z/i;->Bs()V

    .line 605
    :cond_2
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 606
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/v;->afT()V

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cjh:Lcom/tencent/mm/n/m;

    iget v3, p0, Lcom/tencent/mm/z/i;->bLI:I

    iget v4, p0, Lcom/tencent/mm/z/i;->bLJ:I

    iget-object v5, p0, Lcom/tencent/mm/z/i;->bOM:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v5, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 609
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v3, "dkInit onRespHandled threadID:%d t:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/tencent/mm/z/i;->cuZ:Lcom/tencent/mm/compatible/g/k;

    invoke-virtual {v1}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 593
    goto/16 :goto_1
.end method

.method protected final cancel()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/tencent/mm/n/x;->cancel()V

    .line 237
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuO:Lcom/tencent/mm/z/r;

    invoke-virtual {v0}, Lcom/tencent/mm/z/r;->cancel()V

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cuP:Lcom/tencent/mm/z/b;

    invoke-virtual {v0}, Lcom/tencent/mm/z/b;->cancel()V

    .line 239
    return-void
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tencent/mm/z/i;->cva:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0x26

    return v0
.end method

.method public final wL()Z
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/tencent/mm/n/x;->wL()Z

    move-result v0

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0x1f4

    return v0
.end method
