.class final Lcom/tencent/mm/ui/account/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic grc:Lcom/tencent/mm/ui/account/LoginHistoryUI;

.field final synthetic grg:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/LoginHistoryUI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/tencent/mm/ui/account/cg;->grc:Lcom/tencent/mm/ui/account/LoginHistoryUI;

    iput p2, p0, Lcom/tencent/mm/ui/account/cg;->grg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 329
    iget v1, p0, Lcom/tencent/mm/ui/account/cg;->grg:I

    if-nez v1, :cond_3

    .line 330
    invoke-static {}, Lcom/tencent/mm/x/b;->Bj()Z

    move-result v0

    if-nez v0, :cond_2

    .line 331
    const/4 v0, 0x7

    .line 347
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    or-int/lit8 v0, v0, 0x8

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/account/cg;->grc:Lcom/tencent/mm/ui/account/LoginHistoryUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/account/av;->y(Landroid/content/Context;I)V

    .line 351
    return-void

    .line 333
    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 336
    :cond_3
    iget v1, p0, Lcom/tencent/mm/ui/account/cg;->grg:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    iget v1, p0, Lcom/tencent/mm/ui/account/cg;->grg:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 337
    :cond_4
    const/4 v0, 0x2

    .line 339
    :cond_5
    iget v1, p0, Lcom/tencent/mm/ui/account/cg;->grg:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 340
    or-int/lit8 v0, v0, 0x4

    .line 342
    :cond_6
    iget v1, p0, Lcom/tencent/mm/ui/account/cg;->grg:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 343
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
