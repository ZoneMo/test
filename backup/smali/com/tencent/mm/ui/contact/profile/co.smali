.class final Lcom/tencent/mm/ui/contact/profile/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic gXq:Lcom/tencent/mm/ui/contact/profile/cl;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cl;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/co;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0205a8

    .line 612
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/co;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-boolean v0, v0, Lcom/tencent/mm/ui/contact/profile/cl;->gXo:Z

    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x1

    const v1, 0x7f07043e

    const v2, 0x7f0205c0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/co;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-boolean v0, v0, Lcom/tencent/mm/ui/contact/profile/cl;->gXp:Z

    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/co;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    const/16 v0, 0x8

    const v1, 0x7f070421

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    .line 629
    :cond_1
    :goto_0
    return-void

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/co;->gXq:Lcom/tencent/mm/ui/contact/profile/cl;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    const/4 v0, 0x5

    const v1, 0x7f07041d

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/mm/ui/base/bx;->r(III)Landroid/view/MenuItem;

    goto :goto_0
.end method
