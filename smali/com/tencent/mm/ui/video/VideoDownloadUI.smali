.class public Lcom/tencent/mm/ui/video/VideoDownloadUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ai/t;


# instance fields
.field private dTl:Landroid/widget/TextView;

.field private deh:Landroid/widget/ProgressBar;

.field private hsI:Landroid/widget/TextView;

.field private hsJ:Landroid/widget/TextView;

.field private rD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 6

    .prologue
    .line 46
    const v0, 0x7f0a08d6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->hsI:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a08d7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->hsJ:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0a08d5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->dTl:Landroid/widget/TextView;

    .line 60
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->rD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ai/r;->gW(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->dTl:Landroid/widget/TextView;

    const v2, 0x7f07007d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/tencent/mm/ai/v;->e(Lcom/tencent/mm/ai/q;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->hsJ:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->eQ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->hsI:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/au;->K(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Lcom/tencent/mm/ui/video/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/e;-><init>(Lcom/tencent/mm/ui/video/VideoDownloadUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 74
    const v0, 0x7f0a08d4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->deh:Landroid/widget/ProgressBar;

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->deh:Landroid/widget/ProgressBar;

    invoke-static {v1}, Lcom/tencent/mm/ai/v;->e(Lcom/tencent/mm/ai/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    return-void
.end method

.method public final ei(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 92
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->rD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ai/r;->gW(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/tencent/mm/ai/v;->e(Lcom/tencent/mm/ai/q;)I

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->deh:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 101
    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->dTl:Landroid/widget/TextView;

    const v3, 0x7f07007d

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->deh:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v1

    const/16 v2, 0xc7

    if-ne v1, v2, :cond_0

    .line 109
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Lcom/tencent/mm/ai/p;->gQ(Ljava/lang/String;)Z

    move-result v1

    .line 111
    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DQ()I

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 112
    sget-object v2, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v2, v2, Lcom/tencent/mm/compatible/c/m;->cen:I

    if-ne v2, v7, :cond_2

    .line 113
    invoke-static {p1, p0, v1}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 118
    const-string v2, "VideoRecorder_VideoSize"

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v2, "VideoRecorder_VideoLength"

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v0, "VideoPlayer_File_nam"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-class v0, Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->finish()V

    goto/16 :goto_0

    .line 124
    :cond_4
    invoke-static {p1, p0, v1}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    const v0, 0x7f0705fb

    const v1, 0x7f0709bb

    new-instance v2, Lcom/tencent/mm/ui/video/f;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/video/f;-><init>(Lcom/tencent/mm/ui/video/VideoDownloadUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f030302

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->rD:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->FR()V

    .line 37
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ai/r;->a(Lcom/tencent/mm/ai/t;)V

    .line 81
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mm/ai/r;->a(Lcom/tencent/mm/ai/t;Landroid/os/Looper;)V

    .line 87
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 88
    return-void
.end method
