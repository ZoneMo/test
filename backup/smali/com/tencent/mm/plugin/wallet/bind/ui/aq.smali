.class final Lcom/tencent/mm/plugin/wallet/bind/ui/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/aq;->eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;

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
    .line 91
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/aq;->eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->jG(I)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->ani()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/aq;->eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;

    invoke-static {v0, p3}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;I)I

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/aq;->eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    .line 99
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/aq;->eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;

    invoke-static {v0, p3}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->b(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;I)I

    goto :goto_0
.end method
