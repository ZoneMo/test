.class public final Landroid/support/v7/app/l;
.super Landroid/support/v7/app/c;
.source "SourceFile"


# instance fields
.field private hN:Landroid/support/v7/app/d;

.field private hO:Landroid/graphics/drawable/Drawable;

.field private hP:Ljava/lang/CharSequence;

.field private hQ:I

.field private hR:Landroid/view/View;

.field final synthetic hS:Landroid/support/v7/app/k;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/k;)V
    .locals 1
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Landroid/support/v7/app/l;->hS:Landroid/support/v7/app/k;

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/l;->hQ:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/app/d;)Landroid/support/v7/app/c;
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Landroid/support/v7/app/l;->hN:Landroid/support/v7/app/d;

    .line 636
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v7/app/c;
    .locals 2
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Landroid/support/v7/app/l;->mText:Ljava/lang/CharSequence;

    .line 695
    iget v0, p0, Landroid/support/v7/app/l;->hQ:I

    if-ltz v0, :cond_0

    .line 696
    iget-object v0, p0, Landroid/support/v7/app/l;->hS:Landroid/support/v7/app/k;

    invoke-static {v0}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/l;->hQ:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->P(I)V

    .line 698
    :cond_0
    return-object p0
.end method

.method public final bm()Landroid/support/v7/app/d;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Landroid/support/v7/app/l;->hN:Landroid/support/v7/app/d;

    return-object v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Landroid/support/v7/app/l;->hP:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/support/v7/app/l;->hR:Landroid/view/View;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/v7/app/l;->hO:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Landroid/support/v7/app/l;->hQ:I

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Landroid/support/v7/app/l;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final select()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Landroid/support/v7/app/l;->hS:Landroid/support/v7/app/k;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/c;)V

    .line 709
    return-void
.end method

.method public final x(I)V
    .locals 0
    .parameter

    .prologue
    .line 670
    iput p1, p0, Landroid/support/v7/app/l;->hQ:I

    .line 671
    return-void
.end method
