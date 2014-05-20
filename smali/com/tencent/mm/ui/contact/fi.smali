.class final Lcom/tencent/mm/ui/contact/fi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic gVO:Lcom/tencent/mm/ui/contact/VoipAddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/fi;->gVO:Lcom/tencent/mm/ui/contact/VoipAddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x2b19

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x2

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fi;->gVO:Lcom/tencent/mm/ui/contact/VoipAddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->a(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fi;->gVO:Lcom/tencent/mm/ui/contact/VoipAddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->a(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v3, p3, v0

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fi;->gVO:Lcom/tencent/mm/ui/contact/VoipAddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->b(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Lcom/tencent/mm/ui/contact/fe;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/contact/fe;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 197
    if-nez v0, :cond_1

    .line 198
    const-string v0, "MicroMsg.VoipAddressUI"

    const-string v4, "on contactLV ItemClick, the item contact shoud not be null. count:%d, pos:%d "

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/fi;->gVO:Lcom/tencent/mm/ui/contact/VoipAddressUI;

    invoke-static {v5}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->b(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Lcom/tencent/mm/ui/contact/fe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/ui/contact/fe;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_1
    new-instance v3, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v3}, Lcom/tencent/mm/c/a/ia;-><init>()V

    .line 203
    iget-object v4, v3, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    const/4 v5, 0x5

    iput v5, v4, Lcom/tencent/mm/c/a/ib;->bNk:I

    .line 204
    iget-object v4, v3, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/c/a/ib;->bNl:Ljava/lang/String;

    .line 205
    iget-object v0, v3, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/fi;->gVO:Lcom/tencent/mm/ui/contact/VoipAddressUI;

    iput-object v4, v0, Lcom/tencent/mm/c/a/ib;->context:Landroid/content/Context;

    .line 206
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/fi;->gVO:Lcom/tencent/mm/ui/contact/VoipAddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->c(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 207
    :goto_1
    iget-object v4, p0, Lcom/tencent/mm/ui/contact/fi;->gVO:Lcom/tencent/mm/ui/contact/VoipAddressUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->d(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    iget-object v4, v3, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v1, v4, Lcom/tencent/mm/c/a/ib;->bRz:I

    .line 209
    sget-object v4, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v4, v8, v5}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 214
    :goto_2
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 206
    goto :goto_1

    .line 211
    :cond_3
    iget-object v4, v3, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v7, v4, Lcom/tencent/mm/c/a/ib;->bRz:I

    .line 212
    sget-object v4, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v4, v8, v5}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto :goto_2
.end method
