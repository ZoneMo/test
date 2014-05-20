.class public final Landroid/support/v4/view/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final dZ:Landroid/support/v4/view/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 428
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 429
    new-instance v0, Landroid/support/v4/view/bh;

    invoke-direct {v0}, Landroid/support/v4/view/bh;-><init>()V

    sput-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    .line 441
    :goto_0
    return-void

    .line 430
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 431
    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0}, Landroid/support/v4/view/bg;-><init>()V

    sput-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    goto :goto_0

    .line 432
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 433
    new-instance v0, Landroid/support/v4/view/bf;

    invoke-direct {v0}, Landroid/support/v4/view/bf;-><init>()V

    sput-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    goto :goto_0

    .line 434
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 435
    new-instance v0, Landroid/support/v4/view/be;

    invoke-direct {v0}, Landroid/support/v4/view/be;-><init>()V

    sput-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    goto :goto_0

    .line 436
    :cond_3
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    .line 437
    new-instance v0, Landroid/support/v4/view/bd;

    invoke-direct {v0}, Landroid/support/v4/view/bd;-><init>()V

    sput-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    goto :goto_0

    .line 439
    :cond_4
    new-instance v0, Landroid/support/v4/view/bb;

    invoke-direct {v0}, Landroid/support/v4/view/bb;-><init>()V

    sput-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 666
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/bi;->a(Landroid/view/View;IIII)V

    .line 667
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 828
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/bi;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 829
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 904
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bi;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 905
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 612
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bi;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 613
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 680
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bi;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 681
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 451
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bi;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 475
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bi;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 648
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bi;->f(Landroid/view/View;)V

    .line 649
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 713
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bi;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 729
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bi;->h(Landroid/view/View;)V

    .line 730
    return-void
.end method

.method public static i(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 848
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bi;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 918
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bi;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .parameter

    .prologue
    .line 950
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bi;->k(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 963
    sget-object v0, Landroid/support/v4/view/ba;->dZ:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bi;->l(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
