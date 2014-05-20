.class final Lcom/tencent/mm/ui/chatting/ke;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

.field dSt:Landroid/widget/ProgressBar;

.field gKd:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 291
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;
    .locals 2
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0a008e

    .line 295
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 296
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->dkq:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0a01f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    .line 299
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->daW:Landroid/widget/CheckBox;

    .line 300
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->eyN:Landroid/view/View;

    .line 301
    if-eqz p2, :cond_1

    .line 302
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->gMy:Landroid/widget/TextView;

    .line 303
    const/16 v0, 0xe

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ke;->type:I

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->gKd:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->gKd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_0
    return-object p0

    .line 306
    :cond_1
    const v0, 0x7f0a021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->dSt:Landroid/widget/ProgressBar;

    .line 307
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->gMy:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f0a0215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ke;->gKj:Landroid/widget/ImageView;

    .line 309
    const/16 v0, 0xf

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ke;->type:I

    goto :goto_0
.end method
