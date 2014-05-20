.class public abstract Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private eBs:Lcom/tencent/mm/model/am;

.field private fjA:Lcom/tencent/mm/protocal/a/or;

.field protected fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

.field private fjH:Z

.field protected fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

.field private fjJ:Landroid/view/View;

.field private fjK:Landroid/widget/ImageView;

.field private fjL:Landroid/widget/TextView;

.field private fjM:Landroid/widget/TextView;

.field private fjN:Landroid/widget/TextView;

.field private fjO:Lcom/tencent/mm/pluginsdk/module/media/f;

.field private final fjP:I

.field private mHandler:Landroid/os/Handler;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    .line 40
    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/p;->fjR:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjH:Z

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->time:J

    .line 81
    const v0, 0x10001

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjP:I

    .line 83
    new-instance v0, Lcom/tencent/mm/pluginsdk/module/media/i;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/module/media/i;-><init>(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->mHandler:Landroid/os/Handler;

    .line 388
    new-instance v0, Lcom/tencent/mm/pluginsdk/module/media/n;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/module/media/n;-><init>(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->eBs:Lcom/tencent/mm/model/am;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)Lcom/tencent/mm/model/am;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->eBs:Lcom/tencent/mm/model/am;

    return-object v0
.end method

.method private aqG()V
    .locals 5

    .prologue
    .line 231
    sget v0, Lcom/tencent/mm/i;->aMb:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjL:Landroid/widget/TextView;

    .line 232
    sget v0, Lcom/tencent/mm/i;->aMd:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjM:Landroid/widget/TextView;

    .line 233
    sget v0, Lcom/tencent/mm/i;->aMa:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjN:Landroid/widget/TextView;

    .line 234
    sget v0, Lcom/tencent/mm/i;->aLZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjK:Landroid/widget/ImageView;

    .line 235
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjL:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjM:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjN:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjO:Lcom/tencent/mm/pluginsdk/module/media/f;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjO:Lcom/tencent/mm/pluginsdk/module/media/f;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/pluginsdk/module/media/f;->a(Lcom/tencent/mm/protocal/a/or;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjK:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->a(Landroid/widget/ImageView;Lcom/tencent/mm/protocal/a/or;)V

    .line 250
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjL:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjM:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjN:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fPY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjH:Z

    return v0
.end method

.method private declared-synchronized cf(Z)V
    .locals 2
    .parameter

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 286
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->a(Lcom/tencent/mm/pluginsdk/module/media/a;)V

    .line 287
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->setKeepScreenOn(Z)V

    .line 288
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->stop()V

    .line 290
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "reset lyric View"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 292
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "start synlyric"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqN()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 294
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->brR:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/a;->aG(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->a(Lcom/tencent/mm/pluginsdk/module/media/a;)V

    .line 297
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->setKeepScreenOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqG()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->cf(Z)V

    return-void
.end method


# virtual methods
.method protected final Kb()V
    .locals 2

    .prologue
    .line 488
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/pluginsdk/module/media/o;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/module/media/o;-><init>(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    return-void
.end method

.method protected abstract a(Landroid/widget/ImageView;Lcom/tencent/mm/protocal/a/or;)V
.end method

.method protected abstract acl()Ljava/lang/String;
.end method

.method protected acn()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method protected aco()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract acp()Lcom/tencent/mm/pluginsdk/module/media/q;
.end method

.method protected abstract acq()Z
.end method

.method protected abstract acr()Z
.end method

.method protected abstract acs()Ljava/lang/String;
.end method

.method protected abstract act()Lcom/tencent/mm/pluginsdk/e;
.end method

.method protected acu()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract acv()Ljava/lang/String;
.end method

.method protected final aqH()V
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "doBeingPlayMusic: but item is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/pluginsdk/module/media/l;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/module/media/l;-><init>(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final aqI()V
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->aiZ:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/p;->fjT:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    .line 330
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    sget v2, Lcom/tencent/mm/n;->brR:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/pluginsdk/module/media/a;->aG(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->a(Lcom/tencent/mm/pluginsdk/module/media/a;)V

    .line 331
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqB()V

    .line 332
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqD()V

    .line 333
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->brP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final aqJ()V
    .locals 2

    .prologue
    .line 340
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/pluginsdk/module/media/m;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/module/media/m;-><init>(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method protected final aqK()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->ahf:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/p;->fjR:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    .line 353
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->setKeepScreenOn(Z)V

    .line 354
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->stop()V

    .line 355
    return-void
.end method

.method protected aqL()Z
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acq()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aqM()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method protected aqN()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method protected final declared-synchronized aqO()Lcom/tencent/mm/protocal/a/or;
    .locals 2

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "music_player_ui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->at([B)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    if-nez v0, :cond_1

    .line 520
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    if-nez v0, :cond_2

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    .line 526
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->release()V

    .line 527
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "has no play resource but enter music UI "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected at([B)V
    .locals 5
    .parameter

    .prologue
    .line 253
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "updateShakeMusicItem errro"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/or;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/or;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/or;->bD([B)Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    .line 259
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "updateMusicItem ok: [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "parser error, "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    goto :goto_0
.end method

.method protected final c(Lcom/tencent/mm/protocal/a/or;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    .line 535
    return-void
.end method

.method protected abstract getAppId()Ljava/lang/String;
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/tencent/mm/k;->aWB:I

    return v0
.end method

.method protected final ke(I)V
    .locals 2
    .parameter

    .prologue
    .line 547
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 548
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 549
    const v1, 0x10001

    iput v1, v0, Landroid/os/Message;->what:I

    .line 550
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjO:Lcom/tencent/mm/pluginsdk/module/media/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjO:Lcom/tencent/mm/pluginsdk/module/media/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/mm/pluginsdk/module/media/f;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 512
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 460
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 461
    :cond_0
    const-string v0, "MicroMsg.MusicPlayerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 465
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->release()V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->finish()V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    new-instance v0, Lcom/tencent/mm/pluginsdk/module/media/f;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acv()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->act()Lcom/tencent/mm/pluginsdk/e;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/module/media/f;-><init>(Lcom/tencent/mm/protocal/a/or;Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjO:Lcom/tencent/mm/pluginsdk/module/media/f;

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjO:Lcom/tencent/mm/pluginsdk/module/media/f;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/f;->onCreate()V

    .line 117
    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/q;->fjV:Lcom/tencent/mm/pluginsdk/module/media/q;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acp()Lcom/tencent/mm/pluginsdk/module/media/q;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v0, Lcom/tencent/mm/i;->aRz:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    sget v0, Lcom/tencent/mm/i;->ayM:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->release()V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->qB(Ljava/lang/String;)V

    :goto_1
    sget v0, Lcom/tencent/mm/i;->aMc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/pluginsdk/module/media/j;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/module/media/j;-><init>(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    sget v0, Lcom/tencent/mm/n;->brQ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->mn(I)V

    new-instance v0, Lcom/tencent/mm/pluginsdk/module/media/k;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/module/media/k;-><init>(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqG()V

    .line 120
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "auto play on create"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqH()V

    goto/16 :goto_0

    .line 117
    :cond_5
    sget v0, Lcom/tencent/mm/i;->aRE:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->eBs:Lcom/tencent/mm/model/am;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/al;->c(Lcom/tencent/mm/model/am;)V

    .line 372
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->release()V

    .line 376
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 377
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 174
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "on back key down"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqD()V

    .line 162
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqB()V

    .line 163
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->stop()V

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->setKeepScreenOn(Z)V

    .line 167
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjH:Z

    .line 168
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 169
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 134
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjH:Z

    .line 135
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aco()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->os()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/p;->fjT:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lcom/tencent/mm/h;->aiZ:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->eBs:Lcom/tencent/mm/model/am;

    invoke-interface {v0, v2}, Lcom/tencent/mm/model/al;->a(Lcom/tencent/mm/model/am;)V

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acu()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->cf(Z)V

    .line 141
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->os()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->aiZ:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/p;->fjT:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    .line 144
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqC()V

    .line 151
    :cond_2
    :goto_2
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 139
    goto :goto_1

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjJ:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->ahf:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/p;->fjR:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    goto :goto_2
.end method
