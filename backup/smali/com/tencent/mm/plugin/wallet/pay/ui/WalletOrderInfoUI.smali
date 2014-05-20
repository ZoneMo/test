.class public Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;
.super Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;
.source "SourceFile"


# instance fields
.field private dDm:Ljava/lang/String;

.field private dEo:Landroid/view/View$OnLongClickListener;

.field private dVs:Ljava/lang/String;

.field private daW:Landroid/widget/CheckBox;

.field private eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

.field private fbK:Landroid/widget/LinearLayout;

.field private fbL:Landroid/widget/TextView;

.field private fbM:Landroid/widget/RelativeLayout;

.field private fbN:Ljava/util/List;

.field private fbO:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

.field private fbP:Lcom/tencent/mm/model/au;

.field private fbQ:Landroid/view/View$OnClickListener;

.field private fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbK:Landroid/widget/LinearLayout;

    .line 72
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbM:Landroid/widget/RelativeLayout;

    .line 74
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    .line 76
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbO:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    .line 79
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->dVs:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->dDm:Ljava/lang/String;

    .line 267
    new-instance v0, Lcom/tencent/mm/plugin/wallet/pay/ui/m;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/m;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbP:Lcom/tencent/mm/model/au;

    .line 558
    new-instance v0, Lcom/tencent/mm/plugin/wallet/pay/ui/q;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/q;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbQ:Landroid/view/View$OnClickListener;

    .line 568
    new-instance v0, Lcom/tencent/mm/plugin/wallet/pay/ui/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/r;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->dEo:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->dDm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;Lcom/tencent/mm/storage/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->x(Lcom/tencent/mm/storage/i;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->dDm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->dEo:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbQ:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->dVs:Ljava/lang/String;

    return-object v0
.end method

.method private x(Lcom/tencent/mm/storage/i;)V
    .locals 4
    .parameter

    .prologue
    .line 279
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v1

    .line 281
    const-string v0, "MicroMsg.WalletOrderInfoUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call back from contactServer nickName "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " username: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    .line 284
    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCQ:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbO:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->notifyDataSetChanged()V

    .line 288
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->dVs:Ljava/lang/String;

    .line 290
    :cond_2
    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    sget v0, Lcom/tencent/mm/n;->bGz:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->mn(I)V

    .line 159
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->de(Z)V

    sget v0, Lcom/tencent/mm/n;->bdY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/ui/n;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/n;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 160
    sget v0, Lcom/tencent/mm/i;->aQD:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbK:Landroid/widget/LinearLayout;

    .line 161
    sget v0, Lcom/tencent/mm/i;->aQC:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    .line 162
    sget v0, Lcom/tencent/mm/i;->aQB:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbM:Landroid/widget/RelativeLayout;

    .line 163
    sget v0, Lcom/tencent/mm/i;->aQm:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 164
    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/s;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbO:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    .line 165
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbO:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    if-eqz v0, :cond_2

    .line 168
    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->crH:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->fba:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    .line 171
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    .line 172
    const-string v4, "1"

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCK:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 179
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbK:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    if-eqz v0, :cond_7

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faW:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_2
    :goto_2
    sget v0, Lcom/tencent/mm/i;->aQU:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 194
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    .line 195
    return-void

    .line 168
    :cond_3
    iget-object v0, v4, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faS:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/tencent/mm/i;->aQA:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v4, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    sget v0, Lcom/tencent/mm/i;->aQK:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v4, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->crH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/tencent/mm/i;->aQo:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/i;->aQn:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    iget v1, v4, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faU:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_3
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string v1, "MicroMsg.WalletOrderInfoUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkBox is check? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/ak;

    iget-object v5, v4, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->logoUrl:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/tencent/mm/plugin/wallet/ui/ak;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/ui/k;

    invoke-direct {v1, p0, v4, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/k;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;Lcom/tencent/mm/plugin/wallet/order/model/Orders;Landroid/widget/ImageView;)V

    invoke-static {v1}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/w;)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbK:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbM:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->eWV:I

    if-ne v0, v3, :cond_6

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bGw:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bGx:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bGy:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_8
    move v0, v3

    goto/16 :goto_1

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/plugin/wallet/c/a;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 591
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 592
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/order/model/a;

    if-eqz v0, :cond_3

    .line 593
    check-cast p4, Lcom/tencent/mm/plugin/wallet/order/model/a;

    .line 594
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/order/model/a;->aon()Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    move-result-object v0

    .line 595
    const-string v3, "MicroMsg.WalletOrderInfoUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Coomdity:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    if-eqz v0, :cond_0

    .line 597
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    .line 598
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    .line 600
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v4

    if-eqz v4, :cond_2

    .line 601
    invoke-direct {p0, v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->x(Lcom/tencent/mm/storage/i;)V

    .line 605
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbO:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->notifyDataSetChanged()V

    .line 606
    sget v0, Lcom/tencent/mm/i;->aPI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 637
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbO:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbO:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->notifyDataSetChanged()V

    .line 642
    :cond_1
    :goto_2
    return v2

    .line 603
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v3

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCQ:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbP:Lcom/tencent/mm/model/au;

    invoke-interface {v3, v0, v4}, Lcom/tencent/mm/model/at;->a(Ljava/lang/String;Lcom/tencent/mm/model/au;)V

    goto :goto_0

    .line 608
    :cond_3
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/pay/model/g;

    if-eqz v0, :cond_0

    .line 609
    check-cast p4, Lcom/tencent/mm/plugin/wallet/pay/model/g;

    .line 610
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/pay/model/g;->aow()Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    move-result-object v3

    .line 611
    if-eqz v3, :cond_0

    .line 612
    iget-object v0, v3, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->fba:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    .line 614
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    .line 615
    const-string v5, "1"

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCK:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 622
    :goto_3
    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbK:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 623
    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    if-eqz v0, :cond_6

    .line 625
    iget v0, v3, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->eWV:I

    if-ne v0, v2, :cond_5

    .line 626
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bGw:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 628
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bGx:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 631
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbL:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bGy:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    move v2, v1

    .line 642
    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method public final done()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 332
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/a;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/ui/o;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/o;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/a;-><init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ui/applet/f;)V

    .line 346
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 347
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->username:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/a;->e(Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 351
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 352
    const-string v1, "intent_pay_end_errcode"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "intent_pay_end_errcode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v1, "intent_pay_app_url"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "intent_pay_app_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "intent_pay_end"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "intent_pay_end"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    const-string v1, "MicroMsg.WalletOrderInfoUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay done...feedbackData errCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aoJ()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent_pay_end_errcode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 359
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faX:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->fba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->fba:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCN:Ljava/lang/String;

    .line 361
    :goto_0
    const-string v1, "%sreqkey=%s&transid=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faX:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v4, v4, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faP:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string v1, "MicroMsg.WalletOrderInfoUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 364
    const-string v2, "rawUrl"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v0, "showShare"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    const-string v0, "geta8key_username"

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v0, "webview"

    const-string v2, "com.tencent.mm.ui.tools.WebViewUI"

    invoke-static {p0, v0, v2, v1}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 369
    :cond_1
    return-void

    .line 360
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/tencent/mm/k;->aQm:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const/4 v7, 0x7

    const/4 v12, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 89
    invoke-super {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v3

    .line 91
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "key_pay_info"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 108
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "key_orders"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    .line 109
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v3}, Lcom/tencent/mm/plugin/wallet/b/i;->anP()Z

    move-result v4

    .line 111
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0, v7}, Lcom/tencent/mm/plugin/wallet/b/l;->a(Landroid/app/Activity;Landroid/os/Bundle;I)V

    .line 112
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "key_support_bankcard"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    .line 113
    :goto_0
    sget-object v5, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v6, 0x29c3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iget v8, v8, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->fbh:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    sget v8, Lcom/tencent/mm/plugin/wallet/b/l;->fap:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    if-eqz v4, :cond_7

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/b/l;->anU()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-wide v8, v2, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faR:D

    const-wide/high16 v10, 0x4059

    mul-double/2addr v8, v10

    double-to-int v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->dCP:Ljava/lang/String;

    aput-object v2, v7, v1

    const/4 v1, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/c/c;->aof()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/wallet/b/i;->anP()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/v;->tp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/v;->tm()I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->fba:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->fba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 138
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->fba:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbN:Ljava/util/List;

    .line 139
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/wallet/b/i;->anO()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/wallet/b/i;->anP()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    :cond_4
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aoK()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/model/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->l(Lcom/tencent/mm/n/x;)V

    .line 153
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->FR()V

    .line 154
    return-void

    :cond_6
    move v0, v2

    .line 112
    goto/16 :goto_0

    :cond_7
    move v2, v1

    .line 113
    goto/16 :goto_1

    .line 143
    :cond_8
    const-string v0, "MicroMsg.WalletOrderInfoUI"

    const-string v1, "mOrders info is Illegal!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bGv:I

    new-instance v2, Lcom/tencent/mm/plugin/wallet/pay/ui/j;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/j;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)V

    invoke-static {v0, v1, v12, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->aQy:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/mm/c;->ZA:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/plugin/wallet/pay/ui/p;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/p;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onDestroy()V

    .line 295
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->username:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/at;->dp(Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 373
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 374
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    .line 379
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->done()V

    .line 381
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
