.class final Lcom/tencent/mm/plugin/wallet/address/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eWo:Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/f;->eWo:Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/f;->eWo:Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletAddAddressUI;->finish()V

    .line 263
    return-void
.end method
