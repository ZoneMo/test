.class final Lcom/tencent/mm/ui/contact/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cWt:Z

.field final synthetic gTW:Lcom/tencent/mm/ui/contact/ci;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ci;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/cj;->gTW:Lcom/tencent/mm/ui/contact/ci;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/contact/cj;->cWt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/cj;->cWt:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/cj;->gTW:Lcom/tencent/mm/ui/contact/ci;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/ci;->gTV:Lcom/tencent/mm/ui/contact/ContactRemarkInfoViewUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/cj;->gTW:Lcom/tencent/mm/ui/contact/ci;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/ci;->gTV:Lcom/tencent/mm/ui/contact/ContactRemarkInfoViewUI;

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/contact/ContactRemarkInfoViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/cj;->gTW:Lcom/tencent/mm/ui/contact/ci;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/ci;->gTV:Lcom/tencent/mm/ui/contact/ContactRemarkInfoViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkInfoViewUI;->e(Lcom/tencent/mm/ui/contact/ContactRemarkInfoViewUI;)V

    goto :goto_0
.end method
