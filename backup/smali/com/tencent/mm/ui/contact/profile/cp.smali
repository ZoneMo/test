.class final Lcom/tencent/mm/ui/contact/profile/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gXl:Lcom/tencent/mm/ui/contact/profile/cb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/cp;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x400

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 660
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cp;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->d(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/cp;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Chat_User"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Chat_Mode"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-object v0, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 669
    :goto_1
    return-void

    .line 661
    :cond_0
    const-string v3, "Chat_User"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Chat_Mode"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 667
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/cp;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    new-instance v2, Landroid/content/Intent;

    iget-object v0, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->k(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Chat_User"

    iget-object v3, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Chat_Mode"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_2
    iget-object v0, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    const-string v0, "Chat_User"

    iget-object v3, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Chat_Mode"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
