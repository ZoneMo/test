.class public Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;
.super Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/tencent/mm/plugin/wallet/ui/l;


# static fields
.field private static final eYs:[Ljava/lang/String;


# instance fields
.field private dLL:Landroid/widget/Button;

.field private dTG:Landroid/widget/ScrollView;

.field private eYA:Landroid/widget/TextView;

.field private eYB:Landroid/widget/TextView;

.field private eYC:Landroid/widget/TextView;

.field private eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

.field private eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

.field private eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

.field private eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

.field private eYX:Landroid/widget/CheckBox;

.field private eYY:Ljava/lang/String;

.field private eYZ:Ljava/lang/String;

.field private eYt:Landroid/widget/TextView;

.field private eYu:Landroid/widget/TextView;

.field private eYv:Landroid/widget/TextView;

.field private eYw:Landroid/widget/TextView;

.field private eYx:Landroid/widget/TextView;

.field private eYy:Landroid/widget/TextView;

.field private eYz:Landroid/widget/TextView;

.field private eZa:Ljava/lang/String;

.field private eZb:I

.field private eZc:Landroid/widget/BaseAdapter;

.field private ezr:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ABC_DEBIT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ABC_CREDIT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CITIC_CREDIT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CMBC_DEBIT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "COMM_DEBIT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 93
    new-instance v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/protocal/Authen;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    .line 94
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    .line 95
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    .line 948
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/ui/ae;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ae;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZc:Landroid/widget/BaseAdapter;

    return-void
.end method

.method private LP()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 298
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 303
    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v3

    .line 304
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "kbankcard"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 305
    instance-of v4, v3, Lcom/tencent/mm/plugin/wallet/b/e;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 306
    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWQ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWQ:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 308
    new-array v0, v1, [Z

    aput-boolean v1, v0, v2

    new-array v4, v1, [Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYt:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYu:Landroid/widget/TextView;

    invoke-static {v0, v4, v5, v6}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 309
    new-array v0, v1, [Z

    aput-boolean v2, v0, v2

    new-array v4, v1, [Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    invoke-static {v0, v4, v5, v6}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->jB(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    new-array v0, v8, [Z

    fill-array-data v0, :array_0

    new-array v3, v8, [Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYx:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-static {v0, v3, v4, v5}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 328
    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->bV(Z)V

    .line 362
    :goto_1
    new-array v0, v7, [Z

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXi:Z

    aput-boolean v3, v0, v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXj:Z

    aput-boolean v3, v0, v1

    new-array v3, v7, [Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYz:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYA:Landroid/widget/TextView;

    invoke-static {v0, v3, v1, v4}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 365
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 366
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXm:I

    packed-switch v0, :pswitch_data_0

    .line 384
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->aaC:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    :goto_3
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXe:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 321
    :goto_4
    new-array v0, v1, [Z

    aput-boolean v2, v0, v2

    new-array v4, v1, [Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYt:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYu:Landroid/widget/TextView;

    invoke-static {v0, v4, v5, v6, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    .line 322
    new-array v0, v1, [Z

    aput-boolean v1, v0, v2

    new-array v4, v1, [Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    invoke-static {v0, v4, v5, v6, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    goto/16 :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXn:I

    if-ne v7, v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-object v5, v5, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/tencent/mm/n;->bGf:I

    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    goto :goto_4

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-object v5, v5, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/tencent/mm/n;->bGh:I

    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    goto :goto_4

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->anj()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->anj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    .line 332
    :goto_5
    instance-of v4, v3, Lcom/tencent/mm/plugin/wallet/b/e;

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/wallet/b/i;->anP()Z

    move-result v4

    if-nez v4, :cond_5

    instance-of v4, v3, Lcom/tencent/mm/plugin/wallet/b/d;

    if-eqz v4, :cond_7

    .line 334
    :cond_5
    new-array v4, v8, [Z

    aput-boolean v1, v4, v2

    aput-boolean v0, v4, v1

    aput-boolean v1, v4, v7

    aput-boolean v1, v4, v9

    new-array v0, v8, [Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v0, v2

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v0, v1

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v0, v7

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v0, v9

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYx:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-static {v4, v0, v5, v6}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 340
    :goto_6
    instance-of v0, v3, Lcom/tencent/mm/plugin/wallet/b/e;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/c/c;->aod()I

    move-result v0

    if-lez v0, :cond_9

    .line 341
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setClickable(Z)V

    .line 342
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/mm/plugin/wallet/c/c;->aN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->jP(I)V

    .line 344
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->jE(I)V

    .line 358
    :goto_7
    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->bV(Z)V

    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 331
    goto :goto_5

    .line 336
    :cond_7
    new-array v4, v8, [Z

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v5, v5, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXg:Z

    aput-boolean v5, v4, v2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXh:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    aput-boolean v0, v4, v1

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXh:Z

    aput-boolean v0, v4, v7

    aput-boolean v1, v4, v9

    new-array v0, v8, [Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v0, v2

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v0, v1

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v0, v7

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    aput-object v5, v0, v9

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYx:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-static {v4, v0, v5, v6}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_6

    :cond_8
    move v0, v2

    goto :goto_8

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZc:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-gt v0, v1, :cond_c

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setClickable(Z)V

    .line 351
    :goto_9
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->anj()Ljava/util/List;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_a

    iget v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 353
    :cond_a
    iput v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    .line 355
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    invoke-virtual {v3, p0, v4}, Lcom/tencent/mm/plugin/wallet/c/c;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    goto :goto_7

    .line 349
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setClickable(Z)V

    goto :goto_9

    .line 368
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bFB:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 369
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 372
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bFC:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 376
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bFD:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 377
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 380
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bFE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 381
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 389
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 327
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private UW()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 724
    .line 725
    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 726
    iput-object v6, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 728
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 729
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/n;->bFA:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 734
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/tencent/mm/f;->aan:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v1

    .line 737
    :goto_0
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v3, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 738
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_1
    move v0, v1

    .line 743
    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYu:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 744
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_3
    move v0, v1

    .line 750
    :cond_4
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 752
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_5

    .line 753
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 757
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/n;->aQe:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 758
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/tencent/mm/f;->aan:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v2

    move v3, v1

    .line 761
    :goto_1
    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v6, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 762
    if-eqz v0, :cond_1c

    .line 764
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/n;->bFI:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 765
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/tencent/mm/f;->aan:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 771
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_6

    .line 772
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_6
    move v3, v1

    .line 780
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 781
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    sget v5, Lcom/tencent/mm/n;->bFL:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 782
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/tencent/mm/f;->aaC:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 783
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYA:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 789
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_9

    .line 790
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_9
    move v0, v2

    move v3, v1

    .line 795
    :goto_4
    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v6, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYA:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 796
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_a

    .line 797
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_a
    move v3, v1

    .line 805
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYX:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c

    .line 806
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    move v3, v1

    .line 811
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 812
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_d

    .line 813
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_d
    move v3, v1

    .line 818
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 819
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_f

    .line 820
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_f
    move v3, v1

    .line 825
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 826
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_11

    .line 827
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_11
    move v3, v1

    .line 832
    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 833
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_13

    .line 834
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_13
    move v3, v1

    .line 839
    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 840
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_15

    .line 841
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_15
    move v3, v1

    .line 846
    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 847
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_17

    .line 848
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_17
    move v3, v1

    .line 853
    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 854
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eq v4, v0, :cond_19

    .line 855
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    :cond_19
    move v3, v1

    .line 861
    :cond_1a
    if-eqz v3, :cond_1f

    .line 862
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 863
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 864
    if-eqz v4, :cond_1b

    .line 865
    invoke-virtual {v4}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->aoH()V

    .line 871
    :cond_1b
    :goto_6
    return v3

    .line 768
    :cond_1c
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/n;->bFJ:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 769
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/tencent/mm/f;->aan:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 776
    :cond_1d
    if-eqz v0, :cond_7

    .line 777
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 801
    :cond_1e
    if-eqz v0, :cond_b

    .line 802
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYA:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 868
    :cond_1f
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 869
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_6

    :cond_20
    move v0, v1

    goto/16 :goto_4

    :cond_21
    move v3, v0

    move v0, v1

    goto/16 :goto_1

    :cond_22
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    return-object v0
.end method

.method private static a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    .line 482
    return-void
.end method

.method private static a([Z[Lcom/tencent/mm/plugin/wallet/ui/EditHintView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 451
    array-length v3, p0

    move v1, v2

    move v0, v2

    .line 453
    :goto_0
    if-ge v1, v3, :cond_1

    .line 454
    aget-boolean v4, p0, v1

    if-eqz v4, :cond_0

    .line 455
    const/4 v0, 0x1

    .line 456
    aget-object v4, p1, v1

    invoke-virtual {v4, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 453
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_0
    aget-object v4, p1, v1

    invoke-virtual {v4, v5}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    goto :goto_1

    .line 461
    :cond_1
    if-eqz v0, :cond_4

    .line 462
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    if-eqz p3, :cond_2

    .line 464
    if-eqz p4, :cond_3

    .line 465
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    :cond_2
    :goto_2
    return-void

    .line 468
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 472
    :cond_4
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    if-eqz p3, :cond_2

    .line 474
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private anp()V
    .locals 4

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->UW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/b/l;->anR()V

    .line 567
    new-instance v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/protocal/Authen;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    .line 569
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kcard_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 571
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 574
    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "key_pay_info"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iput-object v0, v2, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->dHN:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 575
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdi:Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eXo:Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    iput v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWY:I

    .line 579
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_pwd1"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fde:Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWR:Ljava/lang/String;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdh:Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdl:Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdm:Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYY:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->dHm:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bTZ:Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZa:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bUa:Ljava/lang/String;

    .line 593
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->XX:Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdn:Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWa:Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bTQ:Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdh:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/e/b;->pQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_mobile"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_is_oversea"

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 602
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdg:Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdf:Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdj:Ljava/lang/String;

    .line 605
    const-string v0, "MicroMsg.WalletCardElmentUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "payInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->dHN:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " elemt.bankcardTag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget v2, v2, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    .line 608
    instance-of v1, v0, Lcom/tencent/mm/plugin/wallet/b/b;

    if-eqz v1, :cond_4

    .line 609
    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/b;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/b/b;->a(Lcom/tencent/mm/plugin/wallet/protocal/Authen;Lcom/tencent/mm/plugin/wallet/order/model/Orders;)Lcom/tencent/mm/plugin/wallet/c/a;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_3

    .line 611
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->l(Lcom/tencent/mm/n/x;)V

    .line 620
    :cond_1
    :goto_2
    return-void

    .line 601
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 613
    :cond_3
    const-string v0, "MicroMsg.WalletCardElmentUI"

    const-string v1, "error scene is null!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 616
    :cond_4
    const-string v0, "MicroMsg.WalletCardElmentUI"

    const-string v1, "error process in the tenpay!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic anr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->jE(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->UW()Z

    move-result v0

    return v0
.end method

.method private bV(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 395
    if-eqz p1, :cond_8

    .line 397
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->ezr:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXr:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXr:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 399
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXs:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 400
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXt:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 401
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXw:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 402
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXy:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 403
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXx:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXz:Z

    if-eqz v3, :cond_7

    :goto_7
    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    :goto_8
    return-void

    :cond_0
    move v0, v2

    .line 397
    goto :goto_0

    :cond_1
    move v0, v2

    .line 398
    goto :goto_1

    :cond_2
    move v0, v2

    .line 399
    goto :goto_2

    :cond_3
    move v0, v2

    .line 400
    goto :goto_3

    :cond_4
    move v0, v2

    .line 401
    goto :goto_4

    :cond_5
    move v0, v2

    .line 402
    goto :goto_5

    :cond_6
    move v0, v2

    .line 403
    goto :goto_6

    :cond_7
    move v1, v2

    .line 404
    goto :goto_7

    .line 407
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->ezr:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->anp()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->LP()V

    return-void
.end method

.method private jE(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 987
    if-ne p1, v2, :cond_0

    .line 988
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a(Landroid/view/View;IZ)V

    .line 992
    :goto_0
    return-void

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a(Landroid/view/View;IZ)V

    goto :goto_0
.end method


# virtual methods
.method protected final FR()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    sget v0, Lcom/tencent/mm/i;->aQd:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYt:Landroid/widget/TextView;

    .line 122
    sget v0, Lcom/tencent/mm/i;->aQb:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 123
    sget v0, Lcom/tencent/mm/i;->aQc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYu:Landroid/widget/TextView;

    .line 125
    sget v0, Lcom/tencent/mm/i;->aQf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYx:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/tencent/mm/i;->aCm:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 127
    sget v0, Lcom/tencent/mm/i;->aBF:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 128
    sget v0, Lcom/tencent/mm/i;->aQj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 129
    sget v0, Lcom/tencent/mm/i;->awl:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 130
    sget v0, Lcom/tencent/mm/i;->aQe:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYy:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/tencent/mm/i;->aPX:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYv:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/tencent/mm/i;->aQi:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 134
    sget v0, Lcom/tencent/mm/i;->aPY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYw:Landroid/widget/TextView;

    .line 136
    sget v0, Lcom/tencent/mm/i;->aQa:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYz:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/tencent/mm/i;->aqW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 138
    sget v0, Lcom/tencent/mm/i;->aqX:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 139
    sget v0, Lcom/tencent/mm/i;->aPZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYA:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/tencent/mm/i;->aQN:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYC:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/tencent/mm/i;->aPW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->ezr:Landroid/widget/TextView;

    .line 144
    sget v0, Lcom/tencent/mm/i;->atE:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 145
    sget v0, Lcom/tencent/mm/i;->axO:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 146
    sget v0, Lcom/tencent/mm/i;->amC:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 147
    sget v0, Lcom/tencent/mm/i;->ale:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 148
    sget v0, Lcom/tencent/mm/i;->aDP:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 149
    sget v0, Lcom/tencent/mm/i;->aEk:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 150
    sget v0, Lcom/tencent/mm/i;->arM:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 151
    sget v0, Lcom/tencent/mm/i;->aPV:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYB:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/tencent/mm/i;->aln:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYX:Landroid/widget/CheckBox;

    .line 154
    sget v0, Lcom/tencent/mm/i;->aCN:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->dLL:Landroid/widget/Button;

    .line 156
    sget v0, Lcom/tencent/mm/i;->aQU:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->dTG:Landroid/widget/ScrollView;

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 162
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 163
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 169
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 172
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 175
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 190
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/w;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/w;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/x;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/x;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYX:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYX:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/y;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/y;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    sget v0, Lcom/tencent/mm/i;->alj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/z;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/z;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ab;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ab;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->dLL:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ac;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ac;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->LP()V

    .line 290
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->UW()Z

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a(Landroid/view/View;IZ)V

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {p0, v0, v3, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a(Landroid/view/View;IZ)V

    .line 294
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a(Landroid/view/View;IZ)V

    .line 295
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/plugin/wallet/c/a;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 624
    const-string v2, "MicroMsg.WalletCardElmentUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " errCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errMsg :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 627
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    .line 629
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/e/b;->pQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    const-string v4, "key_mobile"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v3, "key_authen"

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 632
    const-string v3, "MicroMsg.WalletCardElmentUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PayInfo  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    instance-of v3, p4, Lcom/tencent/mm/plugin/wallet/pay/model/e;

    if-eqz v3, :cond_1

    .line 634
    check-cast p4, Lcom/tencent/mm/plugin/wallet/pay/model/e;

    .line 635
    const-string v1, "kreq_token"

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/pay/model/e;->ank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-boolean v1, p4, Lcom/tencent/mm/plugin/wallet/pay/model/e;->fbe:Z

    if-eqz v1, :cond_0

    .line 637
    const-string v1, "key_orders"

    iget-object v3, p4, Lcom/tencent/mm/plugin/wallet/pay/model/e;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 666
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v1

    .line 667
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/tencent/mm/plugin/wallet/b/i;->d(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 668
    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoK()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/plugin/wallet/bind/model/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->k(Lcom/tencent/mm/n/x;)V

    .line 675
    :goto_1
    return v0

    .line 641
    :cond_1
    instance-of v3, p4, Lcom/tencent/mm/plugin/wallet/bind/model/d;

    if-eqz v3, :cond_2

    .line 642
    check-cast p4, Lcom/tencent/mm/plugin/wallet/bind/model/d;

    .line 643
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/bind/model/d;->aeS()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->faP:Ljava/lang/String;

    .line 644
    const-string v1, "MicroMsg.WalletCardElmentUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reqKey  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/bind/model/d;->aeS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v1, "key_pay_info"

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 646
    const-string v1, "kreq_token"

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/bind/model/d;->ank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v1, "key_bank_phone"

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXq:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_2
    instance-of v3, p4, Lcom/tencent/mm/plugin/wallet/pwd/a/d;

    if-eqz v3, :cond_3

    .line 651
    check-cast p4, Lcom/tencent/mm/plugin/wallet/pwd/a/d;

    .line 652
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/pwd/a/d;->aeS()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->faP:Ljava/lang/String;

    .line 653
    const-string v1, "MicroMsg.WalletCardElmentUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reqKey  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/pwd/a/d;->aeS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v1, "key_pay_info"

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 655
    const-string v1, "kreq_token"

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/pwd/a/d;->ank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v1, "key_bank_phone"

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXq:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 657
    :cond_3
    instance-of v3, p4, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    if-eqz v3, :cond_4

    .line 658
    const-string v1, "intent_bind_end"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    invoke-static {p0, v2}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 660
    sget v1, Lcom/tencent/mm/n;->bFp:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 663
    goto/16 :goto_1

    .line 671
    :cond_5
    invoke-static {p0, v2}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 675
    goto/16 :goto_1
.end method

.method public final aN(Z)V
    .locals 0
    .parameter

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->UW()Z

    .line 877
    return-void
.end method

.method protected final anq()Z
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    return v0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 680
    sget v0, Lcom/tencent/mm/k;->bbw:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    const-string v0, "MicroMsg.WalletCardElmentUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAcvityResult requestCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 689
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 720
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->UW()Z

    goto :goto_0

    .line 691
    :pswitch_0
    const-string v0, "elemt_query"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 692
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->LP()V

    goto :goto_1

    .line 695
    :pswitch_1
    const-string v0, "CountryName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    const-string v1, "Country"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYY:Ljava/lang/String;

    .line 698
    const-string v2, "ProviceName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 699
    const-string v3, "CityName"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    const-string v4, "Contact_City"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Contact_Province"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYZ:Ljava/lang/String;

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Contact_City"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZa:Ljava/lang/String;

    .line 703
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 712
    :goto_2
    const-string v0, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXx:Z

    if-eqz v0, :cond_4

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    goto/16 :goto_1

    .line 704
    :cond_2
    const-string v3, "Contact_Province"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Contact_Province"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZa:Ljava/lang/String;

    .line 706
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    goto :goto_2

    .line 708
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYY:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZa:Ljava/lang/String;

    .line 709
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    goto :goto_2

    .line 715
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    goto/16 :goto_1

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget v0, Lcom/tencent/mm/n;->bGi:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->mn(I)V

    .line 105
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "elemt_query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 106
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_orders"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    .line 107
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_pay_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 108
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/c/c;->aod()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZb:I

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 112
    :cond_0
    const-string v0, "MicroMsg.WalletCardElmentUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPayInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->FR()V

    .line 114
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->dTG:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    .line 115
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/b/l;->a(Landroid/app/Activity;Landroid/os/Bundle;I)V

    .line 116
    return-void
.end method

.method protected synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 62
    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/tencent/mm/n;->bFG:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->bbF:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/tencent/mm/i;->ala:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eZc:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/tencent/mm/n;->bFG:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/aa;->mR(I)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/aa;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 910
    invoke-super {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onDestroy()V

    .line 911
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 881
    const-string v0, "MicroMsg.WalletCardElmentUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEditorAction actionId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    packed-switch p2, :pswitch_data_0

    .line 896
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_0

    .line 897
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->anp()V

    .line 901
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 884
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eqz v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->aoG()V

    .line 893
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->performClick()Z

    goto :goto_1

    .line 891
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->anp()V

    goto :goto_1

    .line 882
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
