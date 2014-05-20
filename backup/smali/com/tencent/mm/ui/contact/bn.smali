.class final Lcom/tencent/mm/ui/contact/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic gTz:Lcom/tencent/mm/ui/contact/bl;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/bn;->gTz:Lcom/tencent/mm/ui/contact/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    packed-switch p2, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/bn;->gTz:Lcom/tencent/mm/ui/contact/bl;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/bl;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->c(Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/bn;->gTz:Lcom/tencent/mm/ui/contact/bl;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/bl;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->f(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/bn;->gTz:Lcom/tencent/mm/ui/contact/bl;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/bl;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->d(Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
