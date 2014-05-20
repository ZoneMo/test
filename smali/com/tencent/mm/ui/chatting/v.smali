.class public final Lcom/tencent/mm/ui/chatting/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/modelvoice/c;
.implements Lcom/tencent/mm/n/p;
.implements Lcom/tencent/mm/n/q;
.implements Lcom/tencent/mm/sdk/platformtools/bz;


# static fields
.field private static cRh:Lcom/tencent/mm/sdk/platformtools/SensorController;


# instance fields
.field private cCb:I

.field private cRn:Lcom/tencent/mm/sdk/platformtools/ca;

.field private cRo:J

.field private cRt:Z

.field private cbJ:Z

.field private final dkz:Lcom/tencent/mm/n/o;

.field private eTq:Z

.field private final gKE:Ljava/util/List;

.field private gKF:J

.field private gKG:Lcom/tencent/mm/ui/base/ce;

.field private gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private gKI:Lcom/tencent/mm/ui/base/ce;

.field private gKJ:Z

.field private gKK:Z

.field private gKL:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    .line 42
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/v;->cbJ:Z

    .line 44
    iput-wide v4, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    .line 52
    iput-wide v4, p0, Lcom/tencent/mm/ui/chatting/v;->cRo:J

    .line 56
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/v;->gKK:Z

    .line 365
    new-instance v0, Lcom/tencent/mm/ui/chatting/w;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/chatting/w;-><init>(Lcom/tencent/mm/ui/chatting/v;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKL:Landroid/os/Handler;

    .line 515
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/v;->cRt:Z

    .line 60
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 61
    sget-object v0, Lcom/tencent/mm/ui/chatting/v;->cRh:Lcom/tencent/mm/sdk/platformtools/SensorController;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/SensorController;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/sdk/platformtools/SensorController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mm/ui/chatting/v;->cRh:Lcom/tencent/mm/sdk/platformtools/SensorController;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->cRn:Lcom/tencent/mm/sdk/platformtools/ca;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ca;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ca;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->cRn:Lcom/tencent/mm/sdk/platformtools/ca;

    .line 67
    :cond_1
    invoke-static {p2}, Lcom/tencent/mm/model/w;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iput v3, p0, Lcom/tencent/mm/ui/chatting/v;->cCb:I

    .line 69
    new-instance v0, Lcom/tencent/mm/modelvoice/y;

    invoke-direct {v0, p1, v3}, Lcom/tencent/mm/modelvoice/y;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_2
    iput v2, p0, Lcom/tencent/mm/ui/chatting/v;->cCb:I

    .line 72
    new-instance v0, Lcom/tencent/mm/modelvoice/y;

    invoke-direct {v0, p1, v2}, Lcom/tencent/mm/modelvoice/y;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/v;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/tencent/mm/ui/chatting/v;->cRo:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/v;Lcom/tencent/mm/ui/base/ce;)Lcom/tencent/mm/ui/base/ce;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/v;->gKI:Lcom/tencent/mm/ui/base/ce;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/v;)Lcom/tencent/mm/ui/chatting/ChattingUI;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    return-object v0
.end method

