.class public Lcom/tencent/mm/ui/video/VideoPlayerUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private bMS:J

.field private ccE:Ljava/lang/String;

.field private ekZ:Landroid/widget/ImageButton;

.field private hsI:Landroid/widget/TextView;

.field private hsJ:Landroid/widget/TextView;

.field private hsL:Lcom/tencent/mm/ui/base/VideoView;

.field private hsM:Landroid/widget/TextView;

.field private hsN:Lcom/tencent/mm/sdk/platformtools/ay;

.field private length:I

.field private rD:Ljava/lang/String;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    .line 46
    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ekZ:Landroid/widget/ImageButton;

    .line 282
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/video/o;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/o;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsN:Lcom/tencent/mm/sdk/platformtools/ay;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->start()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsN:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    return-void
.end method

.method private ajF()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->pause()V

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ekZ:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsN:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 108
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ekZ:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 312
    if-eqz p2, :cond_0

    .line 313
    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :goto_0
    invoke-static {p1, v0}, Lcom/tencent/mm/platformtools/au;->i(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    const/4 v0, 0x0

    .line 322
    :goto_1
    return v0

    .line 315
    :cond_0
    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 322
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Lcom/tencent/mm/ui/base/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ajF()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/video/VideoPlayerUI;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->length:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsJ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/video/VideoPlayerUI;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->size:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsI:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsN:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0701ba

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f070778

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "favorite"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f070a4c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v5, Lcom/tencent/mm/ui/video/n;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/video/n;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    move-object v0, p0

    move-object v4, v1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;

    return-void
.end method

.method static synthetic k(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoPlayer_File_nam"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Retr_File_Name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Retr_length"

    iget v2, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->length:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Retr_Msg_Type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic l(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ccE:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f070600

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f070601

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->d(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    const-string v0, "MicroMsg.VideoPlayerActivity"

    const-string v3, "do favorite, msgId[%d]"

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->bMS:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/tencent/mm/c/a/x;

    invoke-direct {v3}, Lcom/tencent/mm/c/a/x;-><init>()V

    const-wide/16 v4, -0x1

    iget-wide v6, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->bMS:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->rD:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->length:I

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "MicroMsg.GetFavDataSource"

    const-string v2, "fill favorite event fail, event or fileName is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkG:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v3, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v0, v0, Lcom/tencent/mm/c/a/z;->ret:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070a4d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v5, "MicroMsg.GetFavDataSource"

    const-string v6, "fav video, fileName[%s] length[%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    new-instance v6, Lcom/tencent/mm/protocal/a/fy;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/fy;-><init>()V

    new-instance v7, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/tencent/mm/protocal/a/fy;->sa(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/tencent/mm/protocal/a/fy;->sb(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    invoke-virtual {v6, v2}, Lcom/tencent/mm/protocal/a/fy;->ls(I)Lcom/tencent/mm/protocal/a/fy;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/tencent/mm/protocal/a/fy;->bM(J)Lcom/tencent/mm/protocal/a/fy;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/tencent/mm/protocal/a/ft;->rL(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/tencent/mm/protocal/a/ft;->rM(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v7, v11}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v0

    const/high16 v8, 0x190

    if-le v0, v8, :cond_2

    iget-object v0, v3, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->blK:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v0, v1

    goto/16 :goto_0

    :cond_2
    const-string v8, "MicroMsg.GetFavDataSource"

    const-string v9, "video length is %s"

    new-array v10, v2, [Ljava/lang/Object;

    if-nez v6, :cond_3

    const-string v0, "null"

    :goto_2
    aput-object v0, v10, v1

    invoke-static {v8, v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v0

    :goto_3
    invoke-virtual {v7, v0}, Lcom/tencent/mm/protocal/a/ft;->lm(I)Lcom/tencent/mm/protocal/a/ft;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/a/fx;->S(Ljava/util/LinkedList;)Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, v3, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v5, v0, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, v3, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v11, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v0, v2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :cond_5
    iget-wide v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->bMS:J

    invoke-static {v3, v0, v1}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/c/a/x;J)Z

    move-result v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v3, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v1, v1, Lcom/tencent/mm/c/a/y;->type:I

    const v2, 0x7f070aca

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_1
.end method

.method static synthetic n(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsM:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    const v0, 0x7f070603

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->mn(I)V

    .line 114
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_MsgId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->bMS:J

    .line 115
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoPlayer_File_nam"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->rD:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_VideoSize"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->size:I

    .line 117
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_VideoLength"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->length:I

    .line 119
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->rD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ccE:Ljava/lang/String;

    .line 120
    const-string v0, "MicroMsg.VideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const v0, 0x7f0a08e6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ekZ:Landroid/widget/ImageButton;

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ekZ:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/ui/video/g;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/g;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const-string v0, "MicroMsg.VideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const v0, 0x7f0a08e9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/VideoView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/h;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/h;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/i;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/i;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    const-string v0, "MicroMsg.VideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initView :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ccE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ccE:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->stopPlayback()V

    .line 159
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ccE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->wm(Ljava/lang/String;)V

    .line 162
    :cond_0
    const-string v0, "MicroMsg.VideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/j;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/j;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/k;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/k;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 186
    const v0, 0x7f020539

    new-instance v1, Lcom/tencent/mm/ui/video/l;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/l;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 195
    new-instance v0, Lcom/tencent/mm/ui/video/m;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/m;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 204
    const v0, 0x7f0a08ea

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsM:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f0a08eb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsJ:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0a08ec

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsI:Landroid/widget/TextView;

    .line 207
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->resume()V

    .line 83
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/tencent/mm/model/be;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/ah;->oi()V

    .line 86
    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    .line 87
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f030308

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->FR()V

    .line 68
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->pause()V

    .line 71
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/tencent/mm/model/be;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/ah;->oh()V

    .line 74
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsL:Lcom/tencent/mm/ui/base/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/VideoView;->stopPlayback()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->hsN:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 96
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 97
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->ajF()V

    .line 304
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 305
    return-void
.end method
