.class public final Lcom/tencent/mm/plugin/wallet/address/ui/s;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private eEO:Ljava/util/List;

.field final synthetic eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->eEO:Ljava/util/List;

    .line 273
    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->context:Landroid/content/Context;

    .line 274
    return-void
.end method


# virtual methods
.method public final ai(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->eEO:Ljava/util/List;

    .line 278
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->eEO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/wallet/address/ui/s;->jA(I)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 322
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 282
    new-instance v1, Lcom/tencent/mm/plugin/wallet/address/ui/t;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/t;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/s;)V

    .line 283
    if-nez p2, :cond_0

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/k;->bbp:I

    invoke-static {v0, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 285
    sget v0, Lcom/tencent/mm/i;->apt:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/address/ui/t;->eWF:Landroid/widget/ImageView;

    .line 286
    sget v0, Lcom/tencent/mm/i;->alb:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/address/ui/t;->ezT:Landroid/widget/TextView;

    .line 287
    sget v0, Lcom/tencent/mm/i;->alg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/address/ui/t;->dIs:Landroid/widget/TextView;

    .line 288
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 292
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/wallet/address/ui/s;->jA(I)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v1

    .line 293
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/address/ui/t;->ezT:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fcZ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/address/ui/t;->dIs:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->fda:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->c(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->d(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->d(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v2

    iget v2, v2, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    iget v1, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    if-ne v2, v1, :cond_1

    .line 301
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/address/ui/t;->eWF:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->ahM:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    :goto_1
    return-object p2

    .line 290
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/address/ui/t;

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/address/ui/t;->eWF:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final jA(I)Lcom/tencent/mm/plugin/wallet/protocal/b;
    .locals 1
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/s;->eEO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/protocal/b;

    return-object v0
.end method
