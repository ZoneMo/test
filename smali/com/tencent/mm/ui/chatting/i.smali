.class final Lcom/tencent/mm/ui/chatting/i;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

.field dSt:Landroid/widget/ProgressBar;

.field gKd:Landroid/widget/ImageView;

.field gKe:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 346
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 352
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->dkq:Landroid/widget/TextView;

    .line 353
    const v0, 0x7f0a01f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    .line 355
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->daW:Landroid/widget/CheckBox;

    .line 356
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->eyN:Landroid/view/View;

    .line 359
    const v0, 0x7f0a01f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->gKe:Landroid/widget/ImageView;

    .line 360
    if-eqz p2, :cond_1

    .line 361
    const/16 v0, 0xe

    iput v0, p0, Lcom/tencent/mm/ui/chatting/i;->type:I

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->gKd:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->gKd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    :cond_0
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->gMy:Landroid/widget/TextView;

    .line 375
    return-object p0

    .line 364
    :cond_1
    const v0, 0x7f0a021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->dSt:Landroid/widget/ProgressBar;

    .line 365
    const v0, 0x7f0a0215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/i;->gKj:Landroid/widget/ImageView;

    .line 366
    const/16 v0, 0xf

    iput v0, p0, Lcom/tencent/mm/ui/chatting/i;->type:I

    goto :goto_0
.end method
