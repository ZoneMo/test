.class public Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/plugin/backup/model/z;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private cMA:J

.field private cMt:Landroid/widget/TextView;

.field private cMu:Landroid/widget/ProgressBar;

.field private cNA:I

.field private cNB:Landroid/widget/ProgressBar;

.field private cNC:Landroid/widget/TextView;

.field private cND:Z

.field private cNE:I

.field private cNs:Landroid/widget/LinearLayout;

.field private cNt:Landroid/widget/LinearLayout;

.field private cNu:Landroid/widget/ImageView;

.field private cNv:Landroid/widget/LinearLayout;

.field private cNw:Landroid/widget/ProgressBar;

.field private cNx:Landroid/widget/TextView;

.field private cNy:Landroid/widget/Button;

.field private cNz:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "MicroMsg.BakChatuploadingUI"

    sput-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNA:I

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cND:Z

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNE:I

    .line 350
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMA:J

    return-void
.end method

.method private HU()V
    .locals 3

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cND:Z

    if-eqz v0, :cond_0

    .line 277
    const v0, 0x7f070361

    new-instance v1, Lcom/tencent/mm/plugin/backup/ui/be;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/ui/be;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    new-instance v2, Lcom/tencent/mm/plugin/backup/ui/bf;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/backup/ui/bf;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/backup/ui/a;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->HV()V

    goto :goto_0
.end method

.method private HV()V
    .locals 2

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->startActivity(Landroid/content/Intent;)V

    .line 305
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->finish()V

    .line 306
    return-void
.end method

.method private In()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->GH()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNu:Landroid/widget/ImageView;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNy:Landroid/widget/Button;

    const v1, 0x7f070363

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNz:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNu:Landroid/widget/ImageView;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->Gz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNy:Landroid/widget/Button;

    const v1, 0x7f070366

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNy:Landroid/widget/Button;

    const v1, 0x7f070365

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private Io()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 330
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNz:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNv:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    return-void
.end method

.method private Ip()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->de(Z)V

    .line 447
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->dh(Z)V

    .line 449
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "bak_usernames_list"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 451
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 452
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "needPwd"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 457
    if-eqz v8, :cond_4

    .line 458
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "keyHashCode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v6, v0

    .line 462
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "isSelectAll"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v2

    .line 463
    :goto_2
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/r;->GR()I

    move-result v3

    .line 464
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gt()[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 465
    :goto_3
    iget v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNE:I

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FE()J

    move-result-wide v1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/plugin/backup/model/q;->a(IJIII)V

    .line 467
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v6}, Lcom/tencent/mm/plugin/backup/model/l;->a(Ljava/util/LinkedList;ZI)V

    .line 473
    :goto_4
    return-void

    :cond_1
    move v4, v5

    .line 462
    goto :goto_2

    :cond_2
    move v5, v2

    .line 464
    goto :goto_3

    .line 469
    :cond_3
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->Gw()V

    .line 470
    sget-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->TAG:Ljava/lang/String;

    const-string v1, "continue to upload"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move v6, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->HU()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMu:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->In()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->HV()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cND:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNE:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->Ip()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iput v2, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNA:I

    .line 86
    const v0, 0x7f070344

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->mn(I)V

    .line 87
    new-instance v0, Lcom/tencent/mm/plugin/backup/ui/au;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/backup/ui/au;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 96
    const v0, 0x7f070341

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/backup/ui/az;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/ui/az;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 111
    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNs:Landroid/widget/LinearLayout;

    .line 113
    const v0, 0x7f0a00fc

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNB:Landroid/widget/ProgressBar;

    .line 115
    const v0, 0x7f0a00fd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNC:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNt:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f0a00ff

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNu:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0a0100

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNw:Landroid/widget/ProgressBar;

    .line 120
    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNx:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0a0105

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNv:Landroid/widget/LinearLayout;

    .line 122
    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNy:Landroid/widget/Button;

    .line 123
    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNz:Landroid/widget/Button;

    .line 124
    const v0, 0x7f0a0101

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMt:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0a00e7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMu:Landroid/widget/ProgressBar;

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNy:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/plugin/backup/ui/ba;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/ui/ba;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNz:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/plugin/backup/ui/bb;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/ui/bb;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method public final Hn()V
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->Io()V

    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->de(Z)V

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->dh(Z)V

    .line 385
    return-void
