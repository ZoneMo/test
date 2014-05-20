.class public final Lcom/tencent/mm/plugin/wallet/bind/ui/ax;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private eEO:Ljava/util/List;

.field final synthetic eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->eEO:Ljava/util/List;

    .line 197
    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->context:Landroid/content/Context;

    .line 198
    return-void
.end method


# virtual methods
.method public final ai(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->eEO:Ljava/util/List;

    .line 202
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->eEO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->jG(I)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 238
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ay;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ay;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/ax;)V

    .line 207
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/k;->bbr:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 208
    sget v0, Lcom/tencent/mm/i;->apu:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ay;->eZB:Landroid/widget/CheckedTextView;

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->eEO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXe:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ay;->eZB:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->eEO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 214
    :cond_0
    iget-object v0, v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ay;->eZB:Landroid/widget/CheckedTextView;

    sget v3, Lcom/tencent/mm/h;->ady:I

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 218
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->getCount()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 219
    iget-object v0, v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ay;->eZB:Landroid/widget/CheckedTextView;

    sget v3, Lcom/tencent/mm/h;->ady:I

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 221
    :cond_1
    iget-object v0, v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ay;->eZB:Landroid/widget/CheckedTextView;

    sget v1, Lcom/tencent/mm/h;->aiK:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 223
    return-object v2
.end method

.method public final jG(I)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->eEO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    return-object v0
.end method
