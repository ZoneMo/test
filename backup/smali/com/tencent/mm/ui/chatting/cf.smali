.class public Lcom/tencent/mm/ui/chatting/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cMS:Landroid/widget/ImageView;

.field public daW:Landroid/widget/CheckBox;

.field public dkq:Landroid/widget/TextView;

.field public eyN:Landroid/view/View;

.field public gKj:Landroid/widget/ImageView;

.field public gMA:J

.field public gMy:Landroid/widget/TextView;

.field public gMz:I

.field public gki:Landroid/view/View;

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/chatting/cf;-><init>(IB)V

    .line 123
    return-void
.end method

.method private constructor <init>(IB)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/cf;->gMA:J

    .line 128
    return-void
.end method


# virtual methods
.method public final as(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/cf;->dkq:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0a008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/cf;->cMS:Landroid/widget/ImageView;

    .line 134
    const v0, 0x7f0a01e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/cf;->gki:Landroid/view/View;

    .line 135
    const v0, 0x7f0a0215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/cf;->gKj:Landroid/widget/ImageView;

    .line 136
    return-void
.end method

.method public final dJ(Z)V
    .locals 2
    .parameter

    .prologue
    .line 139
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cf;->daW:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cf;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cf;->daW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cf;->eyN:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cf;->eyN:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cf;->eyN:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_1
    return-void

    .line 139
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
