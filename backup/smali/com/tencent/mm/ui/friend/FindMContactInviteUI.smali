.class public Lcom/tencent/mm/ui/friend/FindMContactInviteUI;
.super Lcom/tencent/mm/ui/MMWizardActivity;
.source "SourceFile"


# instance fields
.field private cIo:Landroid/widget/ListView;

.field private cIr:Landroid/app/ProgressDialog;

.field private cPW:Landroid/widget/TextView;

.field private cyn:Lcom/tencent/mm/n/m;

.field private eaA:Ljava/lang/String;

.field private fnS:Landroid/view/View;

.field private grM:I

.field private grS:I

.field private hbf:Lcom/tencent/mm/modelfriend/p;

.field private hbg:Landroid/widget/TextView;

.field private hbh:Landroid/widget/TextView;

.field private hbi:Landroid/widget/TextView;

.field private hbj:Landroid/widget/TextView;

.field private hbk:Landroid/widget/Button;

.field private hbl:Ljava/util/List;

.field private hbm:Lcom/tencent/mm/modelfriend/v;

.field private hbo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMWizardActivity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIr:Landroid/app/ProgressDialog;

    .line 50
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cPW:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbg:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbh:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbi:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbj:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbk:Landroid/widget/Button;

    .line 57
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbo:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cyn:Lcom/tencent/mm/n/m;

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->grS:I

    .line 165
    new-instance v0, Lcom/tencent/mm/ui/friend/at;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/at;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbm:Lcom/tencent/mm/modelfriend/v;

    return-void
.end method

.method private Zz()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->eaA:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->SM()V

    .line 90
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->aFs()V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIr:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIr:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;Lcom/tencent/mm/n/m;)Lcom/tencent/mm/n/m;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cyn:Lcom/tencent/mm/n/m;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbl:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)Lcom/tencent/mm/modelfriend/p;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbf:Lcom/tencent/mm/modelfriend/p;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbl:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->grS:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V
    .locals 4
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->SM()V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbf:Lcom/tencent/mm/modelfriend/p;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/p;->zi()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->Zz()V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/tencent/mm/n;->bmf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/friend/az;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/friend/az;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    new-instance v3, Lcom/tencent/mm/ui/friend/ar;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/friend/ar;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIo:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->grM:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->Zz()V

    return-void
.end method

.method static synthetic m(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbo:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 203
    sget v0, Lcom/tencent/mm/i;->aBI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cPW:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cPW:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->brB:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    sget v0, Lcom/tencent/mm/i;->aBK:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIo:Landroid/widget/ListView;

    .line 208
    iget v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->grS:I

    if-eq v0, v5, :cond_1

    .line 209
    iget v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->grS:I

    if-ne v0, v2, :cond_1

    .line 219
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aUo:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->atz:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbg:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->atC:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbh:Landroid/widget/TextView;

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbi:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->atx:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbk:Landroid/widget/Button;

    .line 224
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbh:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bmi:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbi:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bmi:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbk:Landroid/widget/Button;

    sget v1, Lcom/tencent/mm/n;->bmh:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :goto_0
    new-instance v0, Lcom/tencent/mm/modelfriend/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbm:Lcom/tencent/mm/modelfriend/v;

    invoke-direct {v0, p0, v1, v5}, Lcom/tencent/mm/modelfriend/p;-><init>(Landroid/content/Context;Lcom/tencent/mm/modelfriend/v;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbf:Lcom/tencent/mm/modelfriend/p;

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbk:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/friend/au;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/au;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbj:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbj:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/friend/av;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/av;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbj:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIo:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIo:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbf:Lcom/tencent/mm/modelfriend/p;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIo:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/applet/a;

    invoke-direct {v1}, Lcom/tencent/mm/ui/applet/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 287
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIo:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/friend/aw;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/aw;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    sget v0, Lcom/tencent/mm/n;->bdY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/friend/ax;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/ax;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 307
    new-instance v0, Lcom/tencent/mm/ui/friend/ay;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/ay;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    .line 315
    return-void

    .line 229
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aUn:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->atz:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbg:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->atC:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbh:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbi:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->atx:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbk:Landroid/widget/Button;

    .line 234
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbh:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bml:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbi:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bmi:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbk:Landroid/widget/Button;

    sget v1, Lcom/tencent/mm/n;->bmg:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->fnS:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBE:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbj:Landroid/widget/TextView;

    goto/16 :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 162
    sget v0, Lcom/tencent/mm/k;->aUm:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v0, Lcom/tencent/mm/n;->bmk:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->mn(I)V

    .line 68
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/d;->nJ()V

    .line 70
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_ticket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbo:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "login_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->grM:I

    .line 72
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_NextStyle"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->grS:I

    .line 73
    invoke-static {}, Lcom/tencent/mm/plugin/a/b;->FL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->eaA:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->FR()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cyn:Lcom/tencent/mm/n/m;

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1b0

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cyn:Lcom/tencent/mm/n/m;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cyn:Lcom/tencent/mm/n/m;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbf:Lcom/tencent/mm/modelfriend/p;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbf:Lcom/tencent/mm/modelfriend/p;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/p;->detach()V

    .line 156
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->As()V

    .line 157
    invoke-super {p0}, Lcom/tencent/mm/ui/MMWizardActivity;->onDestroy()V

    .line 158
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->Zz()V

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-super {p0}, Lcom/tencent/mm/ui/MMWizardActivity;->onPause()V

    .line 137
    iget v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->grM:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
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

    const-string v1, ",R300_400_QQ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R300_400_QQ"

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

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
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

    const-string v1, ",R300_400_phone,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R300_400_phone"

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
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-super {p0}, Lcom/tencent/mm/ui/MMWizardActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->hbf:Lcom/tencent/mm/modelfriend/p;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/p;->notifyDataSetChanged()V

    .line 97
    iget v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->grM:I

    if-ne v0, v3, :cond_0

    .line 98
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

    const-string v1, ",R300_400_QQ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R300_400_QQ"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->brD:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/friend/aq;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/friend/aq;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FindMContactInviteUI;->cIr:Landroid/app/ProgressDialog;

    .line 112
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/friend/as;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/as;-><init>(Lcom/tencent/mm/ui/friend/FindMContactInviteUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->a(Lcom/tencent/mm/sdk/platformtools/ar;)I

    .line 132
    return-void

    .line 101
    :cond_0
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

    const-string v1, ",R300_400_phone,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R300_400_phone"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    goto :goto_0
.end method