.method private aIN()V
    .locals 9

    .prologue
    const/4 v3, -0x1

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 318
    const/4 v1, 0x0

    move v2, v3

    :goto_0
    if-ge v1, v4, :cond_0

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_2

    move v0, v1

    .line 318
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 324
    :cond_0
    if-eq v2, v3, :cond_1

    .line 325
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 327
    :cond_1
    const-string v0, "MicroMsg.AutoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove voice msg : size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private aIR()V
    .locals 2

    .prologue
    .line 478
    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "stop play"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sF(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->VX()V

    .line 481
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIN()V

    .line 482
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    sget-object v0, Lcom/tencent/mm/ui/chatting/v;->cRh:Lcom/tencent/mm/sdk/platformtools/SensorController;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/SensorController;->azI()V

    .line 484
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->cRn:Lcom/tencent/mm/sdk/platformtools/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ca;->azK()V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJQ()Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    .line 489
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    .line 490
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIS()V

    .line 491
    return-void
.end method

.method private aIS()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKI:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKI:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 583
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/v;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIS()V

    return-void
.end method

.method private nw(I)V
    .locals 4
    .parameter

    .prologue
    .line 97
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    if-nez v0, :cond_1

    .line 99
    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJQ()Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "add next failed: null adapter"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_2
    const-string v1, "MicroMsg.AutoPlay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "position : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "adapter getCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 115
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->j(Lcom/tencent/mm/storage/ak;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->k(Lcom/tencent/mm/storage/ak;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/v;->y(Lcom/tencent/mm/storage/ak;)V

    .line 123
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private y(Lcom/tencent/mm/storage/ak;)V
    .locals 7
    .parameter

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 140
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 140
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 146
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKJ:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_5
    const-string v0, "MicroMsg.AutoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add voice msg :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final aII()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "clear play list"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKG:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKG:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    return-void
.end method

.method public final aIJ()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKK:Z

    .line 265
    return-void
.end method

.method public final aIK()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/v;->cbJ:Z

    .line 298
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/v;->dI(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aII()V

    .line 300
    return-void
.end method

.method public final aIL()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/v;->cbJ:Z

    .line 304
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    .line 305
    return-void
.end method

.method public final aIM()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v0}, Lcom/tencent/mm/n/o;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    goto :goto_0
.end method

.method public final aIO()J
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    return-wide v0
.end method

.method public final aIP()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 337
    :try_start_0
    const-string v0, "MicroMsg.AutoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "play next: size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKL:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v1

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v3, v5

    move v4, v6

    .line 346
    :goto_1
    if-ge v3, v7, :cond_2

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v8

    cmp-long v0, v1, v8

    if-lez v0, :cond_c

    .line 349
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v0

    move v2, v3

    .line 346
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move-wide v10, v0

    move-wide v1, v10

    goto :goto_1

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 354
    if-eqz v0, :cond_0

    .line 355
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCh()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCi()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCj()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v5

    :goto_3
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    sget-object v1, Lcom/tencent/mm/ui/chatting/v;->cRh:Lcom/tencent/mm/sdk/platformtools/SensorController;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/SensorController;->azJ()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/tencent/mm/ui/chatting/v;->cRh:Lcom/tencent/mm/sdk/platformtools/SensorController;

    invoke-virtual {v1, p0}, Lcom/tencent/mm/sdk/platformtools/SensorController;->a(Lcom/tencent/mm/sdk/platformtools/bz;)V

    new-instance v1, Lcom/tencent/mm/ui/chatting/x;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/x;-><init>(Lcom/tencent/mm/ui/chatting/v;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/v;->cRn:Lcom/tencent/mm/sdk/platformtools/ca;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/sdk/platformtools/ca;->r(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/mm/ui/chatting/v;->cRo:J

    :cond_4
    :goto_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 358
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    move v1, v6

    .line 355
    goto :goto_3

    :cond_6
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/tencent/mm/ui/chatting/v;->cRo:J

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJP()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKG:Lcom/tencent/mm/ui/base/ce;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKG:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f02042d

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v4, 0x7f07026c

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;ILjava/lang/String;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKG:Lcom/tencent/mm/ui/base/ce;

    :cond_9
    const-string v1, "keep_app_silent"

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/am;->sE(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->l(Lcom/tencent/mm/storage/ak;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v1}, Lcom/tencent/mm/n/o;->stop()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJc()V

    const-string v1, "MicroMsg.AutoPlay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startPlay isSpeakOn:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/v;->eTq:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uB()Lcom/tencent/mm/compatible/audio/e;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/v;->eTq:Z

    invoke-virtual {v1, v2}, Lcom/tencent/mm/compatible/audio/e;->K(Z)Z

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/chatting/v;->cCb:I

    if-ne v2, v5, :cond_a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/voicereminder/a/n;->B(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/v;->eTq:Z

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/tencent/mm/n/o;->a(Ljava/lang/String;ZZI)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v1, p0}, Lcom/tencent/mm/n/o;->a(Lcom/tencent/mm/n/p;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v1, p0}, Lcom/tencent/mm/n/o;->a(Lcom/tencent/mm/n/q;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    :goto_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJQ()Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_a
    invoke-static {v1}, Lcom/tencent/mm/modelvoice/bi;->fU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_b
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f070227

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :cond_c
    move-wide v10, v1

    move-wide v0, v10

    move v2, v4

    goto/16 :goto_2
.end method

.method public final aIQ()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v0}, Lcom/tencent/mm/n/o;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/v;->eTq:Z

    invoke-interface {v0, v1}, Lcom/tencent/mm/n/o;->R(Z)V

    .line 389
    invoke-static {}, Lcom/tencent/mm/model/be;->uB()Lcom/tencent/mm/compatible/audio/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/v;->eTq:Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/compatible/audio/e;->K(Z)Z

    .line 391
    :cond_0
    return-void
.end method

.method public final af(Z)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 519
    const-string v2, "MicroMsg.AutoPlay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isON:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  hasSkip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/mm/ui/chatting/v;->cRt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tick:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/v;->cRo:J

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/au;->O(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  lt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/mm/ui/chatting/v;->cRo:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/v;->cRt:Z

    if-eqz v2, :cond_2

    .line 521
    if-nez p1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/v;->cRt:Z

    .line 577
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 521
    goto :goto_0

    .line 525
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    if-nez v2, :cond_3

    .line 526
    sget-object v0, Lcom/tencent/mm/ui/chatting/v;->cRh:Lcom/tencent/mm/sdk/platformtools/SensorController;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/SensorController;->azI()V

    goto :goto_1

    .line 529
    :cond_3
    if-nez p1, :cond_4

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/v;->cRo:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/v;->cRo:J

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/au;->O(J)J

    move-result-wide v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 530
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/v;->cRt:Z

    goto :goto_1

    .line 533
    :cond_4
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/v;->cRt:Z

    .line 535
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v2}, Lcom/tencent/mm/n/o;->wD()Z

    move-result v2

    if-nez v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJP()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 540
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/v;->eTq:Z

    .line 541
    iget-wide v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_5

    .line 542
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->ag(Z)V

    .line 546
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIQ()V

    goto :goto_1

    .line 544
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->ag(Z)V

    goto :goto_2

    .line 550
    :cond_6
    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->ag(Z)V

    .line 554
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v2, Lcom/tencent/mm/ui/chatting/y;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/ui/chatting/y;-><init>(Lcom/tencent/mm/ui/chatting/v;Z)V

    invoke-direct {v0, v2, v1}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto :goto_1
.end method

.method public final b(ILcom/tencent/mm/storage/ak;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x1013

    const/4 v5, 0x1

    .line 153
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v0, Lcom/tencent/mm/modelvoice/bf;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelvoice/bf;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/bf;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v1

    if-ne v1, v5, :cond_3

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 162
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/bf;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 166
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aII()V

    .line 168
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 169
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 170
    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 171
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIS()V

    .line 172
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f07022a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;Ljava/lang/String;J)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKI:Lcom/tencent/mm/ui/base/ce;

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v0}, Lcom/tencent/mm/n/o;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 176
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/v;->dI(Z)V

    goto/16 :goto_0

    .line 180
    :cond_7
    invoke-direct {p0, p2}, Lcom/tencent/mm/ui/chatting/v;->y(Lcom/tencent/mm/storage/ak;)V

    .line 182
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p2}, Lcom/tencent/mm/modelvoice/bi;->j(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 183
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/v;->nw(I)V

    .line 186
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    goto/16 :goto_0
.end method

.method public final c(ILcom/tencent/mm/storage/ak;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1013

    const/4 v4, 0x1

    .line 190
    if-nez p2, :cond_0

    .line 213
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aII()V

    .line 194
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 195
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 197
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIS()V

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f07022a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;Ljava/lang/String;J)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKI:Lcom/tencent/mm/ui/base/ce;

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v0}, Lcom/tencent/mm/n/o;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 202
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/v;->dI(Z)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-direct {p0, p2}, Lcom/tencent/mm/ui/chatting/v;->y(Lcom/tencent/mm/storage/ak;)V

    .line 207
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/tencent/mm/modelvoice/bi;->j(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/v;->nw(I)V

    .line 212
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    goto :goto_0
.end method

.method public final d(ILcom/tencent/mm/storage/ak;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1013

    const/4 v4, 0x1

    .line 216
    if-nez p2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aII()V

    .line 220
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 221
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 223
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIS()V

    .line 224
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f07022a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;Ljava/lang/String;J)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKI:Lcom/tencent/mm/ui/base/ce;

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v0}, Lcom/tencent/mm/n/o;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 227
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/v;->dI(Z)V

    goto :goto_0

    .line 230
    :cond_3
    invoke-direct {p0, p2}, Lcom/tencent/mm/ui/chatting/v;->y(Lcom/tencent/mm/storage/ak;)V

    .line 232
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/tencent/mm/modelvoice/bi;->j(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 233
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/v;->nw(I)V

    .line 236
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    goto :goto_0
.end method

.method public final dG(Z)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/tencent/mm/ui/chatting/v;->gKJ:Z

    .line 84
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aII()V

    .line 85
    return-void
.end method

.method public final dH(Z)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/tencent/mm/ui/chatting/v;->eTq:Z

    .line 380
    return-void
.end method

.method public final dI(Z)V
    .locals 2
    .parameter

    .prologue
    .line 461
    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "stop play"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sF(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v0}, Lcom/tencent/mm/n/o;->stop()V

    .line 464
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->VX()V

    .line 465
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIN()V

    .line 466
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lcom/tencent/mm/ui/chatting/v;->cRh:Lcom/tencent/mm/sdk/platformtools/SensorController;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/SensorController;->azI()V

    .line 468
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->cRn:Lcom/tencent/mm/sdk/platformtools/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ca;->azK()V

    .line 470
    :cond_0
    if-eqz p1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJQ()Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    .line 473
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    .line 474
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIS()V

    .line 475
    return-void
.end method

.method public final e(ILcom/tencent/mm/storage/ak;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1013

    const/4 v4, 0x1

    .line 240
    if-nez p2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aII()V

    .line 244
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 245
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 247
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIS()V

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f07022a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;Ljava/lang/String;J)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKI:Lcom/tencent/mm/ui/base/ce;

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v0}, Lcom/tencent/mm/n/o;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/v;->gKF:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 251
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/v;->dI(Z)V

    goto :goto_0

    .line 254
    :cond_3
    invoke-direct {p0, p2}, Lcom/tencent/mm/ui/chatting/v;->y(Lcom/tencent/mm/storage/ak;)V

    .line 256
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/tencent/mm/modelvoice/bi;->j(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/v;->nw(I)V

    .line 259
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    goto :goto_0
.end method

.method public final i(Lcom/tencent/mm/storage/ak;)V
    .locals 2
    .parameter

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-static {p1}, Lcom/tencent/mm/modelvoice/bi;->k(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "should not in this route"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/v;->y(Lcom/tencent/mm/storage/ak;)V

    .line 291
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/v;->cbJ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v0}, Lcom/tencent/mm/n/o;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->ag(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    goto :goto_0
.end method

.method public final isPlaying()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->dkz:Lcom/tencent/mm/n/o;

    invoke-interface {v0}, Lcom/tencent/mm/n/o;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->release()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 79
    return-void
.end method

.method public final pB()V
    .locals 2

    .prologue
    .line 510
    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "voice play error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/v;->dI(Z)V

    .line 512
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    .line 513
    return-void
.end method

.method public final pj()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/v;->eTq:Z

    return v0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->cRn:Lcom/tencent/mm/sdk/platformtools/ca;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->cRn:Lcom/tencent/mm/sdk/platformtools/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ca;->azK()V

    .line 397
    :cond_0
    return-void
.end method

.method public final wE()V
    .locals 3

    .prologue
    .line 499
    const-string v0, "MicroMsg.AutoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "voice play completion isSpeakOn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/v;->eTq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/v;->aIR()V

    .line 502
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/v;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->VX()V

    .line 503
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    .line 506
    :cond_0
    return-void
.end method
