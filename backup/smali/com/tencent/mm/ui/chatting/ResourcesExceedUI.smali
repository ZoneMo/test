.class public Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private gRf:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->type:I

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/tencent/mm/ui/chatting/ky;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ky;-><init>(Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 38
    const v0, 0x7f0a02bb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->gRf:Landroid/widget/TextView;

    .line 39
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->type:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->gRf:Landroid/widget/TextView;

    const v1, 0x7f07062a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 44
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->gRf:Landroid/widget/TextView;

    const v1, 0x7f07062b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 47
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->gRf:Landroid/widget/TextView;

    const v1, 0x7f07061b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f030254

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clean_view_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->type:I

    .line 23
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->vT(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->FR()V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 59
    return-void
.end method
