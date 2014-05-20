.class final Landroid/support/v7/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final qO:Landroid/widget/TextView;

.field public final qP:Landroid/widget/TextView;

.field public final qQ:Landroid/widget/ImageView;

.field public final qR:Landroid/widget/ImageView;

.field public final qS:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/widget/r;->qO:Landroid/widget/TextView;

    .line 261
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/widget/r;->qP:Landroid/widget/TextView;

    .line 262
    const v0, 0x1020007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/r;->qQ:Landroid/widget/ImageView;

    .line 263
    const v0, 0x1020008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/r;->qR:Landroid/widget/ImageView;

    .line 264
    sget v0, Lcom/tencent/mm/i;->arJ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/r;->qS:Landroid/widget/ImageView;

    .line 265
    return-void
.end method
