.class public final Lcom/tencent/mm/modelsimple/i;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private final cmF:Lcom/tencent/mm/network/aj;

.field private crh:I

.field private cwX:Ljava/lang/String;

.field private cwY:Ljava/lang/String;

.field private cwZ:Ljava/lang/String;

.field private cxa:Ljava/lang/String;

.field private cxb:Z

.field private cxc:I


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cxa:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/tencent/mm/modelsimple/i;->cxb:Z

    .line 59
    iput v7, p0, Lcom/tencent/mm/modelsimple/i;->crh:I

    .line 60
    iput v1, p0, Lcom/tencent/mm/modelsimple/i;->cxc:I

    .line 70
    new-instance v0, Lcom/tencent/mm/n/u;

    invoke-direct {v0}, Lcom/tencent/mm/n/u;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    .line 72
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    invoke-static {v0}, Lcom/tencent/mm/n/aw;->eA(Ljava/lang/String;)I

    move-result v3

    .line 76
    new-instance v4, Lcom/tencent/mm/a/j;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v2

    invoke-direct {v4, v2}, Lcom/tencent/mm/a/j;-><init>(I)V

    .line 78
    if-ne v3, v8, :cond_0

    invoke-virtual {v4}, Lcom/tencent/mm/a/j;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 79
    invoke-virtual {v4}, Lcom/tencent/mm/a/j;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    .line 84
    :goto_0
    const-string v2, "MicroMsg.NetSceneAuth"

    const-string v3, "dkwt NetSceneAuth username:%s qq:%d account:%s "

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v4}, Lcom/tencent/mm/a/j;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    aput-object v0, v5, v9

    invoke-static {v2, v3, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelsimple/i;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    return-void

    .line 82
    :cond_0
    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelsimple/i;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/tencent/mm/modelsimple/i;->cxa:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cxa:Ljava/lang/String;

    .line 57
    iput-boolean v5, p0, Lcom/tencent/mm/modelsimple/i;->cxb:Z

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/modelsimple/i;->crh:I

    .line 60
    iput v5, p0, Lcom/tencent/mm/modelsimple/i;->cxc:I

    .line 102
    new-instance v0, Lcom/tencent/mm/n/u;

    invoke-direct {v0}, Lcom/tencent/mm/n/u;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    .line 103
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    move-object v0, p0

    move v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelsimple/i;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cxa:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/tencent/mm/modelsimple/i;->cxb:Z

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/modelsimple/i;->crh:I

    .line 60
    iput v1, p0, Lcom/tencent/mm/modelsimple/i;->cxc:I

    .line 89
    new-instance v0, Lcom/tencent/mm/n/u;

    invoke-direct {v0}, Lcom/tencent/mm/n/u;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    .line 90
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    .line 91
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    .line 92
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->ia(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    .line 93
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelsimple/i;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelsimple/i;)Lcom/tencent/mm/network/r;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/tencent/mm/modelsimple/i;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/k;

    .line 143
    const-string v1, "MicroMsg.NetSceneAuth"

    const-string v2, "dkwt setPass wtseccode:%b secCode:%s sid:%s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p2, v3, v8

    aput-object p3, v3, v9

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/n/aw;->eA(Ljava/lang/String;)I

    move-result v2

    .line 146
    const/4 v1, 0x0

    .line 147
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hS(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-static {}, Lcom/tencent/mm/model/be;->ur()Lcom/tencent/mm/n/aw;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, p2}, Lcom/tencent/mm/n/aw;->a(JLjava/lang/String;)[B

    move-result-object v1

    .line 153
    :cond_0
    :goto_0
    const-string v3, "MicroMsg.NetSceneAuth"

    const-string v4, "dkwt req account:%s passType:%d full=cut:%b usewt:%b secCode:%s sid:%s loginbuf:%d time:%s lang:%s seq:%s soft:%s"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v10

    const/4 v2, 0x4

    aput-object p2, v5, v2

    const/4 v2, 0x5

    aput-object p3, v5, v2

    const/4 v6, 0x6

    if-nez v1, :cond_2

    const/4 v2, -0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x7

    iget-object v6, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v6, v6, Lcom/tencent/mm/protocal/a/ot;->fQr:Ljava/lang/String;

    aput-object v6, v5, v2

    const/16 v2, 0x8

    iget-object v6, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v6, v6, Lcom/tencent/mm/protocal/a/ot;->fBF:Ljava/lang/String;

    aput-object v6, v5, v2

    const/16 v2, 0x9

    iget-object v6, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v6, v6, Lcom/tencent/mm/protocal/a/ot;->fBI:Ljava/lang/String;

    aput-object v6, v5, v2

    const/16 v2, 0xa

    iget-object v6, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v6, v6, Lcom/tencent/mm/protocal/a/ot;->fQx:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 159
    iget-object v2, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v3, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-virtual {v3, v1}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/protocal/a/ot;->fQA:Lcom/tencent/mm/protocal/a/rv;

    .line 160
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fML:Lcom/tencent/mm/protocal/a/rw;

    .line 161
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fBY:Ljava/lang/String;

    .line 162
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQp:Ljava/lang/String;

    .line 163
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQq:Ljava/lang/String;

    .line 165
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQn:Lcom/tencent/mm/protocal/a/rw;

    .line 166
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fMM:Lcom/tencent/mm/protocal/a/rw;

    .line 167
    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v1, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ot;->fCc:Lcom/tencent/mm/protocal/a/rw;

    .line 183
    :goto_2
    return-void

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hS(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, v9, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-static {}, Lcom/tencent/mm/model/be;->ur()Lcom/tencent/mm/n/aw;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v8}, Lcom/tencent/mm/n/aw;->a(JLjava/lang/String;Z)[B

    move-result-object v1

    goto/16 :goto_0

    .line 153
    :cond_2
    array-length v2, v1

    goto/16 :goto_1

    .line 172
    :cond_3
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fML:Lcom/tencent/mm/protocal/a/rw;

    .line 173
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fBY:Ljava/lang/String;

    .line 174
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQp:Ljava/lang/String;

    .line 175
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQq:Ljava/lang/String;

    .line 177
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v2, p2}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQn:Lcom/tencent/mm/protocal/a/rw;

    .line 178
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v2, p3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fMM:Lcom/tencent/mm/protocal/a/rw;

    .line 179
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v2, p4}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fCc:Lcom/tencent/mm/protocal/a/rw;

    .line 181
    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v1, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    new-array v2, v7, [B

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ot;->fQA:Lcom/tencent/mm/protocal/a/rv;

    goto/16 :goto_2
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/k;

    .line 112
    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/k;->bQ(I)V

    .line 116
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/i;->cxa:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fBA:Ljava/lang/String;

    .line 118
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQr:Ljava/lang/String;

    .line 119
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fBF:Ljava/lang/String;

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/k;->cR(I)V

    .line 121
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iput v4, v1, Lcom/tencent/mm/protocal/a/ot;->fQo:I

    .line 122
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pU()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQs:Ljava/lang/String;

    .line 123
    iget-object v2, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v3, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v1

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->ib(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/protocal/a/ot;->fCd:Lcom/tencent/mm/protocal/a/rv;

    .line 124
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v2, Lcom/tencent/mm/protocal/a;->fxl:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fDT:Ljava/lang/String;

    .line 125
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v2, Lcom/tencent/mm/protocal/a;->fxm:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fDS:Ljava/lang/String;

    .line 126
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    sget-object v2, Lcom/tencent/mm/protocal/a;->fxn:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQv:Ljava/lang/String;

    .line 127
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/storage/cd;->aDp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQw:Ljava/lang/String;

    .line 128
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/model/ce;->uZ()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->cqr:Ljava/lang/String;

    .line 129
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/model/ce;->va()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQx:Ljava/lang/String;

    .line 130
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azP()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fBE:Lcom/tencent/mm/protocal/a/rv;

    .line 131
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iput p5, v1, Lcom/tencent/mm/protocal/a/ot;->fQB:I

    .line 132
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/tencent/mm/n;->bwC:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fQz:Ljava/lang/String;

    .line 134
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 135
    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ot;->fBI:Ljava/lang/String;

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/mm/modelsimple/i;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/modelsimple/i;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cjh:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelsimple/i;)Lcom/tencent/mm/network/r;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/tencent/mm/modelsimple/i;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelsimple/i;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelsimple/i;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    return-object v0
.end method

.method private zL()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 485
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 486
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 487
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 488
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 493
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final BW()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/k;

    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ot;->fQA:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final BX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fCc:Lcom/tencent/mm/protocal/a/rw;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final BY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fQV:Ljava/lang/String;

    return-object v0
.end method

.method public final BZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fPJ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Ca()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 499
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 500
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 501
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 502
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 507
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final Cb()Lcom/tencent/mm/modelsimple/BindWordingContent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 519
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 520
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 521
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 522
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    .line 532
    :goto_0
    if-eqz v0, :cond_1

    .line 533
    new-instance v2, Lcom/tencent/mm/modelsimple/b;

    invoke-direct {v2}, Lcom/tencent/mm/modelsimple/b;-><init>()V

    .line 535
    :try_start_0
    invoke-static {v0}, Lcom/tencent/mm/modelsimple/b;->go(Ljava/lang/String;)Lcom/tencent/mm/modelsimple/BindWordingContent;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 539
    :goto_1
    return-object v0

    .line 537
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final Cc()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 552
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 553
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 554
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 555
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 560
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final Cd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    return-object v0
.end method

.method public final Ce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    return-object v0
.end method

.method public final Cf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p2, p0, Lcom/tencent/mm/modelsimple/i;->cjh:Lcom/tencent/mm/n/m;

    .line 199
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/i;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 214
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
    .line 224
    const-string v0, "MicroMsg.NetSceneAuth"

    const-string v1, "dkwt onGYNetEnd  errType:%d errCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    .line 228
    new-instance v2, Lcom/tencent/mm/a/j;

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fPH:I

    invoke-direct {v2, v1}, Lcom/tencent/mm/a/j;-><init>(I)V

    .line 229
    invoke-static {}, Lcom/tencent/mm/model/be;->ur()Lcom/tencent/mm/n/aw;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/a/j;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/ou;->fRb:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v5}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/tencent/mm/n/aw;->a(J[B)Z

    move-result v3

    .line 230
    const-string v4, "MicroMsg.NetSceneAuth"

    const-string v5, "dkwt resp user:%s resp.rImpl.getNextAuthType():%d  getWTLoginRspBuff:%d uin:%d parseRet:%b"

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v7, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v7, v7, Lcom/tencent/mm/protocal/a/ou;->fEI:Lcom/tencent/mm/protocal/a/rw;

    aput-object v7, v6, v1

    const/4 v1, 0x1

    iget-object v7, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v7, v7, Lcom/tencent/mm/protocal/a/ou;->fRa:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fRb:Lcom/tencent/mm/protocal/a/rv;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x3

    invoke-virtual {v2}, Lcom/tencent/mm/a/j;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    if-nez p2, :cond_0

    if-eqz p3, :cond_8

    .line 234
    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    const/16 v1, -0x12d

    if-ne p3, v1, :cond_3

    .line 235
    const/4 v1, 0x1

    iget-object v2, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/ou;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v3, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ou;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 236
    const-string v0, "MicroMsg.NetSceneAuth"

    const-string v1, "dkidc , doscene again old: errType:%d errCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget v0, p0, Lcom/tencent/mm/modelsimple/i;->crh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelsimple/i;->crh:I

    .line 239
    iget v0, p0, Lcom/tencent/mm/modelsimple/i;->crh:I

    if-gtz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 392
    :goto_1
    return-void

    .line 230
    :cond_1
    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fRb:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v1

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/modelsimple/i;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/i;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelsimple/i;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    goto :goto_1

    .line 247
    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    const/16 v1, -0x66

    if-ne p3, v1, :cond_4

    .line 248
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->awJ()Lcom/tencent/mm/protocal/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/bi;->axb()I

    move-result v0

    .line 249
    const-string v1, "MicroMsg.NetSceneAuth"

    const-string v2, "dkcert  auth MM_ERR_CERT_EXPIRED  getcert now  old ver:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelsimple/j;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/modelsimple/j;-><init>(Lcom/tencent/mm/modelsimple/i;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    goto :goto_1

    .line 273
    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    const/16 v1, -0x69

    if-ne p3, v1, :cond_6

    .line 274
    iget v0, p0, Lcom/tencent/mm/modelsimple/i;->cxc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelsimple/i;->cxc:I

    .line 275
    iget v0, p0, Lcom/tencent/mm/modelsimple/i;->cxc:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 277
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_1

    .line 280
    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->ur()Lcom/tencent/mm/n/aw;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/a/j;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/aw;->w(J)V

    .line 281
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mm/n/aw;->r(Ljava/lang/String;I)V

    .line 287
    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/mm/modelsimple/i;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/tencent/mm/modelsimple/i;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/i;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelsimple/i;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    goto/16 :goto_1

    .line 292
    :cond_6
    const/4 v1, 0x4

    if-ne p2, v1, :cond_7

    const/16 v1, -0x10

    if-eq p3, v1, :cond_8

    const/16 v1, -0x11

    if-eq p3, v1, :cond_8

    .line 293
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_1

    .line 297
    :cond_8
    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 298
    const-string v0, "MicroMsg.NetSceneAuth"

    const-string v1, "onGYNetEnd ERROR resp user is null , return false!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_1

    .line 305
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/modelsimple/i;->cwX:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v2, v2, Lcom/tencent/mm/protocal/a/ou;->fRa:I

    invoke-static {v1, v2}, Lcom/tencent/mm/n/aw;->r(Ljava/lang/String;I)V

    .line 306
    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v2, v2, Lcom/tencent/mm/protocal/a/ou;->fRa:I

    invoke-static {v1, v2}, Lcom/tencent/mm/n/aw;->r(Ljava/lang/String;I)V

    .line 309
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->azx()V

    .line 311
    const-string v1, "MicroMsg.NetSceneAuth"

    const-string v2, "dkidc setAccUin Begin uin:%s thread:[%s,%d]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v5, v5, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-static {v5}, Lcom/tencent/mm/a/j;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    new-instance v1, Lcom/tencent/mm/compatible/g/k;

    invoke-direct {v1}, Lcom/tencent/mm/compatible/g/k;-><init>()V

    .line 314
    iget-object v2, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v2, v2, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-static {v2}, Lcom/tencent/mm/model/be;->cs(I)V

    .line 315
    const-string v2, "MicroMsg.NetSceneAuth"

    const-string v3, "dkidc setAccUin End: uin:%s thread:[%s,%d] time:%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v6, v6, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-static {v6}, Lcom/tencent/mm/a/j;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 320
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 321
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x34

    iget-object v3, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v3, v3, Lcom/tencent/mm/protocal/a/ou;->fQN:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 323
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fPK:I

    invoke-static {v1}, Lcom/tencent/mm/model/b;->bJ(I)V

    .line 324
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->ss()Lcom/tencent/mm/storage/cd;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/ou;->fQW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/cd;->vD(Ljava/lang/String;)I

    .line 326
    const-string v1, "MicroMsg.NetSceneAuth"

    const-string v2, "dkrsa setautoauthtick:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/ou;->fQy:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v1

    const/16 v2, 0x20

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 330
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/protocal/l;)V

    .line 333
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v2

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ou;->fQH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fQI:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_d

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/storage/cc;->M(Ljava/lang/String;Z)V

    .line 334
    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fPH:I

    if-eqz v1, :cond_a

    .line 335
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/tencent/mm/a/j;

    iget-object v4, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v4, v4, Lcom/tencent/mm/protocal/a/ou;->fPH:I

    invoke-direct {v3, v4}, Lcom/tencent/mm/a/j;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@qqim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/cc;->an(Ljava/lang/String;I)V

    .line 339
    :cond_a
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/ou;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v3, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/ou;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v4, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/ou;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 342
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v3, v3, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 343
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "system_config_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "default_uin"

    iget-object v3, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v3, v3, Lcom/tencent/mm/protocal/a/ou;->fAX:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/e;->zz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/model/b;->bZ(Ljava/lang/String;)I

    .line 349
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/model/cb;

    new-instance v3, Lcom/tencent/mm/modelsimple/l;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/modelsimple/l;-><init>(Lcom/tencent/mm/modelsimple/i;Lcom/tencent/mm/protocal/l;)V

    invoke-direct {v2, v3}, Lcom/tencent/mm/model/cb;-><init>(Lcom/tencent/mm/model/cd;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 362
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const/16 v3, 0x39

    iget-object v1, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget v1, v1, Lcom/tencent/mm/protocal/a/ou;->fQY:I

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 364
    iget-boolean v1, p0, Lcom/tencent/mm/modelsimple/i;->cxb:Z

    if-eqz v1, :cond_b

    .line 365
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/k;

    .line 366
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v1, v1, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ot;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 367
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 368
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 372
    :cond_b
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelsimple/m;

    invoke-direct {v2, p0}, Lcom/tencent/mm/modelsimple/m;-><init>(Lcom/tencent/mm/modelsimple/i;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    .line 381
    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fKt:Lcom/tencent/mm/protocal/a/bz;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->a(Lcom/tencent/mm/protocal/a/bz;)Z

    .line 382
    if-nez p2, :cond_c

    if-nez p3, :cond_c

    .line 383
    invoke-direct {p0}, Lcom/tencent/mm/modelsimple/i;->zL()I

    move-result v0

    .line 384
    if-lez v0, :cond_c

    .line 385
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reg_style_id"

    invoke-direct {p0}, Lcom/tencent/mm/modelsimple/i;->zL()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    :cond_c
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/an;->azz()V

    .line 390
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_1

    .line 333
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 362
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_3
.end method

.method protected final a(Lcom/tencent/mm/n/z;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    return-void
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/k;

    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ot;->fQB:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x17c

    return v0
.end method

.method public final gr(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/k;

    .line 187
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    new-instance v2, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-virtual {v2, p1}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ot;->fML:Lcom/tencent/mm/protocal/a/rw;

    .line 188
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/i;->cwY:Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/i;->cwZ:Ljava/lang/String;

    .line 190
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iput-object p1, v1, Lcom/tencent/mm/protocal/a/ot;->fBY:Ljava/lang/String;

    .line 191
    iget-object v1, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iput-object p1, v1, Lcom/tencent/mm/protocal/a/ot;->fQp:Ljava/lang/String;

    .line 192
    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iput-object p1, v0, Lcom/tencent/mm/protocal/a/ot;->fQq:Ljava/lang/String;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelsimple/i;->cxb:Z

    .line 194
    return-void
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x5

    return v0
.end method

.method public final xn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBA:Ljava/lang/String;

    return-object v0
.end method

.method public final zC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fFm:Ljava/lang/String;

    return-object v0
.end method

.method public final zE()I
    .locals 5

    .prologue
    const/4 v1, 0x3

    .line 443
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 445
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 446
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 447
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 448
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 453
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final zR()[B
    .locals 4

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/tencent/mm/modelsimple/i;->BW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fzx:Lcom/tencent/mm/protocal/a/rv;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;[B)[B

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->ur()Lcom/tencent/mm/n/aw;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/k;

    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ot;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/n/aw;->u(J)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final zS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/i;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/l;

    iget-object v0, v0, Lcom/tencent/mm/protocal/l;->fxM:Lcom/tencent/mm/protocal/a/ou;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ou;->fMM:Lcom/tencent/mm/protocal/a/rw;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
