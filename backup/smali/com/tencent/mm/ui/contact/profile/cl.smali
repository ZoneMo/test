.class final Lcom/tencent/mm/ui/contact/profile/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gXl:Lcom/tencent/mm/ui/contact/profile/cb;

.field final synthetic gXo:Z

.field final synthetic gXp:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cb;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/cl;->gXo:Z

    iput-boolean p2, p0, Lcom/tencent/mm/ui/contact/profile/cl;->gXp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 579
    new-instance v0, Lcom/tencent/mm/ui/tools/dl;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/cl;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->b(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    .line 580
    new-instance v1, Lcom/tencent/mm/ui/contact/profile/cm;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/cm;-><init>(Lcom/tencent/mm/ui/contact/profile/cl;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 607
    new-instance v1, Lcom/tencent/mm/ui/contact/profile/co;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/co;-><init>(Lcom/tencent/mm/ui/contact/profile/cl;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 631
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    .line 632
    const/4 v0, 0x1

    return v0
.end method
