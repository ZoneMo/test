.class final Lcom/tencent/mm/ui/contact/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ev;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

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
    const/16 v2, 0x3008

    .line 225
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Boolean;)Z

    move-result v0

    .line 230
    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ev;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->d(Lcom/tencent/mm/ui/contact/SnsAddressUI;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ev;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->d(Lcom/tencent/mm/ui/contact/SnsAddressUI;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ev;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ev;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ev;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    const v3, 0x7f0701a5

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;Ljava/lang/String;J)Lcom/tencent/mm/ui/base/ce;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->a(Lcom/tencent/mm/ui/contact/SnsAddressUI;Lcom/tencent/mm/ui/base/ce;)Lcom/tencent/mm/ui/base/ce;

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    return-void
.end method
