.class final Lcom/tencent/mm/ui/chatting/jy;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field protected dkR:Landroid/widget/TextView;

.field protected gQo:Landroid/widget/TextView;

.field protected gQp:Landroid/widget/TextView;

.field protected gQq:Landroid/widget/Button;

.field protected gQr:Landroid/widget/Button;

.field protected gQs:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 369
    return-void
.end method


# virtual methods
.method public final at(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/jy;
    .locals 1
    .parameter

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 381
    const v0, 0x7f0a01ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/jy;->dkR:Landroid/widget/TextView;

    .line 382
    const v0, 0x7f0a0222

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/jy;->gQo:Landroid/widget/TextView;

    .line 383
    const v0, 0x7f0a0223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/jy;->gQp:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f0a0224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/jy;->gQq:Landroid/widget/Button;

    .line 385
    const v0, 0x7f0a0225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/jy;->gQr:Landroid/widget/Button;

    .line 386
    const v0, 0x7f0a0226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/jy;->gQs:Landroid/widget/ImageView;

    .line 387
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/jy;->daW:Landroid/widget/CheckBox;

    .line 388
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/jy;->eyN:Landroid/view/View;

    .line 389
    return-object p0
.end method
