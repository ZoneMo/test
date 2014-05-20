.class final Lcom/tencent/mm/ui/contact/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/bj;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/bj;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->a(Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/tencent/mm/ae/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/bj;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->b(Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ae/a;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/bj;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/bj;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/bj;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    const v3, 0x7f0709bb

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/bj;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    const v3, 0x7f070437

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/contact/bk;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/bk;-><init>(Lcom/tencent/mm/ui/contact/bj;)V

    invoke-static {v1, v2, v4, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->a(Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 129
    :goto_0
    return v4

    .line 125
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/bj;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->c(Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/bj;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->a(Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;Z)V

    goto :goto_0
.end method
