.class final Lcom/tencent/mm/ui/chatting/lw;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field dkR:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 175
    return-void
.end method


# virtual methods
.method public final aw(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/cf;
    .locals 1
    .parameter

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 179
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lw;->dkq:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lw;->gMy:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0a008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lw;->dkR:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lw;->daW:Landroid/widget/CheckBox;

    .line 184
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lw;->eyN:Landroid/view/View;

    .line 185
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/chatting/lw;->type:I

    .line 187
    return-object p0
.end method
