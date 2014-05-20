.class public final Lcom/tencent/mm/ui/account/mobile/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private gvQ:Z

.field private gvR:Z

.field protected gvS:Landroid/widget/EditText;

.field protected gvr:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvQ:Z

    .line 11
    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvR:Z

    .line 17
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvS:Landroid/widget/EditText;

    .line 18
    iput-object p2, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvr:Landroid/widget/EditText;

    .line 19
    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvQ:Z

    .line 20
    invoke-virtual {p2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvR:Z

    .line 21
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/mobile/h;->df()V

    .line 22
    return-void
.end method

.method private df()V
    .locals 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvQ:Z

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvS:Landroid/widget/EditText;

    sget v1, Lcom/tencent/mm/h;->afi:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvr:Landroid/widget/EditText;

    sget v1, Lcom/tencent/mm/h;->afk:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvS:Landroid/widget/EditText;

    sget v1, Lcom/tencent/mm/h;->afj:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvr:Landroid/widget/EditText;

    sget v1, Lcom/tencent/mm/h;->afl:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvS:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 37
    iput-boolean p2, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvQ:Z

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvr:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 40
    iput-boolean p2, p0, Lcom/tencent/mm/ui/account/mobile/h;->gvR:Z

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/mobile/h;->df()V

    .line 43
    return-void
.end method
