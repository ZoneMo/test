.class final Lcom/tencent/mm/ui/contact/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/dt;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1013
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dt;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->u(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dt;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->v(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z

    .line 1019
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dt;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->w(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dt;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->w(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dt;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/dt;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/dt;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    const v3, 0x7f0701a5

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/contact/SelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;Ljava/lang/String;J)Lcom/tencent/mm/ui/base/ce;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(Lcom/tencent/mm/ui/contact/SelectContactUI;Lcom/tencent/mm/ui/base/ce;)Lcom/tencent/mm/ui/base/ce;

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1029
    return-void
.end method
