.class final Lcom/tencent/mm/ui/tools/v;
.super Lcom/tencent/mm/ui/base/ar;
.source "SourceFile"


# instance fields
.field private dDF:Landroid/widget/BaseAdapter;

.field private dey:Landroid/view/View;

.field private gAq:Landroid/view/View;

.field private gAr:Landroid/widget/AdapterView$OnItemClickListener;

.field private hhi:Landroid/view/View$OnClickListener;

.field final synthetic hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

.field private hhw:Landroid/widget/ListView;

.field private hhx:Landroid/widget/Button;

.field private hhy:Landroid/widget/Button;

.field private hhz:Landroid/view/View$OnClickListener;

.field private kb:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/v;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    .line 518
    sget v0, Lcom/tencent/mm/o;->bIN:I

    invoke-direct {p0, p2, v0}, Lcom/tencent/mm/ui/base/ar;-><init>(Landroid/content/Context;I)V

    .line 519
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/v;->mContext:Landroid/content/Context;

    .line 520
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/k;->aSi:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/v;->dey:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->amz:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/v;->kb:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->ams:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhw:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->amj:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhx:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->amk:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhy:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->amA:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/v;->gAq:Landroid/view/View;

    .line 521
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/v;->dDF:Landroid/widget/BaseAdapter;

    .line 550
    return-void
.end method

.method public final en(Z)V
    .locals 1
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhx:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhx:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhy:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhy:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 571
    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->finish()V

    .line 576
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 525
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/ar;->onCreate(Landroid/os/Bundle;)V

    .line 526
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->dey:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/v;->setContentView(Landroid/view/View;)V

    .line 527
    return-void
.end method

.method public final p(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/v;->hhz:Landroid/view/View$OnClickListener;

    .line 558
    return-void
.end method

.method public final q(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/v;->hhi:Landroid/view/View$OnClickListener;

    .line 562
    return-void
.end method

.method public final setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/v;->gAr:Landroid/widget/AdapterView$OnItemClickListener;

    .line 554
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 541
    if-eqz p1, :cond_0

    .line 542
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/v;->mTitle:Ljava/lang/String;

    .line 546
    :goto_0
    return-void

    .line 545
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/v;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public final show()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 580
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 581
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->gAq:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->kb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->gAr:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhw:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/v;->gAr:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->dDF:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhw:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/v;->dDF:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhx:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhx:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/v;->hhz:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhy:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->hhy:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/v;->hhi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    :cond_3
    invoke-super {p0}, Lcom/tencent/mm/ui/base/ar;->show()V

    .line 602
    return-void

    .line 584
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->gAq:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->kb:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/v;->kb:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/v;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
