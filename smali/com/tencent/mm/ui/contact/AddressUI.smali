.class public Lcom/tencent/mm/ui/contact/AddressUI;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field public gSz:Lcom/tencent/mm/ui/cy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x1020002

    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/AddressUI;->w()Landroid/support/v4/app/l;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v3}, Landroid/support/v4/app/l;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/tencent/mm/ui/contact/m;

    invoke-direct {v1}, Lcom/tencent/mm/ui/contact/m;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/AddressUI;->gSz:Lcom/tencent/mm/ui/cy;

    .line 89
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/AddressUI;->gSz:Lcom/tencent/mm/ui/cy;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/AddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/cy;->setArguments(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {v0}, Landroid/support/v4/app/l;->x()Landroid/support/v4/app/v;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/AddressUI;->gSz:Lcom/tencent/mm/ui/cy;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/v;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/v;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/v;->commit()I

    .line 92
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1225
    return-void
.end method
