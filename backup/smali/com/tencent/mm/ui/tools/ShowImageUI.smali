.class public Lcom/tencent/mm/ui/tools/ShowImageUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

.field private hmr:Z

.field private hms:Lcom/tencent/mm/ui/tools/fw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/ShowImageUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/ShowImageUI;->hmr:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/ShowImageUI;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_image_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_compress_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_message_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "Retr_File_Name"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Retr_Msg_Id"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Retr_Msg_Type"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Retr_Compress_Type"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/tools/ShowImageUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/ShowImageUI;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_image_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->f(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final UK()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 125
    new-instance v1, Lcom/tencent/mm/c/a/x;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/x;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "key_message_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 129
    const-string v0, "MicroMsg.ShowImageUI"

    const-string v2, "msg id error, try fav simple data"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "key_favorite_source_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 131
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_image_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/c/a/x;ILjava/lang/String;)Z

    move-result v0

    .line 136
    :goto_0
    if-eqz v0, :cond_2

    .line 137
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 138
    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v0, v0, Lcom/tencent/mm/c/a/z;->ret:I

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070a4d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 144
    :cond_0
    :goto_1
    return-void

    .line 134
    :cond_1
    invoke-static {v1, v2, v3}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/c/a/x;J)Z

    move-result v0

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v1, v1, Lcom/tencent/mm/c/a/y;->type:I

    const v2, 0x7f070aca

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_1
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f03029e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_favorite"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/ShowImageUI;->hmr:Z

    .line 55
    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ShowImageUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    .line 56
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ShowImageUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ShowImageUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 60
    new-instance v0, Lcom/tencent/mm/ui/tools/fw;

    invoke-direct {v0, v3}, Lcom/tencent/mm/ui/tools/fw;-><init>(B)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ShowImageUI;->hms:Lcom/tencent/mm/ui/tools/fw;

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ShowImageUI;->hms:Lcom/tencent/mm/ui/tools/fw;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_image_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/tools/fw;->imagePath:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ShowImageUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ShowImageUI;->hms:Lcom/tencent/mm/ui/tools/fw;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 64
    new-instance v0, Lcom/tencent/mm/ui/tools/ft;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/ft;-><init>(Lcom/tencent/mm/ui/tools/ShowImageUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 73
    const v0, 0x7f0205c2

    new-instance v1, Lcom/tencent/mm/ui/tools/fu;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/fu;-><init>(Lcom/tencent/mm/ui/tools/ShowImageUI;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/tencent/mm/ui/tools/ShowImageUI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 117
    return-void
.end method
