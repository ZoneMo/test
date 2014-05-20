.class final Lcom/tencent/mm/ui/contact/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic gTz:Lcom/tencent/mm/ui/contact/bl;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/bm;->gTz:Lcom/tencent/mm/ui/contact/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 3
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/bm;->gTz:Lcom/tencent/mm/ui/contact/bl;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/bl;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    const v2, 0x7f0701bb

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 145
    const-string v0, "favorite"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/bm;->gTz:Lcom/tencent/mm/ui/contact/bl;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/bl;->gTx:Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;

    const v2, 0x7f070a4c

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/contact/ContactRemarkImagePreviewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 148
    :cond_0
    return-void
.end method
