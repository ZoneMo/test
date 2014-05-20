.class final Lcom/tencent/mm/ui/account/mobile/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic gxa:Lcom/tencent/mm/ui/account/mobile/di;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/mobile/di;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 398
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    sget v2, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 399
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->bTR:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/x/b;->fZ(Ljava/lang/String;)Z

    move-result v0

    .line 400
    if-eqz v0, :cond_0

    .line 401
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    iget-object v2, v2, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    sget v3, Lcom/tencent/mm/n;->bfE:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->f(Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 405
    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    iget-boolean v1, v1, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->grV:Z

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    sget v2, Lcom/tencent/mm/n;->bvC:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 408
    :cond_1
    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    iget-boolean v0, v0, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->grU:Z

    if-eqz v0, :cond_2

    .line 410
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    sget v2, Lcom/tencent/mm/n;->bry:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 412
    :cond_2
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/dj;->gxa:Lcom/tencent/mm/ui/account/mobile/di;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/mobile/di;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    sget v2, Lcom/tencent/mm/n;->bvj:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 415
    :cond_3
    return-void
.end method
