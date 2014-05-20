.class public Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;
.super Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/tencent/mm/plugin/wallet/ui/l;


# static fields
.field private static final eYs:[Ljava/lang/String;


# instance fields
.field private dLL:Landroid/widget/Button;

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

.field private eYY:Ljava/lang/String;

.field private eYZ:Ljava/lang/String;

.field private eZa:Ljava/lang/String;

.field private eZb:I

.field private eZf:Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;

.field private eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

.field private eZh:Landroid/widget/CheckBox;

.field private eZi:Landroid/widget/CheckBox;

.field private eZj:Landroid/widget/BaseAdapter;

.field private erp:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x4

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

    sput-object v0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->erp:Landroid/app/Dialog;

    .line 83
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 89
    new-instance v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/protocal/Authen;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    .line 90
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    .line 91
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 92
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZb:I

    .line 782
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/ui/ap;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ap;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZj:Landroid/widget/BaseAdapter;

    return-void
.end method

.method private LP()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 305
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    if-eqz v1, :cond_d

    .line 306
    sget v1, Lcom/tencent/mm/i;->aQh:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_bank_username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 308
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZi:Landroid/widget/CheckBox;

    sget v2, Lcom/tencent/mm/n;->bFK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v4, v4, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->dCO:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZi:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWQ:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pN(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 318
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 321
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 326
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-boolean v2, v2, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWU:Z

    if-eqz v2, :cond_10

    .line 328
    sget v2, Lcom/tencent/mm/n;->bGf:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    :goto_2
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->dCO:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v5, v5, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->dCO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 334
    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 341
    :goto_3
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    if-nez v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aal()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget v5, v5, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWY:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/plugin/wallet/c/c;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    if-nez v1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 353
    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 354
    if-nez v1, :cond_5

    .line 355
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 357
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 359
    :cond_6
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->bTR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 360
    if-nez v1, :cond_7

    .line 361
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 363
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 365
    :cond_8
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 366
    if-nez v1, :cond_9

    .line 367
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 369
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 371
    :cond_a
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 372
    if-nez v1, :cond_b

    .line 373
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 378
    :cond_c
    sget v2, Lcom/tencent/mm/h;->ady:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setBackgroundResource(I)V

    .line 379
    sget v1, Lcom/tencent/mm/h;->ady:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setBackgroundResource(I)V

    .line 381
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    .line 382
    instance-of v0, v0, Lcom/tencent/mm/plugin/wallet/b/d;

    if-eqz v0, :cond_12

    .line 383
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->dLL:Landroid/widget/Button;

    sget v1, Lcom/tencent/mm/n;->bFO:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 389
    :cond_d
    :goto_4
    return-void

    .line 311
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZi:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 323
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    move-object v1, v0

    goto/16 :goto_1

    .line 330
    :cond_10
    sget v2, Lcom/tencent/mm/n;->bGh:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 339
    :cond_11
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v2, v6}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    goto/16 :goto_3

    .line 385
    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->dLL:Landroid/widget/Button;

    sget v1, Lcom/tencent/mm/n;->bFM:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_4
.end method

.method private UW()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 690
    .line 691
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZh:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    move v0, v1

    .line 698
    :goto_0
    if-eqz v0, :cond_0

    .line 699
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 700
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 705
    :goto_1
    return v0

    .line 702
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 703
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZb:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYC:Landroid/widget/TextView;

    return-object v0
.end method

.method private anp()V
    .locals 4

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->UW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/b/l;->anR()V

    .line 525
    new-instance v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/protocal/Authen;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    .line 526
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_is_follow_bank_username"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZi:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 528
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eXN:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eXd:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWH:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eXo:Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iget v1, v1, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWY:I

    iput v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWY:I

    .line 533
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_pwd1"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fde:Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "kreq_token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->etE:Ljava/lang/String;

    .line 575
    :goto_0
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    .line 576
    instance-of v1, v0, Lcom/tencent/mm/plugin/wallet/b/b;

    if-eqz v1, :cond_5

    .line 577
    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/b;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/b/b;->a(Lcom/tencent/mm/plugin/wallet/protocal/Authen;Lcom/tencent/mm/plugin/wallet/order/model/Orders;)Lcom/tencent/mm/plugin/wallet/c/a;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_4

    .line 579
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->l(Lcom/tencent/mm/n/x;)V

    .line 588
    :cond_0
    :goto_1
    return-void

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kcard_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 538
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 541
    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "key_pay_info"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iput-object v0, v2, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->dHN:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 542
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdi:Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eXo:Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZb:I

    iput v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWY:I

    .line 546
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_pwd1"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fde:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWR:Ljava/lang/String;

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdh:Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdl:Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdm:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYY:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->dHm:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bTZ:Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZa:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bUa:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->XX:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdn:Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWa:Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bTQ:Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdh:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/e/b;->pQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_mobile"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_is_oversea"

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 569
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdg:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdf:Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdj:Ljava/lang/String;

    .line 572
    const-string v0, "MicroMsg.WalletCardElmentUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "payInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->dHN:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " elemt.bankcardTag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget v2, v2, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 568
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 581
    :cond_4
    const-string v0, "MicroMsg.WalletCardElmentUI"

    const-string v1, "error scene is null!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 584
    :cond_5
    const-string v0, "MicroMsg.WalletCardElmentUI"

    const-string v1, "error process in the tenpay!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_2
.end method

.method static synthetic ans()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->UW()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->anp()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZb:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->LP()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    sget v0, Lcom/tencent/mm/i;->aQb:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 121
    sget v0, Lcom/tencent/mm/i;->aBF:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 123
    sget v0, Lcom/tencent/mm/i;->aCm:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 124
    sget v0, Lcom/tencent/mm/i;->aQj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 125
    sget v0, Lcom/tencent/mm/i;->awl:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 127
    sget v0, Lcom/tencent/mm/i;->aQi:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 129
    sget v0, Lcom/tencent/mm/i;->aqW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 130
    sget v0, Lcom/tencent/mm/i;->aqX:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 132
    sget v0, Lcom/tencent/mm/i;->aQN:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYC:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/tencent/mm/i;->atE:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 135
    sget v0, Lcom/tencent/mm/i;->axO:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 136
    sget v0, Lcom/tencent/mm/i;->amC:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 137
    sget v0, Lcom/tencent/mm/i;->ale:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 138
    sget v0, Lcom/tencent/mm/i;->aDP:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 139
    sget v0, Lcom/tencent/mm/i;->aEk:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 140
    sget v0, Lcom/tencent/mm/i;->arM:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 142
    sget v0, Lcom/tencent/mm/i;->aln:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZh:Landroid/widget/CheckBox;

    .line 143
    sget v0, Lcom/tencent/mm/i;->all:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZi:Landroid/widget/CheckBox;

    .line 144
    sget v0, Lcom/tencent/mm/i;->aCN:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->dLL:Landroid/widget/Button;

    .line 146
    sget v0, Lcom/tencent/mm/i;->aQU:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZf:Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;

    .line 147
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZf:Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;->aoI()V

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZf:Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/af;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/af;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;->a(Lcom/tencent/mm/plugin/wallet/ui/n;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 169
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 172
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 173
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 181
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYG:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYS:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYI:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 189
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYF:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 190
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYL:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYN:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYO:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 198
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYQ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 200
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYD:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ah;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ah;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYH:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ai;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ai;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZh:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZh:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/aj;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/aj;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZi:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    sget v0, Lcom/tencent/mm/i;->alj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ak;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ak;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/am;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/am;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->dLL:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/an;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/an;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->LP()V

    .line 301
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->UW()Z

    .line 302
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

    .line 592
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

    .line 593
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 595
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    .line 597
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYJ:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/e/b;->pQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 598
    const-string v4, "key_mobile"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v3, "key_authen"

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYU:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 600
    const-string v3, "MicroMsg.WalletCardElmentUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PayInfo  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    instance-of v3, p4, Lcom/tencent/mm/plugin/wallet/pay/model/e;

    if-eqz v3, :cond_1

    .line 602
    check-cast p4, Lcom/tencent/mm/plugin/wallet/pay/model/e;

    .line 603
    const-string v1, "kreq_token"

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/pay/model/e;->ank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-boolean v1, p4, Lcom/tencent/mm/plugin/wallet/pay/model/e;->fbe:Z

    if-eqz v1, :cond_0

    .line 605
    const-string v1, "key_orders"

    iget-object v3, p4, Lcom/tencent/mm/plugin/wallet/pay/model/e;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 632
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v1

    .line 633
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/tencent/mm/plugin/wallet/b/i;->d(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 634
    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoK()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/plugin/wallet/bind/model/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->k(Lcom/tencent/mm/n/x;)V

    .line 641
    :goto_1
    return v0

    .line 609
    :cond_1
    instance-of v3, p4, Lcom/tencent/mm/plugin/wallet/bind/model/d;

    if-eqz v3, :cond_2

    .line 610
    check-cast p4, Lcom/tencent/mm/plugin/wallet/bind/model/d;

    .line 611
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/bind/model/d;->aeS()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->faP:Ljava/lang/String;

    .line 612
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

    .line 613
    const-string v1, "key_pay_info"

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 614
    const-string v1, "kreq_token"

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/bind/model/d;->ank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_2
    instance-of v3, p4, Lcom/tencent/mm/plugin/wallet/pwd/a/d;

    if-eqz v3, :cond_3

    .line 618
    check-cast p4, Lcom/tencent/mm/plugin/wallet/pwd/a/d;

    .line 619
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/pwd/a/d;->aeS()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->faP:Ljava/lang/String;

    .line 620
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

    .line 621
    const-string v1, "key_pay_info"

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 622
    const-string v1, "kreq_token"

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/pwd/a/d;->ank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    :cond_3
    instance-of v3, p4, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    if-eqz v3, :cond_4

    .line 624
    const-string v1, "intent_bind_end"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    invoke-static {p0, v2}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 626
    sget v1, Lcom/tencent/mm/n;->bFp:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 629
    goto/16 :goto_1

    .line 637
    :cond_5
    invoke-static {p0, v2}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 641
    goto/16 :goto_1
.end method

.method public final aN(Z)V
    .locals 0
    .parameter

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->UW()Z

    .line 711
    return-void
.end method

.method protected final anq()Z
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 646
    sget v0, Lcom/tencent/mm/k;->bbx:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    const-string v0, "MicroMsg.WalletCardElmentUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAcvityResult requestCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 655
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 686
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->UW()Z

    goto :goto_0

    .line 657
    :pswitch_0
    const-string v0, "elemt_query"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 658
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->LP()V

    goto :goto_1

    .line 661
    :pswitch_1
    const-string v0, "CountryName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    const-string v1, "Country"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
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

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYY:Ljava/lang/String;

    .line 664
    const-string v2, "ProviceName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    const-string v3, "CityName"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    const-string v4, "Contact_City"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 667
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

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYZ:Ljava/lang/String;

    .line 668
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

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZa:Ljava/lang/String;

    .line 669
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

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

    .line 678
    :goto_2
    const-string v0, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXx:Z

    if-eqz v0, :cond_4

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    goto/16 :goto_1

    .line 670
    :cond_2
    const-string v3, "Contact_Province"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 671
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

    iput-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZa:Ljava/lang/String;

    .line 672
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

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

    .line 674
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYY:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZa:Ljava/lang/String;

    .line 675
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYM:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    goto :goto_2

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYP:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->setVisibility(I)V

    goto/16 :goto_1

    .line 655
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
    .line 101
    invoke-super {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget v0, Lcom/tencent/mm/n;->bGi:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->mn(I)V

    .line 103
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "elemt_query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYT:Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 104
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_orders"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    .line 105
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_pay_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 106
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_import_bankcard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZg:Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 110
    :cond_0
    const-string v0, "MicroMsg.WalletCardElmentUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPayInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->FR()V

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZf:Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/MMScrollView;->pageScroll(I)Z

    .line 113
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/b/l;->a(Landroid/app/Activity;Landroid/os/Bundle;I)V

    .line 114
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 753
    packed-switch p1, :pswitch_data_0

    .line 777
    invoke-super {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 755
    :pswitch_0
    new-instance v1, Landroid/app/Dialog;

    sget v0, Lcom/tencent/mm/o;->bIG:I

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 756
    sget v0, Lcom/tencent/mm/k;->bbF:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 757
    sget v0, Lcom/tencent/mm/i;->ala:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 758
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eZj:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 759
    new-instance v2, Lcom/tencent/mm/plugin/wallet/bind/ui/ao;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ao;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object v0, v1

    .line 775
    goto :goto_0

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->erp:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->erp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->erp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->erp:Landroid/app/Dialog;

    .line 748
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onDestroy()V

    .line 749
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 715
    const-string v0, "MicroMsg.WalletCardElmentUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEditorAction actionId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    packed-switch p2, :pswitch_data_0

    .line 730
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-nez v0, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->anp()V

    .line 735
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 718
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->dIe:Z

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->aoG()V

    .line 727
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->eYR:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->performClick()Z

    goto :goto_1

    .line 725
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->anp()V

    goto :goto_1

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
