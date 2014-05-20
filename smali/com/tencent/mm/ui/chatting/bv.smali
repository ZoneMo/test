.class public final Lcom/tencent/mm/ui/chatting/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/chat/an;


# instance fields
.field private cQI:Lcom/tencent/mm/storage/i;

.field private cSA:Landroid/widget/Toast;

.field private final cSR:Lcom/tencent/mm/sdk/platformtools/ay;

.field private final cSS:Lcom/tencent/mm/sdk/platformtools/ay;

.field private final cSU:Lcom/tencent/mm/n/s;

.field private cSy:Landroid/media/ToneGenerator;

.field private dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

.field private final dKT:Lcom/tencent/mm/n/t;

.field private dLC:Lcom/tencent/mm/pluginsdk/ui/chat/l;

.field private gJU:Z

.field private gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private gLo:Lcom/tencent/mm/storage/ca;

.field private gMh:Landroid/widget/ListView;

.field private gMi:Lcom/tencent/mm/ui/chatting/es;

.field private gMj:Lcom/tencent/mm/ui/chatting/v;

.field private gMk:Lcom/tencent/mm/n/r;

.field private gMl:Ljava/lang/String;

.field private gMm:Ljava/lang/String;

.field private gMn:Z

.field private gMo:Z

.field private final gMp:Lcom/tencent/mm/ui/chatting/jx;

.field private volatile gMq:Z

