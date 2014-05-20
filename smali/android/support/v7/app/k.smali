.class Landroid/support/v7/app/k;
.super Landroid/support/v7/app/ActionBar;
.source "SourceFile"


# instance fields
.field private bR:Ljava/util/ArrayList;

.field private gZ:Landroid/support/v7/app/ActionBarActivity;

.field private hA:Landroid/support/v7/app/l;

.field private hB:I

.field private hC:Z

.field private hD:Ljava/util/ArrayList;

.field private hE:I

.field private hF:Z

.field private hG:I

.field private hH:Z

.field private hI:Z

.field private hJ:Z

.field private hK:Z

.field private hL:Z

.field private hM:Landroid/support/v7/app/a;

.field private hs:Landroid/content/Context;

.field private ht:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private hu:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private hv:Landroid/view/ViewGroup;

.field private hw:Landroid/support/v7/internal/widget/ActionBarView;

.field private hx:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private hy:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/k;->bR:Ljava/util/ArrayList;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/k;->hB:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/k;->hD:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/k;->mHandler:Landroid/os/Handler;

    .line 96
    iput v2, p0, Landroid/support/v7/app/k;->hG:I

    .line 102
    iput-boolean v1, p0, Landroid/support/v7/app/k;->hK:Z

    .line 108
    iput-object p1, p0, Landroid/support/v7/app/k;->gZ:Landroid/support/v7/app/ActionBarActivity;

    .line 109
    iput-object p1, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Landroid/support/v7/app/k;->hM:Landroid/support/v7/app/a;

    .line 111
    iget-object v3, p0, Landroid/support/v7/app/k;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v0, Lcom/tencent/mm/i;->akM:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/app/k;->ht:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroid/support/v7/app/k;->ht:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->ht:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/app/ActionBar;)V

    :cond_0
    sget v0, Lcom/tencent/mm/i;->akJ:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    sget v0, Lcom/tencent/mm/i;->akQ:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/k;->hx:Landroid/support/v7/internal/widget/ActionBarContextView;

    sget v0, Lcom/tencent/mm/i;->akL:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/app/k;->hu:Landroid/support/v7/internal/widget/ActionBarContainer;

    sget v0, Lcom/tencent/mm/i;->aNx:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->hu:Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    :cond_1
    sget v0, Lcom/tencent/mm/i;->aMi:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->hx:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->hu:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v3, p0, Landroid/support/v7/app/k;->hx:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarContextView;)V

    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->cJ()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/support/v7/app/k;->hE:I

    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iput-boolean v1, p0, Landroid/support/v7/app/k;->hC:Z

    :cond_4
    iget-object v3, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/internal/view/a;->d(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->bt()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->br()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/k;->g(Z)V

    iget-object v0, p0, Landroid/support/v7/app/k;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/k;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    return-void

    :cond_7
    move v0, v2

    .line 111
    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/app/k;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private bk()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 961
    iget-boolean v2, p0, Landroid/support/v7/app/k;->hH:Z

    iget-boolean v3, p0, Landroid/support/v7/app/k;->hI:Z

    iget-boolean v4, p0, Landroid/support/v7/app/k;->hJ:Z

    if-nez v4, :cond_4

    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    move v2, v1

    .line 963
    :goto_0
    if-eqz v2, :cond_6

    .line 964
    iget-boolean v2, p0, Landroid/support/v7/app/k;->hK:Z

    if-nez v2, :cond_3

    .line 965
    iput-boolean v0, p0, Landroid/support/v7/app/k;->hK:Z

    .line 966
    iget-object v2, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v2, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/k;->bl()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/b;->Ys:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/b;->Yr:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 974
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v0

    .line 961
    goto :goto_0

    :cond_5
    move v0, v1

    .line 966
    goto :goto_1

    .line 969
    :cond_6
    iget-boolean v2, p0, Landroid/support/v7/app/k;->hK:Z

    if-eqz v2, :cond_3

    .line 970
    iput-boolean v1, p0, Landroid/support/v7/app/k;->hK:Z

    .line 971
    iget-object v2, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v2, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/k;->bl()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_3
    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/b;->Yu:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    iget-object v1, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_3

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/b;->Yt:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method private g(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    iput-boolean p1, p0, Landroid/support/v7/app/k;->hF:Z

    .line 158
    iget-boolean v0, p0, Landroid/support/v7/app/k;->hF:Z

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 160
    iget-object v0, p0, Landroid/support/v7/app/k;->hu:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 165
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 166
    :goto_1
    iget-object v3, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 167
    if-eqz v0, :cond_3

    .line 168
    iget-object v3, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 173
    :cond_0
    :goto_2
    iget-object v3, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    iget-boolean v4, p0, Landroid/support/v7/app/k;->hF:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarView;->u(Z)V

    .line 174
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k;->hu:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 163
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v3, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 165
    goto :goto_1

    .line 170
    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 173
    goto :goto_3
.end method

.method private setDisplayOptions(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 295
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/k;->hC:Z

    .line 298
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 299
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/app/c;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 392
    iget-object v0, p0, Landroid/support/v7/app/k;->bR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v0, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Landroid/support/v7/app/k;->hF:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b(Landroid/support/v7/app/c;Z)V

    iget-object v0, p0, Landroid/support/v7/app/k;->bR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/l;

    invoke-virtual {v0}, Landroid/support/v7/app/l;->bm()Landroid/support/v7/app/d;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action Bar Tab must have a Callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Landroid/support/v7/app/k;->hu:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v7/app/l;->x(I)V

    iget-object v3, p0, Landroid/support/v7/app/k;->bR:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v7/app/k;->bR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/k;->bR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/l;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/l;->x(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/c;)V

    .line 393
    :cond_5
    return-void
.end method

.method public final aR()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->aR()V

    .line 201
    return-void
.end method

.method public final aS()V
    .locals 2

    .prologue
    .line 308
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/k;->setDisplayOptions(II)V

    .line 309
    return-void
.end method

.method public final aT()V
    .locals 2

    .prologue
    .line 318
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/k;->setDisplayOptions(II)V

    .line 319
    return-void
.end method

.method public final aU()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 323
    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/k;->setDisplayOptions(II)V

    .line 324
    return-void
.end method

.method public final aV()Landroid/support/v7/app/c;
    .locals 1

    .prologue
    .line 387
    new-instance v0, Landroid/support/v7/app/l;

    invoke-direct {v0, p0}, Landroid/support/v7/app/l;-><init>(Landroid/support/v7/app/k;)V

    return-object v0
.end method

.method public final b(Landroid/support/v7/app/c;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 457
    iget-object v1, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 458
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/app/c;->getPosition()I

    move-result v0

    :cond_0
    iput v0, p0, Landroid/support/v7/app/k;->hB:I

    .line 484
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/k;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->w()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->x()Landroid/support/v4/app/v;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/v;->b()Landroid/support/v4/app/v;

    move-result-object v1

    .line 465
    iget-object v2, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    if-ne v2, p1, :cond_4

    .line 466
    iget-object v0, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    invoke-virtual {v0}, Landroid/support/v7/app/l;->bm()Landroid/support/v7/app/d;

    iget-object v0, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    .line 468
    iget-object v0, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/support/v7/app/c;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->O(I)V

    .line 481
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/v;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    invoke-virtual {v1}, Landroid/support/v4/app/v;->commit()I

    goto :goto_0

    .line 471
    :cond_4
    iget-object v2, p0, Landroid/support/v7/app/k;->hz:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/app/c;->getPosition()I

    move-result v0

    :cond_5
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->N(I)V

    .line 472
    iget-object v0, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    if-eqz v0, :cond_6

    .line 473
    iget-object v0, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    invoke-virtual {v0}, Landroid/support/v7/app/l;->bm()Landroid/support/v7/app/d;

    iget-object v0, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    .line 475
    :cond_6
    check-cast p1, Landroid/support/v7/app/l;

    iput-object p1, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    .line 476
    iget-object v0, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    invoke-virtual {v0}, Landroid/support/v7/app/l;->bm()Landroid/support/v7/app/d;

    iget-object v0, p0, Landroid/support/v7/app/k;->hA:Landroid/support/v7/app/l;

    goto :goto_1
.end method

.method public final bc()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->d(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->br()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/k;->g(Z)V

    .line 153
    return-void
.end method

.method final bi()V
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Landroid/support/v7/app/k;->hJ:Z

    if-nez v0, :cond_0

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/k;->hJ:Z

    .line 534
    invoke-direct {p0}, Landroid/support/v7/app/k;->bk()V

    .line 536
    :cond_0
    return-void
.end method

.method final bj()V
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Landroid/support/v7/app/k;->hJ:Z

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/k;->hJ:Z

    .line 549
    invoke-direct {p0}, Landroid/support/v7/app/k;->bk()V

    .line 551
    :cond_0
    return-void
.end method

.method bl()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Landroid/support/v7/app/k;->hL:Z

    return v0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->cM()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayOptions()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/v7/app/k;->hu:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getThemedContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Landroid/support/v7/app/k;->hs:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 505
    iget-object v1, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 506
    sget v2, Lcom/tencent/mm/d;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 507
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 509
    if-eqz v0, :cond_1

    .line 510
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/app/k;->hs:Landroid/content/Context;

    .line 515
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/k;->hs:Landroid/content/Context;

    return-object v0

    .line 512
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/app/k;->hs:Landroid/content/Context;

    goto :goto_0
.end method

.method public final h(Z)V
    .locals 1
    .parameter

    .prologue
    .line 977
    iput-boolean p1, p0, Landroid/support/v7/app/k;->hL:Z

    .line 978
    if-nez p1, :cond_0

    .line 979
    iget-object v0, p0, Landroid/support/v7/app/k;->hv:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 980
    iget-object v0, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Landroid/support/v7/app/k;->hy:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 984
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/support/v7/app/k;->hH:Z

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/k;->hH:Z

    .line 542
    invoke-direct {p0}, Landroid/support/v7/app/k;->bk()V

    .line 544
    :cond_0
    return-void
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Landroid/support/v7/app/k;->hK:Z

    return v0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v7/app/k;->hu:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->b(Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void
.end method

.method public final setCustomView(I)V
    .locals 3
    .parameter

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/support/v7/app/k;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->G(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method public final setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 313
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/k;->setDisplayOptions(II)V

    .line 314
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setLogo(I)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(I)V

    .line 211
    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/k;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method public final setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v7/app/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/k;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v7/app/k;->hw:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Landroid/support/v7/app/k;->hH:Z

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/k;->hH:Z

    .line 527
    invoke-direct {p0}, Landroid/support/v7/app/k;->bk()V

    .line 529
    :cond_0
    return-void
.end method
