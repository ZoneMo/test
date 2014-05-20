.class final Lcom/tencent/mm/ui/chatting/k;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field protected gKi:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 369
    return-void
.end method


# virtual methods
.method public final am(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/k;
    .locals 1
    .parameter

    .prologue
    .line 372
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 374
    const v0, 0x7f0a01e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/k;->gKi:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/k;->gMy:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/k;->daW:Landroid/widget/CheckBox;

    .line 378
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/k;->eyN:Landroid/view/View;

    .line 380
    return-object p0
.end method
