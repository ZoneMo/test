.class public final Lcom/tencent/mm/modelvoice/p;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# static fields
.field private static cBH:Lcom/tencent/mm/model/ax;

.field private static cBI:Ljava/util/List;


# instance fields
.field private cAz:I

.field private cBJ:Z

.field private cBK:Z

.field private cjh:Lcom/tencent/mm/n/m;

.field private cke:Lcom/tencent/mm/n/a;

.field private ckr:Lcom/tencent/mm/sdk/platformtools/ay;

.field private rD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelvoice/p;->cBH:Lcom/tencent/mm/model/ax;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelvoice/p;->cBI:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 37
    iput v0, p0, Lcom/tencent/mm/modelvoice/p;->cAz:I

    .line 93
    iput-boolean v0, p0, Lcom/tencent/mm/modelvoice/p;->cBJ:Z

    .line 94
    iput-boolean v0, p0, Lcom/tencent/mm/modelvoice/p;->cBK:Z

    .line 256
    new-instance v1, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v2, Lcom/tencent/mm/modelvoice/r;

    invoke-direct {v2, p0}, Lcom/tencent/mm/modelvoice/r;-><init>(Lcom/tencent/mm/modelvoice/p;)V

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/p;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 88
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 89
    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetSceneDownloadVoice:  file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private Ei()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 69
    :goto_0
    if-eqz v1, :cond_3

    .line 70
    sget-object v0, Lcom/tencent/mm/modelvoice/p;->cBH:Lcom/tencent/mm/model/ax;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/tencent/mm/modelvoice/p;->cBH:Lcom/tencent/mm/model/ax;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/ax;->b(Lcom/tencent/mm/storage/ak;)V

    .line 74
    :cond_0
    sget-object v0, Lcom/tencent/mm/modelvoice/p;->cBI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelvoice/c;

    .line 75
    new-instance v3, Lcom/tencent/mm/modelvoice/q;

    invoke-direct {v3, p0, v0, v1}, Lcom/tencent/mm/modelvoice/q;-><init>(Lcom/tencent/mm/modelvoice/p;Lcom/tencent/mm/modelvoice/c;Lcom/tencent/mm/storage/ak;)V

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 68
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelvoice/bc;->Er()Lcom/tencent/mm/modelvoice/br;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelvoice/br;->hB(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/bh;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->AF()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 85
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/p;)Lcom/tencent/mm/network/r;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/p;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tencent/mm/model/ax;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    sget-object v0, Lcom/tencent/mm/modelvoice/p;->cBH:Lcom/tencent/mm/model/ax;

    if-nez v0, :cond_0

    .line 49
    sput-object p0, Lcom/tencent/mm/modelvoice/p;->cBH:Lcom/tencent/mm/model/ax;

    .line 51
    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/mm/modelvoice/c;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    sget-object v0, Lcom/tencent/mm/modelvoice/p;->cBI:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/tencent/mm/modelvoice/p;->cBI:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/p;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method public static b(Lcom/tencent/mm/modelvoice/c;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/mm/modelvoice/p;->cBI:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method


# virtual methods
.method public final DC()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/tencent/mm/modelvoice/p;->cAz:I

    return v0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    .line 104
    iput-object p2, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    .line 106
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 107
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    const-string v2, "doScene:  filename null!"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/p;->cAz:I

    .line 158
    :goto_0
    return v0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/modelvoice/bc;->Er()Lcom/tencent/mm/modelvoice/br;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelvoice/br;->hB(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/bh;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->Ex()Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    :cond_1
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get info Failed file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/p;->cAz:I

    goto :goto_0

    .line 117
    :cond_2
    const-string v2, "MicroMsg.NetSceneDownloadVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doScene file:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " netTimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->DP()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/bi;->ho(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkVoiceNetTimes Failed file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/bi;->hd(Ljava/lang/String;)Z

    .line 121
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/p;->cAz:I

    goto/16 :goto_0

    .line 125
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->DH()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->DI()I

    move-result v3

    sub-int/2addr v2, v3

    .line 126
    if-gtz v2, :cond_5

    .line 127
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 128
    iput-boolean v5, p0, Lcom/tencent/mm/modelvoice/p;->cBK:Z

    .line 129
    const-string v2, "MicroMsg.NetSceneDownloadVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doScene file:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Net:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->DH()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Local:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->DI()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/p;->cAz:I

    goto/16 :goto_0

    .line 133
    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->DI()I

    move-result v1

    invoke-static {v2, v1}, Lcom/tencent/mm/modelvoice/bi;->w(Ljava/lang/String;I)I

    .line 134
    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/p;->cAz:I

    goto/16 :goto_0

    .line 139
    :cond_5
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->vR()I

    move-result v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->DH()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 140
    iput-boolean v5, p0, Lcom/tencent/mm/modelvoice/p;->cBJ:Z

    .line 143
    :cond_6
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 144
    new-instance v3, Lcom/tencent/mm/protocal/a/en;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/en;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 145
    new-instance v3, Lcom/tencent/mm/protocal/a/eo;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/eo;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 146
    const-string v3, "/cgi-bin/micromsg-bin/downloadvoice"

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 147
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 148
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 149
    const v3, 0x3b9aca14

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 150
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cke:Lcom/tencent/mm/n/a;

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/en;

    .line 153
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->EB()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/protocal/a/en;->fzT:Ljava/lang/String;

    .line 154
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->AH()I

    move-result v3

    iput v3, v0, Lcom/tencent/mm/protocal/a/en;->fzo:I

    .line 155
    iput v2, v0, Lcom/tencent/mm/protocal/a/en;->fAI:I

    .line 156
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->DI()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/en;->fAE:I

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelvoice/p;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 2
    .parameter

    .prologue
    .line 163
    check-cast p1, Lcom/tencent/mm/n/a;

    invoke-virtual {p1}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/en;

    .line 165
    iget v1, v0, Lcom/tencent/mm/protocal/a/en;->fzo:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/en;->fzT:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/en;->fzT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/tencent/mm/protocal/a/en;->fAI:I

    if-lez v1, :cond_0

    iget v0, v0, Lcom/tencent/mm/protocal/a/en;->fAE:I

    if-gez v0, :cond_1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->hd(Ljava/lang/String;)Z

    .line 167
    sget-object v0, Lcom/tencent/mm/n/aa;->cmi:Lcom/tencent/mm/n/aa;

    .line 169
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 184
    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p5

    .line 186
    check-cast v0, Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/eo;

    .line 188
    iget v1, v0, Lcom/tencent/mm/protocal/a/eo;->fAG:I

    if-ne v1, v4, :cond_0

    .line 190
    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelFlag = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->hu(Ljava/lang/String;)Z

    .line 254
    :goto_0
    return-void

    .line 194
    :cond_0
    const/16 v1, -0x16

    if-ne p3, v1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->hd(Ljava/lang/String;)Z

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 199
    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    const/16 v1, -0xd

    if-eq p3, v1, :cond_2

    const/4 v1, -0x6

    if-eq p3, v1, :cond_2

    .line 200
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->hd(Ljava/lang/String;)Z

    .line 201
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 204
    :cond_2
    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 205
    :cond_3
    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd  errType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/q;->xm()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 210
    :cond_4
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onGYNetEnd file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Recv:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/eo;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/a/rv;->ayg()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fileOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/mm/protocal/a/eo;->fAE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/eo;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v1

    if-nez v1, :cond_5

    .line 214
    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    const-string v1, "onGYNetEnd get recv Buffer null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->hd(Ljava/lang/String;)Z

    .line 216
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 220
    :cond_5
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/eo;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v1

    .line 222
    if-eqz v1, :cond_6

    array-length v2, v1

    if-nez v2, :cond_7

    .line 223
    :cond_6
    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    const-string v1, "onGYNetEnd Recv Buf ZERO length "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->hd(Ljava/lang/String;)Z

    .line 225
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 229
    :cond_7
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/bi;->hp(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/b;

    move-result-object v2

    array-length v3, v1

    iget v0, v0, Lcom/tencent/mm/protocal/a/eo;->fAE:I

    invoke-interface {v2, v1, v3, v0}, Lcom/tencent/mm/modelvoice/b;->write([BII)I

    move-result v0

    .line 230
    if-gez v0, :cond_8

    .line 231
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onGYNetEnd Write Failed File:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->hd(Ljava/lang/String;)Z

    .line 233
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 236
    :cond_8
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnRecvEnd : file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " filesize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/mm/modelvoice/bi;->w(Ljava/lang/String;I)I

    move-result v0

    .line 239
    if-gez v0, :cond_9

    .line 240
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onGYNetEnd file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "updateAfterRecv Ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 244
    :cond_9
    if-ne v0, v4, :cond_a

    .line 245
    invoke-direct {p0}, Lcom/tencent/mm/modelvoice/p;->Ei()V

    .line 246
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 249
    :cond_a
    const-wide/16 v0, 0x3e8

    .line 250
    iget-boolean v2, p0, Lcom/tencent/mm/modelvoice/p;->cBJ:Z

    if-eqz v2, :cond_b

    .line 251
    const-wide/16 v0, 0x0

    .line 253
    :cond_b
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/p;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/n/z;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->hd(Ljava/lang/String;)Z

    .line 180
    return-void
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/p;->rD:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 268
    const/16 v0, 0x80

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x64

    return v0
.end method
