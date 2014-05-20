.class final Lcom/tencent/mm/ui/chatting/lx;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field dSt:Landroid/widget/ProgressBar;

.field fng:Landroid/view/View;

.field gRC:Lcom/tencent/mm/ui/base/MMTextView;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 298
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 303
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lx;->dkq:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lx;->gMy:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f0a008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMTextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    .line 307
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lx;->daW:Landroid/widget/CheckBox;

    .line 308
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lx;->eyN:Landroid/view/View;

    .line 309
    const v0, 0x7f0a0032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lx;->fng:Landroid/view/View;

    .line 310
    if-eqz p2, :cond_0

    .line 311
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/chatting/lx;->type:I

    .line 318
    :goto_0
    return-object p0

    .line 313
    :cond_0
    const v0, 0x7f0a0215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lx;->gKj:Landroid/widget/ImageView;

    .line 314
    const v0, 0x7f0a021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/lx;->dSt:Landroid/widget/ProgressBar;

    .line 315
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/ui/chatting/lx;->type:I

    goto :goto_0
.end method
