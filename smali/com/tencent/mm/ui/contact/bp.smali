.class final Lcom/tencent/mm/ui/contact/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/bp;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/bp;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->aFf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/bp;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->aFe()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/bp;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->aFd()V

    goto :goto_0
.end method
