.class public Lcom/tencent/mm/plugin/webwx/ui/WebWeiXinIntroductionUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private ffe:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 2

    .prologue
    .line 34
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/webwx/ui/WebWeiXinIntroductionUI;->vT(Ljava/lang/String;)V

    .line 36
    const v0, 0x7f0a09af

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/webwx/ui/WebWeiXinIntroductionUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/webwx/ui/WebWeiXinIntroductionUI;->ffe:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/tencent/mm/plugin/webwx/ui/WebWeiXinIntroductionUI;->ffe:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/plugin/webwx/ui/d;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/webwx/ui/d;-><init>(Lcom/tencent/mm/plugin/webwx/ui/WebWeiXinIntroductionUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Lcom/tencent/mm/plugin/webwx/ui/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/webwx/ui/e;-><init>(Lcom/tencent/mm/plugin/webwx/ui/WebWeiXinIntroductionUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/webwx/ui/WebWeiXinIntroductionUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 61
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f030339

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/webwx/ui/WebWeiXinIntroductionUI;->FR()V

    .line 29
    return-void
.end method