.end method

.method public final Ho()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method public final V(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intro_Switch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 390
    new-instance v1, Lcom/tencent/mm/plugin/backup/ui/bg;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/ui/bg;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    invoke-static {v1, p0, p1, p2, v0}, Lcom/tencent/mm/ui/cl;->a(Ljava/lang/Runnable;Lcom/tencent/mm/ui/MMActivity;IILandroid/content/Intent;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->In()V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 480
    new-instance v0, Lcom/tencent/mm/plugin/backup/ui/bi;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/backup/ui/bi;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Intro_Switch"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/tencent/mm/ui/cl;->a(Ljava/lang/Runnable;Lcom/tencent/mm/ui/MMActivity;IILandroid/content/Intent;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x145

    if-ne v0, v1, :cond_0

    .line 501
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cND:Z

    .line 503
    if-nez p1, :cond_2

    if-eqz p2, :cond_4

    .line 504
    :cond_2
    sget-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u8be2\u670d\u52a1\u5668\u9519\u8bef\uff01"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 507
    const v0, 0x7f070348

    new-instance v1, Lcom/tencent/mm/plugin/backup/ui/bk;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/ui/bk;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    new-instance v2, Lcom/tencent/mm/plugin/backup/ui/av;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/backup/ui/av;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/backup/ui/a;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070343

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/plugin/backup/ui/aw;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/backup/ui/aw;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/x;->setCancelable(Z)V

    goto :goto_0

    .line 536
    :cond_4
    check-cast p4, Lcom/tencent/mm/plugin/backup/b/e;

    .line 538
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/backup/b/e;->HM()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 539
    const v0, 0x7f070347

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/mm/plugin/backup/ui/ax;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/backup/ui/ax;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    new-instance v3, Lcom/tencent/mm/plugin/backup/ui/ay;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/backup/ui/ay;-><init>(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 560
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/x;->setCanceledOnTouchOutside(Z)V

    .line 561
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/x;->setCancelable(Z)V

    goto :goto_0

    .line 565
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNE:I

    .line 567
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->Ip()V

    .line 568
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->In()V

    goto :goto_0
.end method

.method public final b(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 353
    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNw:Landroid/widget/ProgressBar;

    if-nez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    cmp-long v2, p1, p3

    if-lez v2, :cond_2

    .line 357
    const-wide/16 v2, 0x1

    sub-long p1, p3, v2

    .line 360
    :cond_2
    cmp-long v2, p3, v0

    if-eqz v2, :cond_3

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    :cond_3
    long-to-int v0, v0

    .line 361
    iget v1, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNA:I

    if-le v0, v1, :cond_0

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMA:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 363
    sget-object v1, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offset"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalLen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMA:J

    .line 366
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNw:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 367
    iput v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNA:I

    .line 368
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNx:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 578
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f030042

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f07036a

    const v7, 0x7f070369

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    sget-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x145

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 181
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/backup/model/l;->a(Lcom/tencent/mm/plugin/backup/model/z;)V

    .line 187
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->FR()V

    .line 190
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isContinue"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lcom/tencent/mm/plugin/backup/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FE()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/plugin/backup/b/e;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNy:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNz:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cNv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->de(Z)V

    .line 197
    invoke-virtual {p0, v4}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->dh(Z)V

    .line 199
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->Gz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMt:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 234
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMt:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 207
    :cond_1
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cND:Z

    .line 209
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->GH()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->Io()V

    .line 212
    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->de(Z)V

    .line 214
    invoke-virtual {p0, v4}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->dh(Z)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0, v4}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->de(Z)V

    .line 221
    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->dh(Z)V

    .line 223
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->In()V

    .line 224
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->Gz()Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->Ip()V

    .line 227
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMt:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMu:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMt:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->cMu:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->getOffset()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/backup/model/l;->vR()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->b(JJ)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x145

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 241
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/backup/model/l;->b(Lcom/tencent/mm/plugin/backup/model/z;)V

    .line 243
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 268
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->HU()V

    .line 270
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 261
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->GH()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 262
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->GI()V

    .line 264
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadingUI;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 252
    return-void
.end method
