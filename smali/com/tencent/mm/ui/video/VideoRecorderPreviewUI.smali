.class public Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private cZV:Landroid/widget/ProgressBar;

.field private dlh:J

.field private hsP:Lcom/tencent/mm/ui/base/VideoView;

.field private hsQ:Ljava/lang/String;

.field private hsR:Lcom/tencent/mm/sdk/platformtools/ay;

.field private final hsS:I

.field private hsT:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsQ:Ljava/lang/String;

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->dlh:J

    .line 32
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/video/p;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/p;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsR:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 105
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsS:I

    .line 106
    new-instance v0, Lcom/tencent/mm/ui/video/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/r;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsT:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)I
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->dlh:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->dlh:J

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->dlh:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->dlh:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->cZV:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Lcom/tencent/mm/ui/base/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsT:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsR:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 2

    .prologue
    .line 94
    sget v0, Lcom/tencent/mm/i;->aOB:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/VideoView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/s;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/s;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/t;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/t;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    sget v0, Lcom/tencent/mm/i;->aOA:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/video/u;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/u;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/v;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/v;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsQ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->wm(Ljava/lang/String;)V

    .line 95
    :cond_0
    sget v0, Lcom/tencent/mm/i;->aOx:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->cZV:Landroid/widget/ProgressBar;

    .line 96
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 190
    sget v0, Lcom/tencent/mm/k;->bbi:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcom/tencent/mm/k;->bbi:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_VideoFullPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsQ:Ljava/lang/String;

    .line 70
    sget v0, Lcom/tencent/mm/n;->bEr:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->mn(I)V

    .line 71
    new-instance v0, Lcom/tencent/mm/ui/video/q;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/q;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->FR()V

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsP:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsR:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->finish()V

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->hsT:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStart()V

    .line 91
    return-void
.end method
