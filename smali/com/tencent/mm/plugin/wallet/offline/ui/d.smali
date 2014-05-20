.class final Lcom/tencent/mm/plugin/wallet/offline/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic faN:Lcom/tencent/mm/plugin/wallet/offline/ui/WalletOfflineQRCodePayUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/offline/ui/WalletOfflineQRCodePayUI;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/offline/ui/d;->faN:Lcom/tencent/mm/plugin/wallet/offline/ui/WalletOfflineQRCodePayUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 1
    .parameter

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/offline/ui/d;->faN:Lcom/tencent/mm/plugin/wallet/offline/ui/WalletOfflineQRCodePayUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/offline/ui/WalletOfflineQRCodePayUI;->e(Lcom/tencent/mm/plugin/wallet/offline/ui/WalletOfflineQRCodePayUI;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
