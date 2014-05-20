.class final Lcom/tencent/mm/ui/contact/bl;
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
    .line 134
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/bl;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 139
    new-instance v0, Lcom/tencent/mm/ui/tools/dl;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/bl;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v1, Lcom/tencent/mm/ui/contact/bm;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/bm;-><init>(Lcom/tencent/mm/ui/contact/bl;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 150
    new-instance v1, Lcom/tencent/mm/ui/contact/bn;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/bn;-><init>(Lcom/tencent/mm/ui/contact/bl;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 166
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    .line 167
    const/4 v0, 0x1

    return v0
.end method
