.class public Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cIo:Landroid/widget/ListView;

.field private cIq:Landroid/view/View;

.field private cIr:Landroid/app/ProgressDialog;

.field private cIs:Ljava/lang/String;

.field private cPW:Landroid/widget/TextView;

.field private gJm:Lcom/tencent/mm/ui/bindmobile/ay;

.field private gJn:Lcom/tencent/mm/modelfriend/as;

.field private gpX:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    .line 67
    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cPW:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gpX:Landroid/widget/TextView;

    return-void
.end method

.method private Wt()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->brD:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/bindmobile/bb;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/bindmobile/bb;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindmobile/ay;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->N(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 97
    iput-object v4, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->N(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 104
    iput-object v4, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zc()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zx()Ljava/util/List;

    move-result-object v1

    .line 110
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    :cond_4
    new-instance v0, Lcom/tencent/mm/modelfriend/as;

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zc()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zx()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelfriend/as;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJn:Lcom/tencent/mm/modelfriend/as;

    .line 112
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJn:Lcom/tencent/mm/modelfriend/as;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0

    .line 114
    :cond_5
    new-instance v0, Lcom/tencent/mm/modelfriend/al;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/al;-><init>()V

    .line 115
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)Lcom/tencent/mm/modelfriend/as;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJn:Lcom/tencent/mm/modelfriend/as;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;Lcom/tencent/mm/modelfriend/h;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Contact_User"

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_Nick"

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_Mobile_MD5"

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->yK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_Alias"

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->rp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_Sex"

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->rk()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Contact_Signature"

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->rB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_RegionCode"

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->rC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/h;->rD()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/storage/RegionCodeDecoder;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_Scene"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Contact_ShowUserName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/tencent/mm/plugin/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    invoke-interface {v1, v0, p0}, Lcom/tencent/mm/pluginsdk/e;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)Lcom/tencent/mm/ui/bindmobile/ay;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 55
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zp()Lcom/tencent/mm/modelfriend/aa;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zp()Lcom/tencent/mm/modelfriend/aa;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crd:Lcom/tencent/mm/modelfriend/aa;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIq:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIq:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/bindmobile/bd;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/bd;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIo:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cPW:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindmobile/ay;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cPW:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIo:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIq:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cPW:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIo:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIq:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIo:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gpX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->Wt()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 7

    .prologue
    .line 151
    sget v0, Lcom/tencent/mm/i;->aBI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cPW:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cPW:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->brB:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    sget v0, Lcom/tencent/mm/i;->asK:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gpX:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gpX:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->brI:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    sget v0, Lcom/tencent/mm/i;->aBL:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIq:Landroid/view/View;

    .line 157
    sget v0, Lcom/tencent/mm/i;->aBK:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIo:Landroid/widget/ListView;

    .line 159
    new-instance v0, Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/eo;-><init>()V

    .line 160
    new-instance v1, Lcom/tencent/mm/ui/bindmobile/be;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/be;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/ez;)V

    .line 186
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    .line 188
    new-instance v0, Lcom/tencent/mm/ui/bindmobile/ay;

    new-instance v1, Lcom/tencent/mm/ui/bindmobile/bf;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/bf;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/bindmobile/ay;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/bd;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    .line 201
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIo:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIo:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/bindmobile/bg;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/bg;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    new-instance v1, Lcom/tencent/mm/ui/bindmobile/bh;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/bh;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bindmobile/ay;->a(Lcom/tencent/mm/ui/bindmobile/az;)V

    .line 241
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zp()Lcom/tencent/mm/modelfriend/aa;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zp()Lcom/tencent/mm/modelfriend/aa;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crd:Lcom/tencent/mm/modelfriend/aa;

    if-eq v0, v1, :cond_0

    .line 243
    sget v0, Lcom/tencent/mm/i;->aBL:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIq:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIq:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIq:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/bindmobile/bi;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/bi;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIo:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 255
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/bindmobile/bj;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bindmobile/bj;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 266
    new-instance v0, Lcom/tencent/mm/ui/bindmobile/bk;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bindmobile/bk;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    .line 275
    invoke-static {}, Lcom/tencent/mm/model/v;->tG()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    :cond_1
    sget v1, Lcom/tencent/mm/n;->beH:I

    sget v2, Lcom/tencent/mm/n;->ber:I

    sget v3, Lcom/tencent/mm/n;->bee:I

    sget v4, Lcom/tencent/mm/n;->bds:I

    new-instance v5, Lcom/tencent/mm/ui/bindmobile/bl;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/bindmobile/bl;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    new-instance v6, Lcom/tencent/mm/ui/bindmobile/bc;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/bindmobile/bc;-><init>(Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 296
    :cond_2
    return-void
.end method

.method public final FS()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bindmobile/ay;->ih(Ljava/lang/String;)V

    .line 376
    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x85

    const/16 v3, 0x20

    .line 327
    const-string v0, "MicroMsg.MobileFriendUI"

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

    .line 329
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 330
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 331
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    iput-object v5, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->cIr:Landroid/app/ProgressDialog;

    .line 337
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 338
    :cond_1
    const-string v0, "MicroMsg.MobileFriendUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd: errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_2
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 344
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 345
    new-instance v0, Lcom/tencent/mm/modelfriend/al;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/al;-><init>()V

    .line 346
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 359
    :cond_3
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 360
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 361
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelsimple/f;->W(Landroid/content/Context;)V

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/bindmobile/ay;->ca(Ljava/lang/String;)V

    .line 370
    :cond_5
    :goto_0
    return-void

    .line 367
    :cond_6
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 368
    sget v0, Lcom/tencent/mm/n;->brC:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/tencent/mm/k;->aXr:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v0, Lcom/tencent/mm/n;->brE:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->mn(I)V

    .line 75
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 76
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 77
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->FR()V

    .line 78
    invoke-direct {p0}, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->Wt()V

    .line 79
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 139
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindmobile/ay;->closeCursor()V

    .line 141
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 142
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;->gJm:Lcom/tencent/mm/ui/bindmobile/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindmobile/ay;->notifyDataSetChanged()V

    .line 128
    return-void
.end method
