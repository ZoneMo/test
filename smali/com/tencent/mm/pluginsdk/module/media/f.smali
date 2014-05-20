.class public final Lcom/tencent/mm/pluginsdk/module/media/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dsd:Ljava/lang/String;

.field private fiX:Ljava/lang/String;

.field private fjA:Lcom/tencent/mm/protocal/a/or;

.field private fjB:Lcom/tencent/mm/ui/MMActivity;

.field private fjC:Ljava/lang/String;

.field private fjD:Lcom/tencent/mm/pluginsdk/e;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/protocal/a/or;Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    .line 62
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    .line 63
    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjC:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjD:Lcom/tencent/mm/pluginsdk/e;

    .line 65
    iput-object p4, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->dsd:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fiX:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/module/media/f;)Lcom/tencent/mm/ui/MMActivity;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    return-object v0
.end method

.method private aqF()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 286
    :goto_0
    return-object v0

    .line 266
    :cond_0
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;-><init>()V

    .line 267
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicLowBandUrl:Ljava/lang/String;

    .line 270
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicLowBandDataUrl:Ljava/lang/String;

    .line 271
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 272
    iput-object v0, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/p;

    .line 273
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 277
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fiX:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    :goto_1
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/h;->su(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    :goto_2
    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/h;->abH:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->n(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    move-object v0, v2

    .line 286
    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fiX:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/module/media/f;)V
    .locals 4
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/f;->aqF()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/p;

    check-cast v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;

    iget-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    const-string v3, "#p="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/p;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/j;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/j;-><init>()V

    iput-object v1, v3, Lcom/tencent/mm/sdk/modelmsg/j;->gca:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/sdk/modelmsg/j;->h(Landroid/os/Bundle;)V

    const-string v1, "Ksnsupload_timeline"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "Ksnsupload_musicid"

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Ksnsupload_appid"

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->dsd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Ksnsupload_appname"

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjD:Lcom/tencent/mm/pluginsdk/e;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/e;->k(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/module/media/f;)V
    .locals 4
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.MusicBarComponent"

    const-string v1, "error on do share to friend item == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjD:Lcom/tencent/mm/pluginsdk/e;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/e;->a(Landroid/content/Intent;ILcom/tencent/mm/ui/MMActivity;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/module/media/f;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    sget-object v2, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v3, 0x2a9e

    const-string v4, "4"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v3, v2, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_0

    const-string v4, "AndroidQQMusic://from=webPlayer&data=%s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/mm/model/al;->oG()Lcom/tencent/mm/model/al;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/MMActivity;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->i(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "#p="

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "rawUrl"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjD:Lcom/tencent/mm/pluginsdk/e;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    invoke-interface {v2, v1, v3}, Lcom/tencent/mm/pluginsdk/e;->h(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/module/media/f;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x7

    .line 42
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2a9e

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/c/a/x;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/x;-><init>()V

    new-instance v2, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    new-instance v3, Lcom/tencent/mm/protocal/a/fy;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/fy;-><init>()V

    new-instance v4, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/a/fy;->sa(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/a/fy;->sb(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/a/fy;->ls(I)Lcom/tencent/mm/protocal/a/fy;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/tencent/mm/protocal/a/fy;->bM(J)Lcom/tencent/mm/protocal/a/fy;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->dsd:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/a/fy;->sg(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/ft;->rE(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/ft;->rF(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/ft;->rD(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/a/ft;->axy()Lcom/tencent/mm/protocal/a/ft;

    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fiX:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    :goto_0
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/ft;->rM(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/ft;->rx(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/ft;->ry(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v4, v7}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/or;->fPW:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/mm/c/a/y;->title:Ljava/lang/String;

    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/mm/c/a/y;->desc:Ljava/lang/String;

    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v2, v0, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v7, v0, Lcom/tencent/mm/c/a/y;->type:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, v2, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v0, v0, Lcom/tencent/mm/c/a/z;->ret:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    sget v2, Lcom/tencent/mm/n;->bli:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fiX:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/tencent/mm/protocal/a/ft;->axA()Lcom/tencent/mm/protocal/a/ft;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bkN:I

    sget v2, Lcom/tencent/mm/n;->bkF:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/a/or;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    .line 71
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjC:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->dsd:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fiX:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjD:Lcom/tencent/mm/pluginsdk/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjC:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const-string v0, "MicroMsg.MusicBarComponent"

    const-string v1, "error on ActivityResult im:%s, ac:%s, orName:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjD:Lcom/tencent/mm/pluginsdk/e;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjC:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    .line 144
    :goto_0
    return v0

    .line 129
    :cond_1
    const/4 v0, -0x1

    if-ne v0, p2, :cond_4

    if-nez p1, :cond_4

    .line 130
    if-eqz p3, :cond_3

    .line 131
    const-string v0, "Select_Conv_User"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/f;->aqF()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_2

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjD:Lcom/tencent/mm/pluginsdk/e;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->dsd:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjC:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/e;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "MicroMsg.MusicBarComponent"

    const-string v1, "succeed to share to friend:%s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    move v0, v6

    .line 141
    goto :goto_0

    .line 138
    :cond_3
    const-string v0, "MicroMsg.MusicBarComponent"

    const-string v1, "error on ActivityResult data == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_4
    const-string v0, "MicroMsg.MusicBarComponent"

    const-string v1, "error on ActivityResult not ok, resultCode:%d, requestCode:%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    .line 144
    goto :goto_0
.end method

.method public final onCreate()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjA:Lcom/tencent/mm/protocal/a/or;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/f;->fjB:Lcom/tencent/mm/ui/MMActivity;

    const/4 v1, 0x0

    sget v2, Lcom/tencent/mm/h;->agK:I

    new-instance v3, Lcom/tencent/mm/pluginsdk/module/media/g;

    invoke-direct {v3, p0}, Lcom/tencent/mm/pluginsdk/module/media/g;-><init>(Lcom/tencent/mm/pluginsdk/module/media/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMActivity;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0
.end method
