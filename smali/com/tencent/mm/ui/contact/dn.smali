.class final Lcom/tencent/mm/ui/contact/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 724
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->b(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/ui/contact/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->aKT()Ljava/util/ArrayList;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->m(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/SelectContactUI;->n(Lcom/tencent/mm/ui/contact/SelectContactUI;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/lang/String;Ljava/util/List;)V

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->o(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->aal()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/SelectContactUI;->p(Lcom/tencent/mm/ui/contact/SelectContactUI;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/ui/contact/SendContactCardUI;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 733
    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 735
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->c(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->q(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/contact/SelectContactUI;->b(Lcom/tencent/mm/ui/contact/SelectContactUI;Z)Z

    .line 739
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dn;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->r(Lcom/tencent/mm/ui/contact/SelectContactUI;)V

    goto :goto_0
.end method
