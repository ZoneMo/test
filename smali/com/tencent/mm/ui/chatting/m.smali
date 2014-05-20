.class final Lcom/tencent/mm/ui/chatting/m;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field protected daV:Landroid/widget/TextView;

.field protected djS:Landroid/view/View;

.field protected dkR:Landroid/widget/TextView;

.field protected dkS:Landroid/widget/TextView;

.field protected dmn:Landroid/widget/ImageView;

.field protected gKg:Landroid/widget/TextView;

.field protected gKk:Landroid/widget/TextView;

.field protected gKl:Landroid/widget/ImageView;

.field protected gKm:Landroid/widget/TextView;

.field protected gKn:Landroid/widget/ImageView;

.field protected gKo:Lcom/tencent/mm/ui/chatting/ChattingItemFooter;

.field protected gKp:Landroid/widget/ImageView;

.field protected gKq:Landroid/widget/LinearLayout;

.field protected gKr:Landroid/view/ViewGroup;

.field protected gKs:Landroid/widget/TextView;

.field protected gKt:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 1503
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 1504
    return-void
.end method


# virtual methods
.method public final ao(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/m;
    .locals 1
    .parameter

    .prologue
    .line 1527
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 1529
    const v0, 0x7f0a01e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->dmn:Landroid/widget/ImageView;

    .line 1530
    const v0, 0x7f0a01eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->daV:Landroid/widget/TextView;

    .line 1531
    const v0, 0x7f0a01e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKk:Landroid/widget/TextView;

    .line 1532
    const v0, 0x7f0a01ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->dkR:Landroid/widget/TextView;

    .line 1533
    const v0, 0x7f0a01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->dkS:Landroid/widget/TextView;

    .line 1534
    const v0, 0x7f0a01ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKl:Landroid/widget/ImageView;

    .line 1535
    const v0, 0x7f0a021e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKm:Landroid/widget/TextView;

    .line 1536
    const v0, 0x7f0a021d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->djS:Landroid/view/View;

    .line 1537
    const v0, 0x7f0a01ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKn:Landroid/widget/ImageView;

    .line 1538
    const v0, 0x7f0a01d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKg:Landroid/widget/TextView;

    .line 1539
    const v0, 0x7f0a01ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKp:Landroid/widget/ImageView;

    .line 1540
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->daW:Landroid/widget/CheckBox;

    .line 1541
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->eyN:Landroid/view/View;

    .line 1543
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gMy:Landroid/widget/TextView;

    .line 1544
    const v0, 0x7f0a01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKo:Lcom/tencent/mm/ui/chatting/ChattingItemFooter;

    .line 1545
    const v0, 0x7f0a01e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKq:Landroid/widget/LinearLayout;

    .line 1546
    const v0, 0x7f0a01e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKr:Landroid/view/ViewGroup;

    .line 1547
    const v0, 0x7f0a01e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKs:Landroid/widget/TextView;

    .line 1548
    const v0, 0x7f0a01e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/m;->gKt:Landroid/widget/LinearLayout;

    .line 1550
    return-object p0
.end method
