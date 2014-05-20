.class final Lcom/tencent/mm/ui/contact/profile/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gXl:Lcom/tencent/mm/ui/contact/profile/cb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/cc;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 429
    new-instance v0, Lcom/tencent/mm/ui/tools/dl;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/cc;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->b(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    .line 430
    new-instance v1, Lcom/tencent/mm/ui/contact/profile/cd;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/cd;-><init>(Lcom/tencent/mm/ui/contact/profile/cc;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/ca;)V

    .line 442
    new-instance v1, Lcom/tencent/mm/ui/contact/profile/ce;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/ce;-><init>(Lcom/tencent/mm/ui/contact/profile/cc;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 507
    new-instance v1, Lcom/tencent/mm/ui/contact/profile/ch;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/ch;-><init>(Lcom/tencent/mm/ui/contact/profile/cc;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 551
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    .line 552
    const/4 v0, 0x1

    return v0
.end method
