.class public Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/plugin/wallet/ui/l;


# instance fields
.field private bPv:Ljava/lang/String;

.field private dID:Landroid/app/Dialog;

.field private eWh:I

.field private eWi:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eWj:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eWk:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eWl:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eWm:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWh:I

    .line 42
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    .line 43
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->dID:Landroid/app/Dialog;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->bPv:Ljava/lang/String;

    return-void
.end method

.method private UW()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 281
    const/4 v0, 0x1

    .line 283
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWi:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UR()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWk:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UR()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWj:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UR()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 292
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWl:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UR()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 295
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWm:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UR()Z

    move-result v2

    if-nez v2, :cond_4

    .line 300
    :goto_0
    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->dg(Z)V

    .line 301
    return v1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->dID:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;Lcom/tencent/mm/plugin/wallet/protocal/b;)Lcom/tencent/mm/plugin/wallet/protocal/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->anc()V

    return-void
.end method

.method private anc()V
    .locals 4

    .prologue
    .line 319
    sget v0, Lcom/tencent/mm/n;->bdc:I

    .line 320
    iget v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWh:I

    if-nez v1, :cond_0

    .line 321
    sget v0, Lcom/tencent/mm/n;->bdb:I

    .line 323
    :cond_0
    sget v1, Lcom/tencent/mm/n;->ber:I

    new-instance v2, Lcom/tencent/mm/plugin/wallet/address/ui/h;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/h;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 329
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->UW()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWh:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)Lcom/tencent/mm/plugin/wallet/protocal/b;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWi:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWj:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWk:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWl:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWm:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->bPv:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final FR()V
    .locals 3

    .prologue
    .line 67
    sget v0, Lcom/tencent/mm/i;->aQU:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;

    .line 68
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;->aoI()V

    .line 70
    sget v0, Lcom/tencent/mm/i;->alf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWi:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 71
    sget v0, Lcom/tencent/mm/i;->alc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWj:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 72
    sget v0, Lcom/tencent/mm/i;->ald:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWk:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 73
    sget v0, Lcom/tencent/mm/i;->ali:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWl:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 74
    sget v0, Lcom/tencent/mm/i;->alh:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWm:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWi:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWj:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWk:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWl:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWm:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWi:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    sget v1, Lcom/tencent/mm/h;->afL:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->jN(I)V

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWk:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    sget v1, Lcom/tencent/mm/h;->afL:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->jN(I)V

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWl:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    sget v1, Lcom/tencent/mm/h;->afL:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->jN(I)V

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWm:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    sget v1, Lcom/tencent/mm/h;->afL:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->jN(I)V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWj:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/a;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/a;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWh:I

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWh:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/address/model/i;->jz(I)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWi:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWj:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWk:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWl:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWm:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWn:Lcom/tencent/mm/plugin/wallet/protocal/b;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 113
    :cond_0
    new-instance v0, Lcom/tencent/mm/plugin/wallet/address/ui/b;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/b;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 122
    sget v0, Lcom/tencent/mm/n;->bei:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/c;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/c;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)V

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 192
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->UW()Z

    .line 193
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 236
    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 237
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anY()Lcom/tencent/mm/plugin/wallet/address/model/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/address/model/i;->amX()Lcom/tencent/mm/plugin/wallet/protocal/a;

    move-result-object v0

    .line 238
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->setResult(I)V

    .line 239
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/a;->fcT:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 240
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/protocal/a;->fcT:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/protocal/b;

    .line 241
    if-eqz v0, :cond_1

    .line 242
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 243
    const-string v2, "nationalCode"

    iget-object v3, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v2, "userName"

    iget-object v3, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v2, "telNumber"

    iget-object v3, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fdb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v2, "addressPostalCode"

    iget-object v3, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v2, "proviceFirstStageName"

    iget-object v3, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v2, "addressCitySecondStageName"

    iget-object v3, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v2, "addressCountiesThirdStageName"

    iget-object v3, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v2, "addressDetailInfo"

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->setResult(ILandroid/content/Intent;)V

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->finish()V

    .line 278
    :goto_0
    return-void

    .line 256
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 268
    sget v0, Lcom/tencent/mm/n;->bcW:I

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/g;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/g;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)V

    invoke-static {p0, v0, v2, v2, v1}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 258
    :pswitch_0
    sget v0, Lcom/tencent/mm/n;->bcY:I

    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/f;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/f;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)V

    invoke-static {p0, v0, v2, v2, v1}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch -0xc1c
        :pswitch_0
    .end packed-switch
.end method

.method public final aN(Z)V
    .locals 0
    .parameter

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->UW()Z

    .line 307
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 228
    sget v0, Lcom/tencent/mm/k;->bbo:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 206
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 207
    const-string v0, "karea_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    const-string v1, "MicroMsg.WalletAddAddressUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AREA_RESULT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWj:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 213
    :cond_1
    const-string v0, "kpost_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 215
    const-string v1, "MicroMsg.WalletAddAddressUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "post:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWl:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 218
    :cond_2
    const-string v0, "kwcode"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->bPv:Ljava/lang/String;

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x19f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 51
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 52
    const-string v0, "MicroMsg.WalletAddAddressUI"

    const-string v1, "index Oncreate"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/aa;->lH(I)V

    .line 55
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "address_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWh:I

    .line 56
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->eWh:I

    if-nez v0, :cond_0

    .line 57
    sget v0, Lcom/tencent/mm/n;->bcZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->mn(I)V

    .line 61
    :goto_0
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/e/b;->b(Lcom/tencent/mm/ui/MMActivity;)V

    .line 62
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->FR()V

    .line 63
    return-void

    .line 59
    :cond_0
    sget v0, Lcom/tencent/mm/n;->bdf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->mn(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 198
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x19f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 199
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 200
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 311
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->anc()V

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
