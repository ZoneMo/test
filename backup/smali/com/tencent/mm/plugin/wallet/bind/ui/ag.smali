.class final Lcom/tencent/mm/plugin/wallet/bind/ui/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eZl:I

.field final synthetic eZm:Lcom/tencent/mm/plugin/wallet/bind/ui/af;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/af;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ag;->eZm:Lcom/tencent/mm/plugin/wallet/bind/ui/af;

    iput p2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ag;->eZl:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ag;->eZl:I

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ag;->eZm:Lcom/tencent/mm/plugin/wallet/bind/ui/af;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/bind/ui/af;->eZk:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ag;->eZm:Lcom/tencent/mm/plugin/wallet/bind/ui/af;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/af;->eZk:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/ag;->eZl:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :cond_0
    return-void
.end method
