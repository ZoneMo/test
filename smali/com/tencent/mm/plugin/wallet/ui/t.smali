.class final Lcom/tencent/mm/plugin/wallet/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

.field final synthetic fei:Lcom/tencent/mm/plugin/wallet/c/a;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;Lcom/tencent/mm/plugin/wallet/c/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/t;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/ui/t;->fei:Lcom/tencent/mm/plugin/wallet/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/t;->fei:Lcom/tencent/mm/plugin/wallet/c/a;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/c/a;->reset()V

    .line 411
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/t;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/t;->fei:Lcom/tencent/mm/plugin/wallet/c/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->k(Lcom/tencent/mm/n/x;)V

    .line 412
    return-void
.end method