.field private volatile gMr:Z

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/tencent/mm/ui/chatting/es;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Lcom/tencent/mm/ui/chatting/v;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v2, Lcom/tencent/mm/ui/chatting/bw;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/bw;-><init>(Lcom/tencent/mm/ui/chatting/bv;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->cSU:Lcom/tencent/mm/n/s;

    .line 153
    new-instance v2, Lcom/tencent/mm/ui/chatting/bx;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/bx;-><init>(Lcom/tencent/mm/ui/chatting/bv;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->dKT:Lcom/tencent/mm/n/t;

    .line 161
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMq:Z

    .line 162
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMr:Z

    .line 299
    new-instance v2, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v3, Lcom/tencent/mm/ui/chatting/ca;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/ca;-><init>(Lcom/tencent/mm/ui/chatting/bv;)V

    invoke-direct {v2, v3, v1}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->cSR:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 307
    new-instance v2, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v3, Lcom/tencent/mm/ui/chatting/cb;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/cb;-><init>(Lcom/tencent/mm/ui/chatting/bv;)V

    invoke-direct {v2, v3, v1}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->cSS:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 462
    new-instance v2, Lcom/tencent/mm/ui/chatting/cd;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/cd;-><init>(Lcom/tencent/mm/ui/chatting/bv;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->dLC:Lcom/tencent/mm/pluginsdk/ui/chat/l;

    .line 87
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bv;->gMh:Landroid/widget/ListView;

    .line 88
    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMi:Lcom/tencent/mm/ui/chatting/es;

    .line 89
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 90
    iput-object p4, p0, Lcom/tencent/mm/ui/chatting/bv;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    .line 91
    iput-object p5, p0, Lcom/tencent/mm/ui/chatting/bv;->gMj:Lcom/tencent/mm/ui/chatting/v;

    .line 92
    iput-object p6, p0, Lcom/tencent/mm/ui/chatting/bv;->gMl:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->cQI:Lcom/tencent/mm/storage/i;

    .line 94
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/storage/cb;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJe()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/mm/storage/cb;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/cb;->vA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gLo:Lcom/tencent/mm/storage/ca;

    .line 95
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJe()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@chatroom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMn:Z

    .line 96
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cq(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMo:Z

    .line 97
    new-instance v2, Lcom/tencent/mm/ui/chatting/jx;

    invoke-direct {v2, p3}, Lcom/tencent/mm/ui/chatting/jx;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMp:Lcom/tencent/mm/ui/chatting/jx;

    .line 99
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMn:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMo:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gJU:Z

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aEV()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aEU()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->cSy:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    const-string v0, "vibrator"

    invoke-virtual {p3, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->vibrator:Landroid/os/Vibrator;

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/mm/plugin/voicereminder/a/o;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/voicereminder/a/o;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->dKT:Lcom/tencent/mm/n/t;

    invoke-interface {v0, v1}, Lcom/tencent/mm/n/r;->a(Lcom/tencent/mm/n/t;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->cSU:Lcom/tencent/mm/n/s;

    invoke-interface {v0, v1}, Lcom/tencent/mm/n/r;->a(Lcom/tencent/mm/n/s;)V

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->dLC:Lcom/tencent/mm/pluginsdk/ui/chat/l;

    invoke-virtual {p4, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->a(Lcom/tencent/mm/pluginsdk/ui/chat/l;)V

    .line 105
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/p/p;->eJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/mm/modelvoice/ap;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelvoice/ap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/tencent/mm/modelvoice/af;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelvoice/af;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private VX()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMh:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setKeepScreenOn(Z)V

    .line 392
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/bv;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bv;->cSA:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/n/r;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    return-object v0
.end method

.method private aJb()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMh:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/cc;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/cc;-><init>(Lcom/tencent/mm/ui/chatting/bv;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    return-void
.end method

.method private aJd()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dg(Z)V

    .line 396
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->df(Z)V

    .line 398
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    if-eqz v0, :cond_4

    .line 400
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    invoke-interface {v0}, Lcom/tencent/mm/n/r;->wF()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v3, "medianote"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    .line 402
    :goto_1
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    invoke-interface {v3}, Lcom/tencent/mm/n/r;->pv()Z

    move-result v3

    .line 403
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/bv;->cSR:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v4}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 404
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/bv;->cSS:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v4}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 405
    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Lcom/tencent/mm/storage/ak;

    invoke-direct {v0}, Lcom/tencent/mm/storage/ak;-><init>()V

    const-string v4, "medianote"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ak;->setType(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ak;->bZ(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->gMm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    invoke-interface {v4}, Lcom/tencent/mm/n/r;->wH()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v1, v4, v5, v2}, Lcom/tencent/mm/modelvoice/bf;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ak;->setContent(Ljava/lang/String;)V

    const-string v1, "medianote"

    invoke-static {v1}, Lcom/tencent/mm/model/bv;->dA(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ak;->G(J)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ap;->v(Lcom/tencent/mm/storage/ak;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_3

    const-string v0, "MicroMsg.ChattingFooterEventImpl"

    const-string v1, "insertLocalMsg fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    :goto_2
    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sF(Ljava/lang/String;)V

    move v2, v3

    .line 413
    :goto_3
    return v2

    :cond_1
    move v0, v2

    .line 400
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 406
    :cond_3
    const-string v2, "MicroMsg.ChattingFooterEventImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertLocalMsg success, msgId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 411
    :cond_4
    const-string v0, "MicroMsg.ChattingFooterEventImpl"

    const-string v1, "stopRecording recorder == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cSR:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cSS:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/v;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMj:Lcom/tencent/mm/ui/chatting/v;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/bv;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMq:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/chatting/bv;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMr:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMh:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/chatting/bv;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dg(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->df(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    if-eqz v0, :cond_0

    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sE(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/n/r;->et(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    invoke-interface {v0}, Lcom/tencent/mm/n/r;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMm:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->dKT:Lcom/tencent/mm/n/t;

    invoke-interface {v0, v1}, Lcom/tencent/mm/n/r;->a(Lcom/tencent/mm/n/t;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJb()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->cSU:Lcom/tencent/mm/n/s;

    invoke-interface {v0, v1}, Lcom/tencent/mm/n/r;->a(Lcom/tencent/mm/n/s;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/tencent/mm/ui/chatting/bv;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cSy:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cSA:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/chatting/bv;)Landroid/os/Vibrator;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/chatting/bv;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJd()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/es;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMi:Lcom/tencent/mm/ui/chatting/es;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method


# virtual methods
.method public final VM()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 167
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/bv;->gMq:Z

    .line 169
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMr:Z

    if-nez v2, :cond_0

    .line 170
    const-string v1, "MicroMsg.ChattingFooterEventImpl"

    const-string v2, "jacks in voice rcd stop but not begin."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return v0

    .line 173
    :cond_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMr:Z

    .line 174
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bv;->VX()V

    .line 175
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJd()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asx()V

    .line 177
    const-string v2, "MicroMsg.ChattingFooterEventImpl"

    const-string v3, "record stop on stop request setRcdTooShort"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/v;->aIL()V

    .line 184
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nE(I)V

    .line 186
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/model/al;->resume()V

    .line 187
    invoke-static {}, Lcom/tencent/mm/model/be;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/model/ah;->og()V

    .line 188
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dL(Z)V

    move v0, v1

    .line 190
    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->Oe()V

    .line 180
    const-string v2, "MicroMsg.ChattingFooterEventImpl"

    const-string v3, "record stop on stop request resetRcdStatus"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final VO()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 195
    const-string v2, "MicroMsg.ChattingFooterEventImpl"

    const-string v3, "record cancel on cancel request"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/bv;->gMq:Z

    .line 198
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMr:Z

    if-nez v2, :cond_0

    .line 199
    const-string v1, "MicroMsg.ChattingFooterEventImpl"

    const-string v2, "jacks in voice rcd stop but not begin."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return v0

    .line 202
    :cond_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMr:Z

    .line 203
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bv;->VX()V

    .line 204
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dg(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->df(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    invoke-interface {v2}, Lcom/tencent/mm/n/r;->cancel()Z

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->cSR:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v2}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->cSS:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v2}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->Oe()V

    .line 206
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/v;->aIL()V

    .line 207
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nE(I)V

    .line 209
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/model/al;->resume()V

    .line 210
    invoke-static {}, Lcom/tencent/mm/model/be;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/model/ah;->og()V

    .line 211
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dL(Z)V

    move v0, v1

    .line 212
    goto :goto_0
.end method

.method public final VP()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    const/4 v0, 0x0

    .line 217
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    .line 247
    :goto_0
    return v0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->gMk:Lcom/tencent/mm/n/r;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->cSy:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->cSy:Landroid/media/ToneGenerator;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bv;->gMh:Landroid/widget/ListView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/bz;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/bz;-><init>(Lcom/tencent/mm/ui/chatting/bv;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    :cond_2
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMq:Z

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/ui/chatting/by;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/by;-><init>(Lcom/tencent/mm/ui/chatting/bv;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final VQ()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJb()V

    .line 345
    return-void
.end method

.method public final VR()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJb()V

    .line 350
    return-void
.end method

.method public final VS()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJb()V

    .line 355
    return-void
.end method

.method protected final aJc()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMh:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setKeepScreenOn(Z)V

    .line 388
    return-void
.end method

.method public final aJe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMl:Ljava/lang/String;

    .line 420
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cQI:Lcom/tencent/mm/storage/i;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final ls(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->wD(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bv;->aJd()Z

    .line 431
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cSR:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 432
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cSS:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 433
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMp:Lcom/tencent/mm/ui/chatting/jx;

    invoke-static {v0}, Lcom/tencent/mm/z/n;->b(Lcom/tencent/mm/model/ax;)V

    .line 434
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->gMp:Lcom/tencent/mm/ui/chatting/jx;

    invoke-static {v0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/model/ax;)V

    .line 438
    return-void
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cSy:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bv;->cSy:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 427
    :cond_0
    return-void
.end method
