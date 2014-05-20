.class public Lcom/tencent/mm/plugin/backup/ui/BakChatUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static cMY:I


# instance fields
.field private cMZ:Landroid/widget/LinearLayout;

.field private cNa:Landroid/widget/LinearLayout;

.field private cNb:Landroid/widget/LinearLayout;

.field private cNc:Landroid/widget/TextView;

.field private cNd:Z

.field private cxO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "MicroMsg.BakChatUI"

    sput-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cMY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cxO:Z

    .line 53
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNd:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->goBack()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cxO:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isContinue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cMZ:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadSelectUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNd:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/backup/ui/BakChatRecoveringUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isContinue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goBack()V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    const-string v1, "downloadUin"

    sget v2, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cMY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const/16 v1, 0x2710

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->setResult(ILandroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->finish()V

    .line 247
    return-void
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/plugin/backup/ui/BakChatRecoverCheckUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f07033f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->mn(I)V

    .line 105
    new-instance v0, Lcom/tencent/mm/plugin/backup/ui/af;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/backup/ui/af;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 114
    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cMZ:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNa:Landroid/widget/LinearLayout;

    .line 116
    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNb:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNa:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/mm/plugin/backup/ui/ag;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/ui/ag;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNb:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/mm/plugin/backup/ui/ai;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/ui/ai;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNc:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNc:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/plugin/backup/ui/ak;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/ui/ak;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 252
    const v0, 0x7f03003a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "downloadUin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cMY:I

    .line 62
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->FR()V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 234
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->goBack()V

    .line 236
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 76
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->GG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cxO:Z

    .line 78
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cxO:Z

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gl()Lcom/tencent/mm/plugin/backup/model/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ar;->GG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNd:Z

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cxO:Z

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 88
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cxO:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNd:Z

    if-eqz v0, :cond_2

    .line 89
    sget-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->TAG:Ljava/lang/String;

    const-string v1, "error state both uploading and downloading"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    return-void

    .line 84
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNd:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->cNa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method
