.class final Lcom/tencent/mm/plugin/wallet/bind/ui/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V
    .locals 0
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 924
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->dismissDialog(I)V

    .line 925
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->anj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 926
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->d(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 927
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;I)I

    .line 928
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->e(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    move-result-object v0

    check-cast p2, Landroid/widget/CheckedTextView;

    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->pM(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->f(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->d(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->jP(I)V

    .line 930
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->d(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->b(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;I)V

    .line 931
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->f(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UP()V

    .line 932
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ad;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->g(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V

    .line 934
    :cond_0
    return-void
.end method
