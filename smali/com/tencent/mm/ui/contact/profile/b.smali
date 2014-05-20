.class final Lcom/tencent/mm/ui/contact/profile/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x400

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->a(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->finish()V

    .line 338
    :goto_0
    return v4

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->b(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/v;->tx()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->startActivity(Landroid/content/Intent;)V

    .line 334
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->finish()V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->b(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/v;->tt()Z

    move-result v0

    if-nez v0, :cond_3

    .line 319
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->b(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/v;->tD()Z

    move-result v0

    if-nez v0, :cond_4

    .line 325
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->b(Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/v;->tF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/b;->gVX:Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
