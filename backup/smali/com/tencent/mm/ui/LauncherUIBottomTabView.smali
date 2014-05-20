.class public Lcom/tencent/mm/ui/LauncherUIBottomTabView;
.super Lcom/tencent/mm/ui/LauncherUITabView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/LauncherUITabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/LauncherUITabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/tencent/mm/ui/az;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/az;-><init>(Lcom/tencent/mm/ui/LauncherUITabView;)V

    .line 31
    const v2, 0x7f030156

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    .line 32
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    const v2, 0x7f0a0448

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    .line 35
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    const v2, 0x7f0a044a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/az;->gkk:Landroid/widget/TextView;

    .line 36
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    const v2, 0x7f0a0449

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ui/az;->gmI:Landroid/view/View;

    .line 37
    iget-object v0, v1, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    const v2, 0x7f0a044c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    .line 38
    return-object v1
.end method

.method protected final aEH()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method protected final aZ(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->fiI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->mu(I)V

    .line 154
    return-void
.end method

.method public final b(IF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    return-void
.end method

.method protected final c(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p0, v4, p1}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;

    move-result-object v0

    .line 42
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    const v2, 0x7f07018e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 43
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v2, 0x7f02058a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 46
    iget-object v2, v0, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-object v0
.end method

.method protected final d(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;
    .locals 5
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;

    move-result-object v0

    .line 52
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    const v2, 0x7f07018f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v2, 0x7f020588

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 56
    iget-object v2, v0, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-object v0
.end method

.method protected final e(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;
    .locals 5
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;

    move-result-object v0

    .line 62
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    const v2, 0x7f070190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v2, 0x7f02058c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 66
    iget-object v2, v0, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-object v0
.end method

.method protected final f(Landroid/widget/LinearLayout;)Lcom/tencent/mm/ui/az;
    .locals 5
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->a(ILandroid/view/ViewGroup;)Lcom/tencent/mm/ui/az;

    move-result-object v0

    .line 72
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    const v2, 0x7f070191

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v1, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v2, 0x7f02058e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 76
    iget-object v2, v0, Lcom/tencent/mm/ui/az;->elC:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-object v0
.end method

.method public final mu(I)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c0032

    const v2, 0x7f0c0031

    .line 82
    iput p1, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->fiI:I

    .line 85
    if-nez p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmy:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmy:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v1, 0x7f020589

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmz:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmz:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v1, 0x7f020587

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmA:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmA:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v1, 0x7f02058b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmB:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmB:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v1, 0x7f02058d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :goto_3
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmy:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmy:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v1, 0x7f02058a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmz:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmz:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v1, 0x7f020588

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmA:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmA:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v1, 0x7f02058c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmB:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUIBottomTabView;->gmB:Lcom/tencent/mm/ui/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/az;->daU:Landroid/widget/ImageView;

    const v1, 0x7f02058e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method protected final mv(I)V
    .locals 0
    .parameter

    .prologue
    .line 150
    return-void
.end method
