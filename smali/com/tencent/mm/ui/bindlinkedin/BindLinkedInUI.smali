.class public Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private bUl:Ljava/lang/String;

.field private bUm:Ljava/lang/String;

.field private dRP:Landroid/app/ProgressDialog;

.field private gIh:Z

.field private gIi:Ljava/lang/String;

.field private gIj:Z

.field private gIk:Z

.field private gIl:Z

.field private gIm:Landroid/os/Bundle;

.field private gIn:Z

.field private gIo:Landroid/widget/TextView;

.field private gIp:Landroid/widget/TextView;

.field private gIq:Landroid/view/View;

.field private gIr:Landroid/widget/CheckBox;

.field private gIs:Landroid/widget/TextView;

.field private gIt:Landroid/widget/TextView;

.field private gIu:Landroid/widget/TextView;

.field private gIv:Ljava/lang/String;

.field private gIw:Ljava/lang/String;

.field private gIx:Ljava/lang/String;

.field private gIy:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIh:Z

    .line 51
    iput-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIj:Z

    .line 52
    iput-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIk:Z

    .line 53
    iput-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIl:Z

    .line 56
    iput-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIn:Z

    return-void
.end method

.method private LP()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 356
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 357
    const-string v0, "MicroMsg.BindLinkedInUI"

    const-string v1, "bindBundle is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIl:Z

    if-eqz v0, :cond_1

    .line 362
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIh:Z

    iget-object v1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->name:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIj:Z

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->b(ZZLjava/lang/String;Z)V

    goto :goto_0

    .line 366
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIk:Z

    if-eqz v0, :cond_4

    .line 367
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIh:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIi:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->bUl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 368
    :goto_1
    iget-object v3, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->bUm:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIj:Z

    iget-object v5, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIo:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIo:Landroid/widget/TextView;

    sget v6, Lcom/tencent/mm/n;->bhM:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {p0, v6, v1}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIq:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIt:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIp:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIs:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIu:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIr:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIr:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tencent/mm/ui/bindlinkedin/n;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindlinkedin/n;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 367
    goto :goto_1

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIs:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIr:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIr:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tencent/mm/ui/bindlinkedin/o;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindlinkedin/o;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 370
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIh:Z

    iget-object v2, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->name:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIj:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->b(ZZLjava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->dRP:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->r(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIk:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "rawUrl"

    const-string v2, "http://www.linkedin.com/bind/plugin/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "geta8key_username"

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIl:Z

    if-eqz v1, :cond_0

    const-string v1, "geta8key_scene"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string v1, "webview"

    const-string v2, "com.tencent.mm.ui.tools.WebViewUI"

    const/16 v3, 0x64

    invoke-static {p0, v1, v2, v0, v3}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string v1, "geta8key_scene"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private b(ZZLjava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIu:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    if-eqz p1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIp:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIo:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bhM:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIq:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIs:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    if-eqz p2, :cond_0

    .line 336
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIr:Landroid/widget/CheckBox;

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 339
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIr:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tencent/mm/ui/bindlinkedin/b;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindlinkedin/b;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 352
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIo:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bhN:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIp:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIq:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIs:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIh:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->dF(Z)V

    return-void
.end method

.method private dF(Z)V
    .locals 9
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 263
    const-string v0, "MicroMsg.BindLinkedInUI"

    const-string v1, "bindBundle is null !!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v0, Lcom/tencent/mm/y/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIr:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->bUl:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->bUm:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIv:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIw:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIx:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIy:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/tencent/mm/y/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-nez p1, :cond_1

    .line 274
    sget v1, Lcom/tencent/mm/n;->ayn:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/tencent/mm/ui/bindlinkedin/m;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/m;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;Lcom/tencent/mm/y/a;)V

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->dRP:Landroid/app/ProgressDialog;

    .line 282
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0

    .line 267
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v3, 0x46001

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIi:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIi:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIh:Z

    .line 146
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v3, 0x46002

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->name:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->status:I

    .line 149
    iget v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->status:I

    const/high16 v3, 0x40

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIj:Z

    .line 151
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v1, v2

    .line 149
    goto :goto_1
.end method

.method private r(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 376
    if-eqz p1, :cond_1

    .line 377
    iget v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->status:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->status:I

    .line 381
    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 383
    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/4 v2, 0x7

    iget v3, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 384
    if-eqz p2, :cond_0

    .line 385
    new-instance v1, Lcom/tencent/mm/protocal/a/gf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/gf;-><init>()V

    .line 387
    const/16 v2, 0x21

    iput v2, v1, Lcom/tencent/mm/protocal/a/gf;->fIH:I

    .line 388
    iput v0, v1, Lcom/tencent/mm/protocal/a/gf;->fII:I

    .line 389
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/storage/az;

    const/16 v3, 0x17

    invoke-direct {v2, v3, v1}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 391
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/d;->nE()V

    .line 393
    :cond_0
    return-void

    .line 379
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->status:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->status:I

    goto :goto_0

    .line 381
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method protected final FR()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIk:Z

    if-eqz v0, :cond_0

    .line 157
    sget v0, Lcom/tencent/mm/n;->bhW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->mn(I)V

    .line 164
    :goto_0
    sget v0, Lcom/tencent/mm/i;->aJl:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIo:Landroid/widget/TextView;

    .line 166
    sget v0, Lcom/tencent/mm/i;->aJm:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIp:Landroid/widget/TextView;

    .line 167
    sget v0, Lcom/tencent/mm/i;->aKD:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIq:Landroid/view/View;

    .line 168
    sget v0, Lcom/tencent/mm/i;->aKC:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIr:Landroid/widget/CheckBox;

    .line 169
    sget v0, Lcom/tencent/mm/i;->ann:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIs:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/tencent/mm/i;->aNT:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIt:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/tencent/mm/i;->aoW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIu:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIo:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/bindlinkedin/e;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindlinkedin/e;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIs:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/bindlinkedin/f;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindlinkedin/f;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIt:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/bindlinkedin/i;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindlinkedin/i;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIu:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/bindlinkedin/k;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindlinkedin/k;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v0, Lcom/tencent/mm/ui/bindlinkedin/l;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bindlinkedin/l;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 244
    invoke-direct {p0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->LP()V

    .line 245
    return-void

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIl:Z

    if-eqz v0, :cond_1

    .line 159
    sget v0, Lcom/tencent/mm/n;->bhX:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->mn(I)V

    goto/16 :goto_0

    .line 161
    :cond_1
    sget v0, Lcom/tencent/mm/n;->bhQ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->mn(I)V

    goto/16 :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x226

    const/16 v1, 0x225

    .line 464
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->dRP:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->dRP:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 466
    iput-object v3, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->dRP:Landroid/app/ProgressDialog;

    .line 469
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_5

    .line 470
    :cond_1
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 472
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 473
    sget v0, Lcom/tencent/mm/n;->bhU:I

    .line 483
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    .line 510
    :cond_2
    :goto_1
    return-void

    .line 475
    :cond_3
    sget v0, Lcom/tencent/mm/n;->bhT:I

    goto :goto_0

    .line 477
    :cond_4
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 478
    sget v0, Lcom/tencent/mm/n;->bhV:I

    goto :goto_0

    .line 487
    :cond_5
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 489
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIn:Z

    if-nez v0, :cond_6

    .line 490
    sget v0, Lcom/tencent/mm/n;->bhR:I

    .line 500
    :goto_2
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/bindlinkedin/d;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindlinkedin/d;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 507
    invoke-direct {p0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->initData()V

    .line 508
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIr:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIj:Z

    .line 509
    invoke-direct {p0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->LP()V

    goto :goto_1

    .line 492
    :cond_6
    sget v0, Lcom/tencent/mm/n;->bhS:I

    goto :goto_2

    .line 494
    :cond_7
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 495
    sget v0, Lcom/tencent/mm/n;->bhY:I

    goto :goto_2
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lcom/tencent/mm/k;->aSC:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 447
    const-string v2, "MicroMsg.BindLinkedInUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult . requestCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    if-nez p3, :cond_0

    .line 459
    :goto_0
    return-void

    .line 451
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 456
    const-string v0, "MicroMsg.BindLinkedInUI"

    const-string v1, "onActivityResult unknow request"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :pswitch_0
    const-string v2, "result_data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ret"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "limid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "liname"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "liurl"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "liswitch"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, "MicroMsg.BindLinkedInUI"

    const-string v1, "linkedin oauth ret is null, maybe canceled"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->sV(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "MicroMsg.BindLinkedInUI"

    const-string v4, "linkedin oauth bind failed ret %s "

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v3, v0, :cond_2

    sget v0, Lcom/tencent/mm/n;->bhU:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_2
    sget v0, Lcom/tencent/mm/n;->bhT:I

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "MicroMsg.BindLinkedInUI"

    const-string v1, "linkedin member id is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "MicroMsg.BindLinkedInUI"

    const-string v7, "%s, %s, %s, %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v1

    aput-object v5, v8, v0

    const/4 v9, 0x2

    aput-object v6, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    invoke-static {v3, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v3

    const v7, 0x46002

    invoke-virtual {v3, v7, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v3

    const v5, 0x46001

    invoke-virtual {v3, v5, v4}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v3

    const v4, 0x46003

    invoke-virtual {v3, v4, v6}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->sV(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_6

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->r(ZZ)V

    :cond_5
    invoke-direct {p0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->initData()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->LP()V

    sget v0, Lcom/tencent/mm/n;->bhR:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/bindlinkedin/c;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindlinkedin/c;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 451
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v3, 0x225

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 83
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v3, 0x226

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 85
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "qrcode_bundle"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIk:Z

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    const-string v3, "i"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->bUl:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    const-string v3, "n"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->bUm:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    const-string v3, "t"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIv:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    const-string v3, "o"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIw:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    const-string v3, "s"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIx:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    const-string v3, "r"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIy:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->bUl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->bUm:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIx:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIy:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 95
    :cond_0
    sget v0, Lcom/tencent/mm/n;->bhP:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Lcom/tencent/mm/ui/bindlinkedin/a;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/bindlinkedin/a;-><init>(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    invoke-static {p0, v0, v3, v2, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "oversea_entry"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIl:Z

    .line 108
    invoke-direct {p0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->initData()V

    .line 109
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIk:Z

    if-eqz v0, :cond_2

    .line 110
    iput-boolean v1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIj:Z

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->FR()V

    .line 114
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIm:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIh:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIi:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->bUl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iput-boolean v1, p0, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->gIn:Z

    .line 116
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->dF(Z)V

    .line 118
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 86
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x226

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 123
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x225

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 125
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 126
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 131
    return-void
.end method
