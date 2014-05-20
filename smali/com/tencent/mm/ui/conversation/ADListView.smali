.class public Lcom/tencent/mm/ui/conversation/ADListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private gXK:Lcom/tencent/mm/ui/conversation/a;

.field private gXL:I

.field private gXM:Lcom/tencent/mm/ui/conversation/ci;

.field private gXN:Lcom/tencent/mm/ui/conversation/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXL:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXL:I

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/ADListView;)Lcom/tencent/mm/ui/conversation/a;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXK:Lcom/tencent/mm/ui/conversation/a;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/conversation/ADListView;)Lcom/tencent/mm/ui/conversation/d;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXN:Lcom/tencent/mm/ui/conversation/d;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/conversation/ADListView;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXL:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/conversation/a;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXK:Lcom/tencent/mm/ui/conversation/a;

    .line 60
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/conversation/d;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXN:Lcom/tencent/mm/ui/conversation/d;

    .line 107
    return-void
.end method

.method public final dP()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXK:Lcom/tencent/mm/ui/conversation/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXK:Lcom/tencent/mm/ui/conversation/a;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/conversation/a;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXK:Lcom/tencent/mm/ui/conversation/a;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/conversation/a;->nM(I)Lcom/tencent/mm/ui/conversation/bz;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXM:Lcom/tencent/mm/ui/conversation/ci;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/conversation/bz;->a(Lcom/tencent/mm/ui/conversation/ci;)I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 102
    :cond_0
    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 66
    new-instance v0, Lcom/tencent/mm/ui/conversation/ci;

    invoke-direct {v0}, Lcom/tencent/mm/ui/conversation/ci;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXM:Lcom/tencent/mm/ui/conversation/ci;

    .line 67
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXM:Lcom/tencent/mm/ui/conversation/ci;

    iput-object p0, v0, Lcom/tencent/mm/ui/conversation/ci;->hac:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXM:Lcom/tencent/mm/ui/conversation/ci;

    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/ADListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/tencent/mm/ui/conversation/ci;->had:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ADListView;->gXM:Lcom/tencent/mm/ui/conversation/ci;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/ci;->had:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/conversation/b;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/b;-><init>(Lcom/tencent/mm/ui/conversation/ADListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v0, Lcom/tencent/mm/ui/conversation/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/c;-><init>(Lcom/tencent/mm/ui/conversation/ADListView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/ADListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method
