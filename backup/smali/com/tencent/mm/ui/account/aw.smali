.class final Lcom/tencent/mm/ui/account/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic cGV:Landroid/content/Context;

.field final synthetic gqd:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/tencent/mm/ui/account/aw;->gqd:I

    iput-object p2, p0, Lcom/tencent/mm/ui/account/aw;->cGV:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/tencent/mm/ui/account/aw;->gqd:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/ui/account/aw;->cGV:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->buS:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 47
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/account/aw;->gqd:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/ui/account/aw;->cGV:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->buT:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 50
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/account/aw;->gqd:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 51
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/ui/account/aw;->cGV:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->buR:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 53
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/account/aw;->gqd:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    .line 54
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/ui/account/aw;->cGV:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->byK:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/ui/base/bx;->a(ILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 56
    :cond_3
    return-void
.end method
