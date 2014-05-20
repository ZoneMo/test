.class public Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private dID:Landroid/app/Dialog;

.field private eHV:Landroid/widget/ListView;

.field private eWA:Z

.field private eWv:Ljava/util/List;

.field private eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

.field private eWx:Lcom/tencent/mm/plugin/wallet/address/ui/s;

.field private eWy:Landroid/view/View;

.field private eWz:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWv:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->dID:Landroid/app/Dialog;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWz:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWA:Z

    .line 267
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->dID:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;Lcom/tencent/mm/plugin/wallet/protocal/b;)Lcom/tencent/mm/plugin/wallet/protocal/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWz:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "address_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private ane()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWz:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->amX()Lcom/tencent/mm/plugin/wallet/protocal/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/protocal/a;->fcT:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWv:Ljava/util/List;

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWx:Lcom/tencent/mm/plugin/wallet/address/ui/s;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWv:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/address/ui/s;->ai(Ljava/util/List;)V

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eHV:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 113
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWx:Lcom/tencent/mm/plugin/wallet/address/ui/s;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/wallet/address/ui/s;->jA(I)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    .line 115
    invoke-virtual {p0, v4}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->dh(Z)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWy:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWx:Lcom/tencent/mm/plugin/wallet/address/ui/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/address/ui/s;->notifyDataSetChanged()V

    .line 126
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 118
    :cond_0
    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->dh(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWv:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWA:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Lcom/tencent/mm/plugin/wallet/protocal/b;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Lcom/tencent/mm/plugin/wallet/address/ui/s;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWx:Lcom/tencent/mm/plugin/wallet/address/ui/s;

    return-object v0
.end method


# virtual methods
.method public final FR()V
    .locals 3

    .prologue
    .line 131
    sget v0, Lcom/tencent/mm/i;->aJF:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eHV:Landroid/widget/ListView;

    .line 133
    new-instance v0, Lcom/tencent/mm/plugin/wallet/address/ui/s;

    invoke-direct {v0, p0, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/s;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWx:Lcom/tencent/mm/plugin/wallet/address/ui/s;

    .line 135
    sget v0, Lcom/tencent/mm/k;->bbp:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWy:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWy:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->alb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWy:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->alg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bcX:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eHV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWy:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eHV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWx:Lcom/tencent/mm/plugin/wallet/address/ui/s;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eHV:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/k;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/k;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eHV:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/l;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/l;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 221
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->ane()V

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWy:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/o;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/o;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWx:Lcom/tencent/mm/plugin/wallet/address/ui/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/address/ui/s;->notifyDataSetChanged()V

    .line 233
    new-instance v0, Lcom/tencent/mm/plugin/wallet/address/ui/p;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/p;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 243
    sget v0, Lcom/tencent/mm/n;->bdY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/q;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/q;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)V

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 260
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 356
    :cond_0
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 357
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x1a1

    if-ne v0, v1, :cond_1

    move-object v0, p4

    .line 358
    check-cast v0, Lcom/tencent/mm/plugin/wallet/address/model/b;

    .line 359
    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/address/model/b;->eVW:Z

    if-eqz v0, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->ane()V

    .line 361
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_1
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_3

    move-object v0, p4

    .line 385
    check-cast v0, Lcom/tencent/mm/plugin/wallet/address/model/c;

    .line 386
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/address/model/c;->amW()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->jz(I)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_2

    .line 388
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->a(Lcom/tencent/mm/plugin/wallet/protocal/b;)Z

    move-result v0

    .line 389
    const-string v1, "MicroMsg.WalletSelectAddrUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delte addr "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->ane()V

    .line 394
    :cond_3
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x1a3

    if-ne v0, v1, :cond_4

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    if-eqz v0, :cond_4

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    const-string v1, "nationalCode"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, "userName"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "telNumber"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "addressPostalCode"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "proviceFirstStageName"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "addressCitySecondStageName"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v1, "addressCountiesThirdStageName"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v1, "addressDetailInfo"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWw:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->setResult(ILandroid/content/Intent;)V

    .line 407
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->finish()V

    .line 411
    :cond_4
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 264
    sget v0, Lcom/tencent/mm/k;->bbq:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    const-string v1, "launch_from_webview"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->eWA:Z

    .line 67
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->getContentView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_0
    sget v1, Lcom/tencent/mm/n;->bdj:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->mn(I)V

    .line 71
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/e/b;->b(Lcom/tencent/mm/ui/MMActivity;)V

    .line 72
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    const/16 v2, 0x1a1

    invoke-virtual {v1, v2, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 73
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    const/16 v2, 0x1a0

    invoke-virtual {v1, v2, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 74
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    const/16 v2, 0x1a3

    invoke-virtual {v1, v2, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 75
    const-string v1, "req_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "req_app_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v2, Lcom/tencent/mm/plugin/wallet/address/model/b;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v0, v3}, Lcom/tencent/mm/plugin/wallet/address/model/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 80
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->aal()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/j;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/j;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)V

    invoke-static {v0, v4, v1}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->dID:Landroid/app/Dialog;

    .line 86
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->FR()V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 92
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 93
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 94
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->ane()V

    .line 101
    return-void
.end method
