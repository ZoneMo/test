.class public Lcom/tencent/mm/ui/account/RegSetInfoUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cIr:Landroid/app/ProgressDialog;

.field private dGA:Landroid/widget/Button;

.field private eLl:I

.field private fcj:Ljava/lang/String;

.field private gof:Lcom/tencent/mm/ui/applet/SecurityImage;

.field private grN:Ljava/lang/String;

.field private gsB:Z

.field private gsR:Landroid/widget/EditText;

.field private gtB:Landroid/widget/EditText;

.field private gtC:Ljava/lang/String;

.field private gtD:Ljava/lang/String;

.field private gtE:I

.field private gtF:Ljava/lang/String;

.field private gtG:Landroid/widget/TextView;

.field private gtH:Landroid/view/View;

.field private gtI:Z

.field private gtJ:Landroid/widget/ImageView;

.field private gtK:I

.field private gtL:Ljava/util/LinkedList;

.field private gtM:Landroid/widget/ImageView;

.field private gtN:Landroid/widget/ImageView;

.field private gtO:Landroid/widget/ProgressBar;

.field private gtP:Ljava/lang/String;

.field private gtQ:Landroid/widget/ImageView;

.field private gtR:Landroid/view/View;

.field private gtS:Landroid/widget/TextView;

.field private gtT:Ljava/lang/String;

.field private gtU:Z

.field private gtV:Landroid/widget/PopupWindow;

.field private gtW:Landroid/view/View;

.field private gtX:Z

.field private gtY:Lcom/tencent/mm/sdk/platformtools/ay;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 79
    iput-object v2, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    .line 83
    iput v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    .line 89
    iput-object v2, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    .line 90
    iput-boolean v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtI:Z

    .line 92
    iput-boolean v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsB:Z

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtK:I

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtL:Ljava/util/LinkedList;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtP:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtT:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtU:Z

    .line 109
    iput-boolean v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtX:Z

    .line 110
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/account/jg;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/jg;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtY:Lcom/tencent/mm/sdk/platformtools/ay;

    return-void
.end method

