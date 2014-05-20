.class final Lcom/tencent/mm/ui/contact/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cWt:Z

.field final synthetic gTO:Lcom/tencent/mm/ui/contact/bz;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/bz;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ca;->gTO:Lcom/tencent/mm/ui/contact/bz;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/contact/ca;->cWt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ca;->cWt:Z

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ca;->gTO:Lcom/tencent/mm/ui/contact/bz;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/bz;->gTN:Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ca;->gTO:Lcom/tencent/mm/ui/contact/bz;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/bz;->gTN:Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ca;->gTO:Lcom/tencent/mm/ui/contact/bz;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/bz;->gTN:Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;->l(Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;)V

    goto :goto_0
.end method
