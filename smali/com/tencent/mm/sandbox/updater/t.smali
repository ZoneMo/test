.class public final Lcom/tencent/mm/sandbox/updater/t;
.super Lcom/tencent/mm/sandbox/monitor/j;
.source "SourceFile"


# instance fields
.field private cDM:Ljava/lang/String;

.field private cmW:[B

.field private gbj:I

.field private final gbk:I

.field private gbl:I

.field private gbm:[Ljava/lang/String;

.field private gbn:Lcom/tencent/mm/sandbox/b;

.field private gbo:Lcom/tencent/mm/sandbox/updater/v;

.field private gbp:Lcom/tencent/mm/sandbox/b;

.field private uin:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;[B[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/sandbox/monitor/j;-><init>(ILjava/lang/String;I)V

    .line 38
    iput v2, p0, Lcom/tencent/mm/sandbox/updater/t;->gbj:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbk:I

    .line 41
    iput v2, p0, Lcom/tencent/mm/sandbox/updater/t;->gbl:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbo:Lcom/tencent/mm/sandbox/updater/v;

    .line 96
    new-instance v0, Lcom/tencent/mm/sandbox/updater/u;

    invoke-direct {v0, p0}, Lcom/tencent/mm/sandbox/updater/u;-><init>(Lcom/tencent/mm/sandbox/updater/t;)V

    iput-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbp:Lcom/tencent/mm/sandbox/b;

    .line 55
    iput-object p7, p0, Lcom/tencent/mm/sandbox/updater/t;->gbm:[Ljava/lang/String;

    .line 56
    if-eqz p7, :cond_0

    array-length v0, p7

    if-nez v0, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "short.weixin.qq.com"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbm:[Ljava/lang/String;

    .line 59
    :cond_1
    iput p4, p0, Lcom/tencent/mm/sandbox/updater/t;->uin:I

    .line 60
    iput-object p5, p0, Lcom/tencent/mm/sandbox/updater/t;->cDM:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/tencent/mm/sandbox/updater/t;->cmW:[B

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/sandbox/updater/t;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbl:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/sandbox/updater/t;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/tencent/mm/sandbox/updater/t;->gaQ:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/sandbox/updater/t;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/tencent/mm/sandbox/updater/t;->gaP:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/sandbox/updater/t;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbm:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/sandbox/updater/t;)Lcom/tencent/mm/sandbox/b;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbn:Lcom/tencent/mm/sandbox/b;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/sandbox/updater/t;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gaR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/sandbox/updater/t;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/tencent/mm/sandbox/updater/t;->ayA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/sandbox/updater/t;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gaR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/sandbox/updater/t;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gaR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/sandbox/updater/t;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gaR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/sandbox/updater/t;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/tencent/mm/sandbox/updater/t;->ayA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/sandbox/updater/t;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->cDM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/sandbox/updater/t;)[B
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->cmW:[B

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/sandbox/updater/t;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/tencent/mm/sandbox/updater/t;->uin:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sandbox/b;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 66
    iput-object p1, p0, Lcom/tencent/mm/sandbox/updater/t;->gbn:Lcom/tencent/mm/sandbox/b;

    .line 68
    iget v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbj:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 69
    const-string v0, "MicroMsg.NetSceneGetUpdatePack"

    const-string v1, "doSceneCnt > DOSCENE_LIMIT, return"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbn:Lcom/tencent/mm/sandbox/b;

    invoke-virtual {v0, v4, v4, v7}, Lcom/tencent/mm/sandbox/b;->a(IILcom/tencent/mm/protocal/a/rt;)V

    .line 94
    :goto_0
    return-void

    .line 74
    :cond_0
    iget v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gaP:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/tencent/mm/compatible/g/i;->m(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const-string v0, "MicroMsg.NetSceneGetUpdatePack"

    const-string v1, "SDCard full, packSize=[%s]"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/sandbox/updater/t;->gaP:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1, v4, v4, v7}, Lcom/tencent/mm/sandbox/b;->a(IILcom/tencent/mm/protocal/a/rt;)V

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lcom/tencent/mm/protocal/a/ky;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ky;-><init>()V

    .line 81
    new-instance v1, Lcom/tencent/mm/protocal/a/au;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/au;-><init>()V

    .line 82
    sget v2, Lcom/tencent/mm/protocal/a;->fxr:I

    iput v2, v1, Lcom/tencent/mm/protocal/a/au;->fAm:I

    .line 83
    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/am/b;->au([B)Lcom/tencent/mm/am/b;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/tencent/mm/am/b;->lf(I)Lcom/tencent/mm/am/b;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/au;->fAl:Lcom/tencent/mm/am/b;

    .line 84
    sget-object v2, Lcom/tencent/mm/protocal/a;->fxk:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/am/b;->au([B)Lcom/tencent/mm/am/b;

    move-result-object v2

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Lcom/tencent/mm/am/b;->lf(I)Lcom/tencent/mm/am/b;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/au;->fAn:Lcom/tencent/mm/am/b;

    .line 85
    iput v5, v1, Lcom/tencent/mm/protocal/a/au;->fyJ:I

    .line 86
    iget-object v2, p0, Lcom/tencent/mm/sandbox/updater/t;->cDM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/am/b;->au([B)Lcom/tencent/mm/am/b;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/tencent/mm/am/b;->lf(I)Lcom/tencent/mm/am/b;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/au;->fAW:Lcom/tencent/mm/am/b;

    .line 87
    iget v2, p0, Lcom/tencent/mm/sandbox/updater/t;->uin:I

    iput v2, v1, Lcom/tencent/mm/protocal/a/au;->fAX:I

    .line 88
    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ky;->a(Lcom/tencent/mm/protocal/a/au;)Lcom/tencent/mm/protocal/a/rs;

    .line 89
    iget v1, p0, Lcom/tencent/mm/sandbox/updater/t;->gaO:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ky;->fMB:I

    .line 90
    iget v1, p0, Lcom/tencent/mm/sandbox/updater/t;->gaQ:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ky;->fEd:I

    .line 91
    iget v1, p0, Lcom/tencent/mm/sandbox/updater/t;->gaP:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/ky;->fAL:I

    .line 93
    new-instance v1, Lcom/tencent/mm/sandbox/updater/v;

    iget-object v2, p0, Lcom/tencent/mm/sandbox/updater/t;->gbm:[Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mm/sandbox/updater/t;->gbl:I

    div-int/lit8 v3, v3, 0x5

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/tencent/mm/sandbox/updater/t;->gbp:Lcom/tencent/mm/sandbox/b;

    invoke-direct {v1, p0, v2, v3}, Lcom/tencent/mm/sandbox/updater/v;-><init>(Lcom/tencent/mm/sandbox/updater/t;Ljava/lang/String;Lcom/tencent/mm/sandbox/b;)V

    iput-object v1, p0, Lcom/tencent/mm/sandbox/updater/t;->gbo:Lcom/tencent/mm/sandbox/updater/v;

    new-array v2, v6, [Lcom/tencent/mm/protocal/a/ky;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/tencent/mm/sandbox/updater/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 3

    .prologue
    .line 178
    const-string v0, "MicroMsg.NetSceneGetUpdatePack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "do cancel, updateType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/sandbox/updater/t;->gaO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbo:Lcom/tencent/mm/sandbox/updater/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbo:Lcom/tencent/mm/sandbox/updater/v;

    invoke-virtual {v0}, Lcom/tencent/mm/sandbox/updater/v;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/tencent/mm/sandbox/updater/t;->gbo:Lcom/tencent/mm/sandbox/updater/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sandbox/updater/v;->cancel(Z)Z

    .line 183
    :cond_0
    return-void
.end method
