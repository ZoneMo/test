.class final Lcom/tencent/mm/ui/tools/r;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

.field private hhm:Ljava/util/List;

.field private hhn:Lcom/tencent/mm/ui/tools/w;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/r;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhm:Ljava/util/List;

    .line 630
    sget-object v0, Lcom/tencent/mm/ui/tools/w;->hhA:Lcom/tencent/mm/ui/tools/w;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhn:Lcom/tencent/mm/ui/tools/w;

    .line 633
    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;

    .line 634
    return-void
.end method


# virtual methods
.method public final M(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/r;->hhm:Ljava/util/List;

    .line 638
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/tools/w;)V
    .locals 0
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/r;->hhn:Lcom/tencent/mm/ui/tools/w;

    .line 706
    return-void
.end method

.method public final aMM()Lcom/tencent/mm/ui/tools/w;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhn:Lcom/tencent/mm/ui/tools/w;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhm:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/r;->nV(I)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 690
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 643
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aSj:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 645
    new-instance v0, Lcom/tencent/mm/ui/tools/s;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/r;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {v0, v1, p2}, Lcom/tencent/mm/ui/tools/s;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/view/View;)V

    .line 646
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 650
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/r;->nV(I)Lcom/tencent/mm/ui/tools/t;

    move-result-object v4

    .line 651
    iget-object v0, v4, Lcom/tencent/mm/ui/tools/t;->hht:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 652
    new-instance v0, Lcom/tencent/mm/ui/tools/u;

    iget-object v5, p0, Lcom/tencent/mm/ui/tools/r;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {v0, v5}, Lcom/tencent/mm/ui/tools/u;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V

    new-array v5, v2, [Lcom/tencent/mm/ui/tools/t;

    aput-object v4, v5, v3

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/tools/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 654
    :cond_1
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->ddT:Landroid/widget/ImageView;

    iget-object v5, v4, Lcom/tencent/mm/ui/tools/t;->hht:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->ddV:Landroid/widget/TextView;

    iget-object v5, v4, Lcom/tencent/mm/ui/tools/t;->hhs:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    if-eqz v4, :cond_9

    iget-boolean v0, v4, Lcom/tencent/mm/ui/tools/t;->hhu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v4, Lcom/tencent/mm/ui/tools/t;->hhv:Z

    if-nez v0, :cond_2

    iget-boolean v0, v4, Lcom/tencent/mm/ui/tools/t;->hhu:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v4, Lcom/tencent/mm/ui/tools/t;->doL:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->d(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 657
    :cond_2
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhq:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 659
    iget-object v5, v1, Lcom/tencent/mm/ui/tools/s;->hhq:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    instance-of v6, v0, Lcom/tencent/mm/ui/tools/t;

    if-eqz v6, :cond_8

    check-cast v0, Lcom/tencent/mm/ui/tools/t;

    iget-object v6, v0, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-boolean v0, v0, Lcom/tencent/mm/ui/tools/t;->hhu:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v4, Lcom/tencent/mm/ui/tools/t;->hhu:Z

    if-eqz v0, :cond_8

    :cond_4
    move v0, v2

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 675
    :cond_5
    :goto_2
    iget-boolean v0, v4, Lcom/tencent/mm/ui/tools/t;->hhu:Z

    if-eqz v0, :cond_c

    .line 676
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hho:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 682
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhq:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 685
    :cond_6
    return-object p2

    .line 648
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/s;

    move-object v1, v0

    goto/16 :goto_0

    :cond_8
    move v0, v3

    .line 659
    goto :goto_1

    .line 661
    :cond_9
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhq:Landroid/widget/RadioButton;

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 663
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/tools/r;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-static {v5}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->h(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhn:Lcom/tencent/mm/ui/tools/w;

    sget-object v5, Lcom/tencent/mm/ui/tools/w;->hhA:Lcom/tencent/mm/ui/tools/w;

    if-ne v0, v5, :cond_a

    .line 665
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    sget v5, Lcom/tencent/mm/n;->bdz:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 666
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 667
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhn:Lcom/tencent/mm/ui/tools/w;

    sget-object v5, Lcom/tencent/mm/ui/tools/w;->hhB:Lcom/tencent/mm/ui/tools/w;

    if-ne v0, v5, :cond_b

    .line 668
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    sget v5, Lcom/tencent/mm/n;->bdC:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 669
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 670
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhn:Lcom/tencent/mm/ui/tools/w;

    sget-object v5, Lcom/tencent/mm/ui/tools/w;->hhC:Lcom/tencent/mm/ui/tools/w;

    if-ne v0, v5, :cond_5

    .line 671
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    sget v5, Lcom/tencent/mm/n;->bdA:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 672
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hhp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 678
    :cond_c
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/s;->hho:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public final nV(I)Lcom/tencent/mm/ui/tools/t;
    .locals 1
    .parameter

    .prologue
    .line 695
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhm:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/r;->hhm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/t;

    goto :goto_0
.end method
