.class public final Lcom/tencent/mm/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private daV:Landroid/widget/TextView;

.field private gki:Landroid/view/View;

.field private gkj:Landroid/widget/ImageView;

.field private gkk:Landroid/widget/TextView;

.field private gkl:Landroid/widget/TextView;

.field private gkm:Landroid/widget/ImageView;

.field private gkn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 27
    sget v0, Lcom/tencent/mm/i;->apF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->gki:Landroid/view/View;

    .line 38
    :goto_0
    sget v0, Lcom/tencent/mm/i;->ayL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->gkj:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/tencent/mm/i;->aNU:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->gkk:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/tencent/mm/i;->aNa:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->daV:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/tencent/mm/i;->aMv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->gkl:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/tencent/mm/i;->aCj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->gkm:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcom/tencent/mm/i;->aDQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->gkn:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/c;->gki:Landroid/view/View;

    sget v1, Lcom/tencent/mm/h;->abC:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    return-void

    .line 28
    :cond_0
    const-string v0, "4.2.1"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget v0, Lcom/tencent/mm/i;->apF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->gki:Landroid/view/View;

    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "4.2.0"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget v0, Lcom/tencent/mm/i;->apF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->gki:Landroid/view/View;

    goto :goto_0

    .line 32
    :cond_2
    const-string v0, "4.2"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget v0, Lcom/tencent/mm/i;->apF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/c;->gki:Landroid/view/View;

    goto :goto_0

    .line 35
    :cond_3
    iput-object p1, p0, Lcom/tencent/mm/ui/c;->gki:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public final cW(Z)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v1, p0, Lcom/tencent/mm/ui/c;->gkm:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    return-void

    .line 87
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final cX(Z)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-object v1, p0, Lcom/tencent/mm/ui/c;->gkn:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final k(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/mm/ui/c;->gki:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public final ml(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 74
    const-string v0, "MicroMsg.ActionBarCustomArea"

    const-string v1, "update unread count %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    if-gtz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/ui/c;->gkk:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/ui/c;->gkk:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/c;->gkk:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/c;->gkk:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bDp:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/c;->gkk:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ui/c;->daV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
