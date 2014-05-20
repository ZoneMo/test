.class final Lcom/tencent/mm/ui/contact/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 558
    if-eqz v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->b(Lcom/tencent/mm/ui/contact/SnsAddressUI;)Lcom/tencent/mm/ui/contact/en;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/contact/en;->wN(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->b(Lcom/tencent/mm/ui/contact/SnsAddressUI;)Lcom/tencent/mm/ui/contact/en;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/en;->aKU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dV(Z)V

    .line 570
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->b(Lcom/tencent/mm/ui/contact/SnsAddressUI;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    const-string v1, "%s(%d/%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    const v4, 0x7f0709c4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->b(Lcom/tencent/mm/ui/contact/SnsAddressUI;)Lcom/tencent/mm/ui/contact/en;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ui/contact/en;->VL()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->c(Lcom/tencent/mm/ui/contact/SnsAddressUI;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    sget v4, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eut:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->wV(Ljava/lang/String;)V

    .line 574
    :cond_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/er;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dV(Z)V

    goto :goto_0
.end method
