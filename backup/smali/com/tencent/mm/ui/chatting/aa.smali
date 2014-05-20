.class final Lcom/tencent/mm/ui/chatting/aa;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field dUe:Landroid/widget/LinearLayout;

.field dYO:Ljava/util/List;

.field gKP:Lcom/tencent/mm/ui/chatting/ab;

.field gKg:Landroid/widget/TextView;

.field gKo:Lcom/tencent/mm/ui/chatting/ChattingItemFooter;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 337
    new-instance v0, Lcom/tencent/mm/ui/chatting/ab;

    invoke-direct {v0}, Lcom/tencent/mm/ui/chatting/ab;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/aa;->dYO:Ljava/util/List;

    .line 344
    return-void
.end method


# virtual methods
.method public final ap(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/cf;
    .locals 3
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 368
    new-instance v2, Lcom/tencent/mm/ui/chatting/z;

    invoke-direct {v2}, Lcom/tencent/mm/ui/chatting/z;-><init>()V

    .line 369
    iput-object p1, v2, Lcom/tencent/mm/ui/chatting/z;->dYA:Landroid/view/View;

    .line 370
    const v1, 0x7f0a0045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/chatting/z;->dYB:Landroid/widget/TextView;

    .line 371
    const v1, 0x7f0a01da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/chatting/z;->gKO:Landroid/widget/TextView;

    .line 372
    const v1, 0x7f0a01db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/ui/chatting/z;->dYC:Landroid/view/View;

    .line 373
    const v1, 0x7f0a01d1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/chatting/z;->dYD:Landroid/widget/ImageView;

    .line 374
    const v1, 0x7f0a01dc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v2, Lcom/tencent/mm/ui/chatting/z;->dYF:Landroid/widget/ProgressBar;

    .line 375
    const v1, 0x7f0a01dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/ui/chatting/z;->dYG:Landroid/view/View;

    .line 376
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 378
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/aa;->dYO:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    return-object p0
.end method
