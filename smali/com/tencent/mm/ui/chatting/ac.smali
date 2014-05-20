.class final Lcom/tencent/mm/ui/chatting/ac;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field cPP:Landroid/widget/TextView;

.field dkS:Landroid/widget/TextView;

.field gKS:Landroid/widget/ImageView;

.field gKT:Landroid/widget/TextView;

.field gKU:Landroid/widget/TextView;

.field gKV:Landroid/widget/TextView;

.field gKd:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 285
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 290
    const v0, 0x7f0a01f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->gKd:Landroid/widget/ImageView;

    .line 291
    const v0, 0x7f0a01f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->gKS:Landroid/widget/ImageView;

    .line 292
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->dkq:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f0a01f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->gKT:Landroid/widget/TextView;

    .line 294
    const v0, 0x7f0a01f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->gKU:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f0a01f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->cPP:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f0a01f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->dkS:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0a01f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->gKV:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->gMy:Landroid/widget/TextView;

    .line 300
    const v0, 0x7f0a01e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->gki:Landroid/view/View;

    .line 301
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->daW:Landroid/widget/CheckBox;

    .line 302
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->eyN:Landroid/view/View;

    .line 304
    if-eqz p2, :cond_1

    const/16 v0, 0xc

    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/chatting/ac;->type:I

    .line 305
    if-nez p2, :cond_0

    .line 307
    const v0, 0x7f0a0215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ac;->gKj:Landroid/widget/ImageView;

    .line 310
    :cond_0
    return-object p0

    .line 304
    :cond_1
    const/16 v0, 0xd

    goto :goto_0
.end method