.method static synthetic A(Lcom/tencent/mm/ui/account/RegSetInfoUI;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtE:I

    return v0
.end method

.method static synthetic B(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Lcom/tencent/mm/ui/applet/SecurityImage;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    return-object v0
.end method

.method static synthetic E(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtI:Z

    return v0
.end method

.method static synthetic F(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Lcom/tencent/mm/ui/applet/SecurityImage;
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    return-object v0
.end method

.method private Zz()V
    .locals 4

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->SM()V

    .line 1048
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    sget v0, Lcom/tencent/mm/n;->bvX:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/account/ke;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/ke;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    new-instance v3, Lcom/tencent/mm/ui/account/kg;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/account/kg;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 1139
    :goto_0
    return-void

    .line 1070
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    sget v0, Lcom/tencent/mm/n;->bvW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/account/kh;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/kh;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    new-instance v3, Lcom/tencent/mm/ui/account/ki;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/account/ki;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 1090
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 1091
    sget v0, Lcom/tencent/mm/n;->bvW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/account/kj;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/kj;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    new-instance v3, Lcom/tencent/mm/ui/account/kk;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/account/kk;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 1090
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1110
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGh()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1111
    sget v0, Lcom/tencent/mm/n;->bvW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/account/kl;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/kl;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    new-instance v3, Lcom/tencent/mm/ui/account/km;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/account/km;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 1131
    :cond_4
    const-string v0, "R200_100"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 1133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/account/mobile/MobileInputUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1134
    const-string v1, "mobile_input_purpose"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1135
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1136
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->startActivity(Landroid/content/Intent;)V

    .line 1137
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/account/RegSetInfoUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/account/RegSetInfoUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtP:Ljava/lang/String;

    return-object p1
.end method

.method private aGb()Z
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtN:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtU:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aGc()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsR:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->dGA:Landroid/widget/Button;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 561
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aGd()Z
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtK:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aGe()Z
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtK:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aGf()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 594
    iget v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aGg()Z
    .locals 2

    .prologue
    .line 598
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aGh()Z
    .locals 2

    .prologue
    .line 606
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aGi()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 610
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    const/4 v0, 0x4

    .line 617
    :cond_0
    :goto_0
    return v0

    .line 612
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private aGj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtC:Ljava/lang/String;

    .line 627
    :goto_0
    return-object v0

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtD:Ljava/lang/String;

    goto :goto_0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtF:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsR:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/account/RegSetInfoUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->grN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGb()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGe()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/account/RegSetInfoUI;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGi()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->grN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtO:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtJ:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i(IILjava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 988
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Lcom/tencent/mm/pluginsdk/d;->b(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1032
    :goto_0
    return v0

    .line 992
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1032
    const/4 v0, 0x0

    goto :goto_0

    .line 995
    :sswitch_0
    sget v0, Lcom/tencent/mm/n;->buV:I

    sget v2, Lcom/tencent/mm/n;->buW:I

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    .line 996
    goto :goto_0

    .line 999
    :sswitch_1
    sget v0, Lcom/tencent/mm/n;->bdo:I

    sget v2, Lcom/tencent/mm/n;->buW:I

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    .line 1000
    goto :goto_0

    .line 1002
    :sswitch_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uH()V

    .line 1003
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/protocal/j;->awH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v3, Lcom/tencent/mm/n;->bqs:I

    invoke-static {v0, v3}, Lcom/tencent/mm/an/a;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aal()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/account/kc;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/account/kc;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    new-instance v5, Lcom/tencent/mm/ui/account/kd;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/account/kd;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-static {v2, v0, v3, v4, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    .line 1017
    goto :goto_0

    .line 1003
    :cond_1
    invoke-static {}, Lcom/tencent/mm/protocal/j;->awH()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1020
    :sswitch_3
    invoke-static {p3}, Lcom/tencent/mm/d/a;->be(Ljava/lang/String;)Lcom/tencent/mm/d/a;

    move-result-object v0

    .line 1021
    if-eqz v0, :cond_2

    .line 1022
    invoke-virtual {v0, p0, v3, v3}, Lcom/tencent/mm/d/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    :goto_2
    move v0, v1

    .line 1026
    goto :goto_0

    .line 1024
    :cond_2
    sget v0, Lcom/tencent/mm/n;->bwc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_2

    .line 992
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_2
        -0x4b -> :sswitch_1
        -0x30 -> :sswitch_3
        -0xa -> :sswitch_0
        -0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic j(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsB:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsB:Z

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtQ:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtY:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGc()V

    return-void
.end method

.method static synthetic o(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtM:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtX:Z

    return v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V
    .locals 15
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsR:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget v0, Lcom/tencent/mm/n;->bEc:I

    sget v1, Lcom/tencent/mm/n;->bvG:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtO:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    sget v0, Lcom/tencent/mm/n;->bvS:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/tencent/mm/ui/account/jl;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/jl;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGb()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGe()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v9}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/tencent/mm/n;->bwd:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtT:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/tencent/mm/n;->bwf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtT:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->SM()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGe()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtL:Ljava/util/LinkedList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x0

    move v14, v0

    :goto_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGi()I

    move-result v8

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelsimple/ad;

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->fcj:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtE:I

    iget-object v5, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtD:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtC:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->grN:Ljava/lang/String;

    const-string v10, ""

    const-string v11, ""

    iget-boolean v12, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtI:Z

    iget-boolean v13, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsB:Z

    invoke-direct/range {v0 .. v13}, Lcom/tencent/mm/modelsimple/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v14}, Lcom/tencent/mm/modelsimple/ad;->dT(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->bvS:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/account/jm;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/account/jm;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;Lcom/tencent/mm/modelsimple/ad;)V

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtL:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v14, v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x2

    move v14, v0

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGi()I

    move-result v8

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelsimple/ad;

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->fcj:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtE:I

    iget-object v5, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtD:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtC:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->grN:Ljava/lang/String;

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    iget-boolean v12, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtI:Z

    iget-boolean v13, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsB:Z

    invoke-direct/range {v0 .. v13}, Lcom/tencent/mm/modelsimple/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->bvS:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/account/jn;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/account/jn;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;Lcom/tencent/mm/modelsimple/ad;)V

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    goto/16 :goto_0
.end method

.method private q(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, v0

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtN:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    sget v1, Lcom/tencent/mm/h;->aiz:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    iget-object v2, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtN:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtU:Z

    .line 551
    return-void

    .line 548
    :cond_2
    sget v1, Lcom/tencent/mm/h;->aiw:I

    goto :goto_0

    .line 549
    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method

.method static synthetic r(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtX:Z

    return v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtG:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->q(ZZ)V

    return-void
.end method

.method static synthetic u(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtV:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtV:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->Zz()V

    return-void
.end method

.method static synthetic y(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/d;->e(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic z(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->fcj:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 214
    sget v0, Lcom/tencent/mm/i;->aEh:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtW:Landroid/view/View;

    .line 215
    sget v0, Lcom/tencent/mm/i;->aJd:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtR:Landroid/view/View;

    .line 216
    sget v0, Lcom/tencent/mm/i;->aJc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtJ:Landroid/widget/ImageView;

    .line 217
    sget v0, Lcom/tencent/mm/i;->aGX:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsR:Landroid/widget/EditText;

    .line 218
    sget v0, Lcom/tencent/mm/i;->aJf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtS:Landroid/widget/TextView;

    .line 219
    sget v0, Lcom/tencent/mm/i;->aHb:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    .line 220
    sget v0, Lcom/tencent/mm/i;->amc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtG:Landroid/widget/TextView;

    .line 221
    sget v0, Lcom/tencent/mm/i;->aHn:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtH:Landroid/view/View;

    .line 222
    sget v0, Lcom/tencent/mm/i;->aCP:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtM:Landroid/widget/ImageView;

    .line 223
    sget v0, Lcom/tencent/mm/i;->aRf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtN:Landroid/widget/ImageView;

    .line 224
    sget v0, Lcom/tencent/mm/i;->aEB:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtO:Landroid/widget/ProgressBar;

    .line 225
    sget v0, Lcom/tencent/mm/i;->aJe:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtQ:Landroid/widget/ImageView;

    .line 226
    sget v0, Lcom/tencent/mm/i;->aCN:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->dGA:Landroid/widget/Button;

    .line 227
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtM:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtN:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtO:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iput-boolean v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsB:Z

    .line 232
    iput-boolean v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtU:Z

    .line 233
    iget-object v3, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtR:Landroid/view/View;

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGd()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v3, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtH:Landroid/view/View;

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGe()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtG:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGe()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGd()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtS:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bwb:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_3
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/account/kf;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/kf;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->a(Lcom/tencent/mm/sdk/platformtools/ar;)I

    .line 288
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsR:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/kn;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/kn;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 331
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->dGA:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/account/ko;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/ko;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/kp;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/kp;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 350
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/kq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/kq;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 395
    new-instance v0, Lcom/tencent/mm/ui/account/ks;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/account/ks;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsR:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/kt;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/kt;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 416
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsR:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/jh;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/jh;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 429
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/ji;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/ji;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 441
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/jj;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/jj;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 454
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtJ:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/account/jk;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/jk;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/mm/storage/h;->ggB:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGc()V

    .line 468
    return-void

    :cond_1
    move v0, v2

    .line 233
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 234
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 235
    goto/16 :goto_2

    .line 239
    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGd()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGe()Z

    move-result v0

    if-nez v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtS:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bvZ:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 241
    :cond_5
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGd()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGe()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtS:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bwa:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtS:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bvY:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 633
    const-string v0, "MiroMsg.RegSetInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd: errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_7

    .line 635
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 636
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    .line 640
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtT:Ljava/lang/String;

    .line 643
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aGj()Ljava/lang/String;

    move-result-object v7

    move-object v0, p4

    .line 644
    check-cast v0, Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/ad;->Cy()Ljava/lang/String;

    move-result-object v8

    move-object v0, p4

    .line 645
    check-cast v0, Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/ad;->Cz()I

    move-result v9

    .line 646
    invoke-static {}, Lcom/tencent/mm/model/be;->uI()V

    .line 647
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/model/be;->P(Z)V

    .line 648
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsB:Z

    if-eqz v0, :cond_3

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/storage/h;->ggB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.avatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/storage/h;->ggB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.avatar.hd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 652
    invoke-static {v5}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 653
    const/16 v1, 0x60

    const/16 v2, 0x60

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/lang/String;IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Z)Z

    .line 655
    new-instance v10, Lcom/tencent/mm/pluginsdk/model/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/storage/h;->ggB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.avatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, p0, v0}, Lcom/tencent/mm/pluginsdk/model/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 656
    new-instance v0, Lcom/tencent/mm/ui/account/jo;

    move-object v1, p0

    move-object v2, p4

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/account/jo;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;Lcom/tencent/mm/n/x;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/tencent/mm/ui/account/jp;

    move-object v2, p0

    move-object v3, p4

    move-object v4, v7

    move-object v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/account/jp;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;Lcom/tencent/mm/n/x;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0, v1}, Lcom/tencent/mm/pluginsdk/model/k;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    .line 754
    :cond_1
    :goto_0
    const/4 v0, -0x6

    if-ne p2, v0, :cond_6

    .line 755
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    if-nez v0, :cond_5

    .line 756
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bvU:I

    const/4 v2, 0x0

    move-object v3, p4

    check-cast v3, Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v3}, Lcom/tencent/mm/modelsimple/ad;->zR()[B

    move-result-object v3

    move-object v4, p4

    check-cast v4, Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v4}, Lcom/tencent/mm/modelsimple/ad;->zS()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    new-instance v6, Lcom/tencent/mm/ui/account/jq;

    invoke-direct {v6, p0, p4}, Lcom/tencent/mm/ui/account/jq;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;Lcom/tencent/mm/n/x;)V

    const/4 v7, 0x0

    new-instance v8, Lcom/tencent/mm/ui/account/jt;

    invoke-direct {v8, p0}, Lcom/tencent/mm/ui/account/jt;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    new-instance v9, Lcom/tencent/mm/ui/account/ju;

    invoke-direct {v9, p0, p4}, Lcom/tencent/mm/ui/account/ju;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;Lcom/tencent/mm/n/x;)V

    invoke-static/range {v0 .. v9}, Lcom/tencent/mm/ui/applet/i;->a(Landroid/content/Context;IZ[BLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/tencent/mm/ui/applet/n;)Lcom/tencent/mm/ui/applet/SecurityImage;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    .line 951
    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v0, p4

    .line 722
    check-cast v0, Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/ad;->Cx()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->grN:Ljava/lang/String;

    .line 725
    sget-object v0, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v1, "login_user_name"

    invoke-virtual {v0, v1, v7}, Lcom/tencent/mm/model/bd;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    if-eqz v8, :cond_4

    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 728
    const-string v0, "R300_100_phone"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/bindmobile/FindMContactIntroUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 730
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 731
    const-string v1, "regsetinfo_ticket"

    iget-object v2, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->grN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v1, "regsetinfo_NextStep"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v1, "regsetinfo_NextStyle"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    sget-object v1, Lcom/tencent/mm/plugin/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    invoke-interface {v1, p0}, Lcom/tencent/mm/pluginsdk/e;->w(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 735
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 736
    const-string v2, "LauncherUI.enter_from_reg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/MMWizardActivity;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    .line 738
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->finish()V

    goto/16 :goto_0

    .line 740
    :cond_4
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/e;->w(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 741
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 742
    const-string v1, "LauncherUI.enter_from_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 743
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->startActivity(Landroid/content/Intent;)V

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R200_900_phone,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R200_900_phone"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->if(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->finish()V

    goto/16 :goto_0

    .line 811
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    const/4 v2, 0x0

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/ad;->zR()[B

    move-result-object v0

    check-cast p4, Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/ad;->zS()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/mm/ui/applet/SecurityImage;->b(Z[BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 817
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->i(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 823
    :cond_7
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_15

    .line 824
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1ad

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 825
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_8

    .line 826
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->cIr:Landroid/app/ProgressDialog;

    .line 829
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtO:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 830
    if-nez p1, :cond_12

    if-nez p2, :cond_12

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtT:Ljava/lang/String;

    move-object v0, p4

    .line 832
    check-cast v0, Lcom/tencent/mm/modelfriend/an;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/an;->zQ()I

    move-result v0

    .line 833
    const-string v1, "MiroMsg.RegSetInfoUI"

    const-string v2, "UsernameRet %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    const/16 v1, -0xe

    if-eq v0, v1, :cond_9

    const/16 v1, -0xa

    if-eq v0, v1, :cond_9

    const/4 v1, -0x7

    if-ne v0, v1, :cond_f

    .line 835
    :cond_9
    check-cast p4, Lcom/tencent/mm/modelfriend/an;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/an;->zP()Ljava/util/LinkedList;

    move-result-object v3

    .line 836
    invoke-static {p3}, Lcom/tencent/mm/d/a;->be(Ljava/lang/String;)Lcom/tencent/mm/d/a;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_a

    .line 838
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtG:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/tencent/mm/d/a;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 841
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 842
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_b

    const/4 v0, 0x3

    move v1, v0

    .line 843
    :goto_2
    new-array v4, v1, [Ljava/lang/String;

    .line 844
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_c

    .line 845
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 846
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtL:Ljava/util/LinkedList;

    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 844
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 842
    :cond_b
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    move v1, v0

    goto :goto_2

    .line 848
    :cond_c
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtX:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtV:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtV:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtV:Landroid/widget/PopupWindow;

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtW:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/account/ka;

    invoke-direct {v1, p0, v4}, Lcom/tencent/mm/ui/account/ka;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;[Ljava/lang/String;)V

    invoke-static {p0, v0, v4, v1}, Lcom/tencent/mm/ui/account/fl;->a(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtV:Landroid/widget/PopupWindow;

    .line 850
    :cond_e
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->q(ZZ)V

    goto/16 :goto_1

    .line 853
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 855
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->q(ZZ)V

    goto/16 :goto_1

    .line 857
    :cond_10
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->q(ZZ)V

    .line 858
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtG:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bwd:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtV:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    .line 860
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtV:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtV:Landroid/widget/PopupWindow;

    .line 863
    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtB:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/jv;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/jv;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 875
    :cond_12
    const/4 v0, -0x6

    if-ne p2, v0, :cond_14

    .line 876
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    if-nez v0, :cond_13

    .line 877
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bvU:I

    const/4 v2, 0x0

    move-object v3, p4

    check-cast v3, Lcom/tencent/mm/modelfriend/an;

    invoke-virtual {v3}, Lcom/tencent/mm/modelfriend/an;->zR()[B

    move-result-object v3

    move-object v4, p4

    check-cast v4, Lcom/tencent/mm/modelfriend/an;

    invoke-virtual {v4}, Lcom/tencent/mm/modelfriend/an;->zS()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    new-instance v6, Lcom/tencent/mm/ui/account/jw;

    invoke-direct {v6, p0, p4}, Lcom/tencent/mm/ui/account/jw;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;Lcom/tencent/mm/n/x;)V

    const/4 v7, 0x0

    new-instance v8, Lcom/tencent/mm/ui/account/jy;

    invoke-direct {v8, p0}, Lcom/tencent/mm/ui/account/jy;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    new-instance v9, Lcom/tencent/mm/ui/account/jz;

    invoke-direct {v9, p0, p4}, Lcom/tencent/mm/ui/account/jz;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;Lcom/tencent/mm/n/x;)V

    invoke-static/range {v0 .. v9}, Lcom/tencent/mm/ui/applet/i;->a(Landroid/content/Context;IZ[BLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/tencent/mm/ui/applet/n;)Lcom/tencent/mm/ui/applet/SecurityImage;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    goto/16 :goto_1

    .line 933
    :cond_13
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    const/4 v2, 0x0

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/an;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/an;->zR()[B

    move-result-object v0

    check-cast p4, Lcom/tencent/mm/modelfriend/an;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/an;->zS()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/mm/ui/applet/SecurityImage;->b(Z[BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 937
    :cond_14
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->q(ZZ)V

    .line 940
    :cond_15
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->i(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 943
    const/16 v0, 0x8

    if-ne p1, v0, :cond_16

    .line 944
    sget v0, Lcom/tencent/mm/n;->bmE:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtT:Ljava/lang/String;

    .line 945
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 948
    :cond_16
    if-nez p1, :cond_17

    if-eqz p2, :cond_2

    .line 949
    :cond_17
    sget v0, Lcom/tencent/mm/n;->bnj:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 590
    sget v0, Lcom/tencent/mm/k;->aYH:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 577
    const-string v0, "MiroMsg.RegSetInfoUI"

    const-string v1, "onAcvityResult requestCode:%d, resultCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tencent/mm/pluginsdk/d;->a(Landroid/app/Activity;IILandroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_0

    .line 580
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtJ:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 581
    iput-boolean v5, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsB:Z

    .line 582
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 144
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    sget v0, Lcom/tencent/mm/n;->bwe:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-boolean v1, Lcom/tencent/mm/protocal/a;->fxu:Z

    if-eqz v1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/tencent/mm/n;->amt:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bdl:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->vT(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/d;->nJ()V

    .line 151
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtC:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_bind_email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtD:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_ticket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->grN:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_pwd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->fcj:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_binduin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtF:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtF:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtF:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/a/j;->aw(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtE:I

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "regsetinfo_ismobile"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    .line 160
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "regsetinfo_isForce"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtI:Z

    .line 161
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_NextControl"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtK:I

    .line 162
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->FR()V

    .line 163
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    if-ne v0, v2, :cond_3

    .line 164
    const-string v0, "R200_900_phone"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->id(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R200_900_phone,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R200_900_phone"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    .line 177
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gtX:Z

    .line 178
    return-void

    .line 168
    :cond_3
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 169
    const-string v0, "R4_QQ"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->id(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R4_QQ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R4_QQ"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_4
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    if-ne v0, v4, :cond_2

    .line 173
    const-string v0, "R200_900_email"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->id(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R200_900_email,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R200_900_email"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 198
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R200_900_phone,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R200_900_phone"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R4_QQ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R4_QQ"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->eLl:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R200_900_email,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R200_900_email"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1038
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->Zz()V

    .line 1040
    const/4 v0, 0x1

    .line 1042
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 182
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegSetInfoUI;->gsR:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/js;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/js;-><init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void
.end method
