.class final Landroid/support/v4/app/m;
.super Landroid/support/v4/app/l;
.source "SourceFile"


# static fields
.field static DEBUG:Z

.field static final bB:Landroid/view/animation/Interpolator;

.field static final bC:Landroid/view/animation/Interpolator;

.field static final bD:Landroid/view/animation/Interpolator;

.field static final bE:Landroid/view/animation/Interpolator;

.field static final be:Z


# instance fields
.field aR:Landroid/support/v4/app/k;

.field as:Landroid/support/v4/app/FragmentActivity;

.field bA:Ljava/lang/Runnable;

.field bf:Ljava/util/ArrayList;

.field bg:[Ljava/lang/Runnable;

.field bh:Z

.field bi:Ljava/util/ArrayList;

.field bj:Ljava/util/ArrayList;

.field bk:Ljava/util/ArrayList;

.field bl:Ljava/util/ArrayList;

.field bm:Ljava/util/ArrayList;

.field bn:Ljava/util/ArrayList;

.field bo:Ljava/util/ArrayList;

.field bp:Ljava/util/ArrayList;

.field bq:I

.field br:Landroid/support/v4/app/Fragment;

.field bt:Z

.field bu:Z

.field bv:Z

.field bw:Ljava/lang/String;

.field bx:Z

.field by:Landroid/os/Bundle;

.field bz:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x4020

    const/high16 v3, 0x3fc0

    .line 396
    sput-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    .line 399
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/m;->be:Z

    .line 727
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/m;->bB:Landroid/view/animation/Interpolator;

    .line 728
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/m;->bC:Landroid/view/animation/Interpolator;

    .line 729
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/m;->bD:Landroid/view/animation/Interpolator;

    .line 730
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/m;->bE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-direct {p0}, Landroid/support/v4/app/l;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/m;->bq:I

    .line 434
    iput-object v1, p0, Landroid/support/v4/app/m;->by:Landroid/os/Bundle;

    .line 435
    iput-object v1, p0, Landroid/support/v4/app/m;->bz:Landroid/util/SparseArray;

    .line 437
    new-instance v0, Landroid/support/v4/app/n;

    invoke-direct {v0, p0}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/m;)V

    iput-object v0, p0, Landroid/support/v4/app/m;->bA:Ljava/lang/Runnable;

    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/support/v4/app/m;->bp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1485
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/m;->bp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1486
    iget-object v1, p0, Landroid/support/v4/app/m;->bp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1489
    :cond_0
    return-void
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 750
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 751
    sget-object v1, Landroid/support/v4/app/m;->bC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 752
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 753
    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    .line 736
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 737
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 739
    sget-object v1, Landroid/support/v4/app/m;->bB:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 740
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 741
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 742
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 743
    sget-object v1, Landroid/support/v4/app/m;->bC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 744
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 745
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 746
    return-object v9
.end method

.method private a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x3f79999a

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 758
    iget v0, p1, Landroid/support/v4/app/Fragment;->aF:I

    invoke-static {}, Landroid/support/v4/app/Fragment;->i()Landroid/view/animation/Animation;

    .line 760
    iget v0, p1, Landroid/support/v4/app/Fragment;->aF:I

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget v2, p1, Landroid/support/v4/app/Fragment;->aF:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_0

    .line 812
    :goto_0
    return-object v0

    .line 771
    :cond_0
    if-nez p2, :cond_1

    move-object v0, v1

    .line 772
    goto :goto_0

    .line 775
    :cond_1
    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    .line 776
    :goto_1
    if-gez v0, :cond_5

    move-object v0, v1

    .line 777
    goto :goto_0

    .line 775
    :sswitch_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    .line 780
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 795
    if-nez p4, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 796
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 798
    :cond_6
    if-nez p4, :cond_7

    move-object v0, v1

    .line 799
    goto :goto_0

    .line 782
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    const/high16 v0, 0x3f90

    invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/m;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 784
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/m;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 786
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/m;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 788
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x3f89999a

    invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/m;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 790
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v4, v3}, Landroid/support/v4/app/m;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 792
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v4}, Landroid/support/v4/app/m;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 812
    goto :goto_0

    .line 775
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1392
    monitor-enter p0

    .line 1393
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    .line 1396
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1397
    if-ge p1, v0, :cond_2

    .line 1398
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting back stack index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1399
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1413
    :goto_0
    monitor-exit p0

    return-void

    .line 1401
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1402
    iget-object v1, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    iget-object v1, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1404
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    .line 1406
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding available back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1407
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1410
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding back stack index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1411
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5
    .parameter

    .prologue
    .line 445
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 446
    new-instance v0, Landroid/support/v4/c/b;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/b;-><init>(Ljava/lang/String;)V

    .line 448
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 449
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 451
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    :goto_0
    throw p1

    .line 457
    :cond_0
    :try_start_1
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/m;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1086
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/m;->a(IIIZ)V

    .line 1087
    return-void
.end method

.method public static e(I)I
    .locals 1
    .parameter

    .prologue
    .line 2029
    const/4 v0, 0x0

    .line 2030
    sparse-switch p0, :sswitch_data_0

    .line 2041
    :goto_0
    return v0

    .line 2032
    :sswitch_0
    const/16 v0, 0x2002

    .line 2033
    goto :goto_0

    .line 2035
    :sswitch_1
    const/16 v0, 0x1001

    .line 2036
    goto :goto_0

    .line 2038
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 2030
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private g(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 1582
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bz:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1586
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bz:Landroid/util/SparseArray;

    .line 1590
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/m;->bz:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1591
    iget-object v0, p0, Landroid/support/v4/app/m;->bz:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1592
    iget-object v0, p0, Landroid/support/v4/app/m;->bz:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    .line 1593
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/m;->bz:Landroid/util/SparseArray;

    goto :goto_0

    .line 1588
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/m;->bz:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method private h(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1598
    .line 1600
    iget-object v0, p0, Landroid/support/v4/app/m;->by:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1601
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->by:Landroid/os/Bundle;

    .line 1603
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->by:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 1604
    iget-object v0, p0, Landroid/support/v4/app/m;->by:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1605
    iget-object v0, p0, Landroid/support/v4/app/m;->by:Landroid/os/Bundle;

    .line 1606
    iput-object v1, p0, Landroid/support/v4/app/m;->by:Landroid/os/Bundle;

    .line 1609
    :goto_0
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1610
    invoke-direct {p0, p1}, Landroid/support/v4/app/m;->g(Landroid/support/v4/app/Fragment;)V

    .line 1612
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 1613
    if-nez v0, :cond_2

    .line 1614
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1616
    :cond_2
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1619
    :cond_3
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->aK:Z

    if-nez v1, :cond_5

    .line 1620
    if-nez v0, :cond_4

    .line 1621
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1624
    :cond_4
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->aK:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1627
    :cond_5
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1131
    :cond_0
    return-void

    .line 1125
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1126
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1127
    if-eqz v0, :cond_2

    .line 1128
    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->e(Landroid/support/v4/app/Fragment;)V

    .line 1125
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private z()V
    .locals 3

    .prologue
    .line 1342
    iget-boolean v0, p0, Landroid/support/v4/app/m;->bu:Z

    if-eqz v0, :cond_0

    .line 1343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1346
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bw:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1347
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/m;->bw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1350
    :cond_1
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1431
    iget-boolean v1, p0, Landroid/support/v4/app/m;->bh:Z

    if-eqz v1, :cond_0

    .line 1432
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1435
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    .line 1444
    :goto_0
    monitor-enter p0

    .line 1445
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1446
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    iget-boolean v0, p0, Landroid/support/v4/app/m;->bx:Z

    if-eqz v0, :cond_9

    move v3, v2

    move v4, v2

    .line 1469
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1470
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1471
    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    if-eqz v5, :cond_3

    .line 1472
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->Q()Z

    move-result v0

    or-int/2addr v4, v0

    .line 1469
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1449
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1450
    iget-object v1, p0, Landroid/support/v4/app/m;->bg:[Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/m;->bg:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6

    .line 1451
    :cond_5
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/m;->bg:[Ljava/lang/Runnable;

    .line 1453
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/m;->bg:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1454
    iget-object v1, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1455
    iget-object v1, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v4/app/m;->bA:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1456
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1458
    iput-boolean v0, p0, Landroid/support/v4/app/m;->bh:Z

    move v1, v2

    .line 1459
    :goto_2
    if-ge v1, v3, :cond_7

    .line 1460
    iget-object v4, p0, Landroid/support/v4/app/m;->bg:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1461
    iget-object v4, p0, Landroid/support/v4/app/m;->bg:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 1459
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1463
    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/app/m;->bh:Z

    move v1, v0

    .line 1465
    goto :goto_0

    .line 1475
    :cond_8
    if-nez v4, :cond_9

    .line 1476
    iput-boolean v2, p0, Landroid/support/v4/app/m;->bx:Z

    .line 1477
    invoke-direct {p0}, Landroid/support/v4/app/m;->y()V

    .line 1480
    :cond_9
    return v1
.end method

.method final C()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1500
    iget-object v1, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1511
    :cond_0
    :goto_0
    return v0

    .line 1503
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1505
    if-ltz v1, :cond_0

    .line 1508
    iget-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1509
    invoke-virtual {v0}, Landroid/support/v4/app/a;->c()V

    .line 1510
    invoke-direct {p0}, Landroid/support/v4/app/m;->B()V

    .line 1511
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final D()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 1563
    const/4 v1, 0x0

    .line 1564
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1565
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1566
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1567
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->aA:Z

    if-eqz v2, :cond_1

    .line 1568
    if-nez v1, :cond_0

    .line 1569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1571
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->aB:Z

    .line 1573
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->K:I

    :goto_1
    iput v2, v0, Landroid/support/v4/app/Fragment;->ai:I

    .line 1574
    sget-boolean v2, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "retainNonConfig: keeping retained "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1565
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1573
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 1578
    :cond_3
    return-object v1
.end method

.method final E()Landroid/os/Parcelable;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1633
    invoke-virtual {p0}, Landroid/support/v4/app/m;->A()Z

    .line 1635
    sget-boolean v0, Landroid/support/v4/app/m;->be:Z

    if-eqz v0, :cond_0

    .line 1645
    iput-boolean v1, p0, Landroid/support/v4/app/m;->bu:Z

    .line 1648
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1743
    :cond_1
    :goto_0
    return-object v3

    .line 1653
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1654
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v2, v4

    .line 1656
    :goto_1
    if-ge v5, v6, :cond_9

    .line 1657
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1658
    if-eqz v0, :cond_11

    .line 1659
    iget v2, v0, Landroid/support/v4/app/Fragment;->K:I

    if-gez v2, :cond_3

    .line 1660
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure saving state: active "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/app/Fragment;->K:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/m;->a(Ljava/lang/RuntimeException;)V

    .line 1667
    :cond_3
    new-instance v2, Landroid/support/v4/app/FragmentState;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1668
    aput-object v2, v7, v5

    .line 1670
    iget v8, v0, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v8, :cond_8

    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    if-nez v8, :cond_8

    .line 1671
    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->h(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    .line 1673
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_6

    .line 1674
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->K:I

    if-gez v8, :cond_4

    .line 1675
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/m;->a(Ljava/lang/RuntimeException;)V

    .line 1679
    :cond_4
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    if-nez v8, :cond_5

    .line 1680
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    .line 1682
    :cond_5
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/app/m;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1684
    iget v8, v0, Landroid/support/v4/app/Fragment;->aj:I

    if-eqz v8, :cond_6

    .line 1685
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/Fragment;->aj:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1695
    :cond_6
    :goto_2
    sget-boolean v8, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Saved state of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_7
    move v0, v1

    .line 1656
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto/16 :goto_1

    .line 1692
    :cond_8
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    goto :goto_2

    .line 1700
    :cond_9
    if-nez v2, :cond_a

    .line 1701
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    goto/16 :goto_0

    .line 1709
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 1710
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1711
    if-lez v5, :cond_d

    .line 1712
    new-array v1, v5, [I

    move v2, v4

    .line 1713
    :goto_4
    if-ge v2, v5, :cond_e

    .line 1714
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->K:I

    aput v0, v1, v2

    .line 1715
    aget v0, v1, v2

    if-gez v0, :cond_b

    .line 1716
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->a(Ljava/lang/RuntimeException;)V

    .line 1720
    :cond_b
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "saveAllState: adding fragment #"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1713
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_d
    move-object v1, v3

    .line 1727
    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 1728
    iget-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1729
    if-lez v5, :cond_10

    .line 1730
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    .line 1731
    :goto_5
    if-ge v2, v5, :cond_10

    .line 1732
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/a;)V

    aput-object v4, v3, v2

    .line 1733
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "saveAllState: adding back stack #"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1731
    :cond_f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 1739
    :cond_10
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1740
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->bH:[Landroid/support/v4/app/FragmentState;

    .line 1741
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->bI:[I

    .line 1742
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->bJ:[Landroid/support/v4/app/BackStackState;

    move-object v3, v0

    .line 1743
    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_3
.end method

.method public final F()V
    .locals 1

    .prologue
    .line 1867
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/m;->bu:Z

    .line 1868
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 1871
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/m;->bu:Z

    .line 1872
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->c(I)V

    .line 1873
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 1876
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/m;->bu:Z

    .line 1877
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->c(I)V

    .line 1878
    return-void
.end method

.method public final I()V
    .locals 1

    .prologue
    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/m;->bu:Z

    .line 1882
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->c(I)V

    .line 1883
    return-void
.end method

.method public final J()V
    .locals 1

    .prologue
    .line 1891
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->c(I)V

    .line 1892
    return-void
.end method

.method public final K()V
    .locals 1

    .prologue
    .line 1904
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->c(I)V

    .line 1905
    return-void
.end method

.method public final L()V
    .locals 1

    .prologue
    .line 1908
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->c(I)V

    .line 1909
    return-void
.end method

.method public final M()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1912
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/m;->bv:Z

    .line 1913
    invoke-virtual {p0}, Landroid/support/v4/app/m;->A()Z

    .line 1914
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->c(I)V

    .line 1915
    iput-object v1, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    .line 1916
    iput-object v1, p0, Landroid/support/v4/app/m;->aR:Landroid/support/v4/app/k;

    .line 1917
    iput-object v1, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    .line 1918
    return-void
.end method

.method public final N()V
    .locals 2

    .prologue
    .line 1932
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1933
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1934
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1935
    if-eqz v0, :cond_0

    .line 1936
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()V

    .line 1933
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1940
    :cond_1
    return-void
.end method

.method public final a(Landroid/support/v4/app/a;)I
    .locals 3
    .parameter

    .prologue
    .line 1372
    monitor-enter p0

    .line 1373
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1374
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    .line 1377
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1378
    sget-boolean v1, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1379
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    monitor-exit p0

    .line 1386
    :goto_0
    return v0

    .line 1383
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1384
    sget-boolean v1, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1385
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1386
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 565
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 566
    if-ne v1, v0, :cond_1

    .line 567
    const/4 v0, 0x0

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 569
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 570
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragement no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->a(Ljava/lang/RuntimeException;)V

    .line 573
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 574
    if-nez v0, :cond_0

    .line 575
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragement no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/m;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method final a(IIIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1090
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1091
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/m;->bq:I

    if-ne v0, p1, :cond_2

    .line 1120
    :cond_1
    :goto_0
    return-void

    .line 1098
    :cond_2
    iput p1, p0, Landroid/support/v4/app/m;->bq:I

    .line 1099
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    .line 1101
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1102
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1103
    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1104
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1105
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    if-eqz v0, :cond_5

    .line 1106
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->Q()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    .line 1101
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    .line 1111
    :cond_3
    if-nez v7, :cond_4

    .line 1112
    invoke-direct {p0}, Landroid/support/v4/app/m;->y()V

    .line 1115
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/m;->bt:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/m;->bq:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1116
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->u()V

    .line 1117
    iput-boolean v5, p0, Landroid/support/v4/app/m;->bt:Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 556
    iget v0, p3, Landroid/support/v4/app/Fragment;->K:I

    if-gez v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->a(Ljava/lang/RuntimeException;)V

    .line 560
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->K:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1749
    if-nez p1, :cond_1

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1751
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->bH:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_0

    .line 1755
    if-eqz p2, :cond_4

    move v1, v2

    .line 1756
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1757
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1758
    sget-boolean v3, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: re-attaching retained "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1759
    :cond_2
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->bH:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->K:I

    aget-object v3, v3, v4

    .line 1760
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    .line 1761
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    .line 1762
    iput v2, v0, Landroid/support/v4/app/Fragment;->aq:I

    .line 1763
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->ao:Z

    .line 1764
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->ak:Z

    .line 1765
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    .line 1766
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 1767
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1768
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->ad:Landroid/os/Bundle;

    const-string v4, "android:view_state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    .line 1756
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1776
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->bH:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    .line 1777
    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1778
    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move v0, v2

    .line 1780
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->bH:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 1781
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->bH:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1782
    if-eqz v1, :cond_7

    .line 1783
    iget-object v3, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1784
    sget-boolean v4, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: active #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1785
    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    iput-object v6, v1, Landroid/support/v4/app/FragmentState;->bL:Landroid/support/v4/app/Fragment;

    .line 1780
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1791
    :cond_7
    iget-object v1, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    iget-object v1, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    .line 1793
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    .line 1795
    :cond_8
    sget-boolean v1, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "restoreAllState: avail #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1796
    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1801
    :cond_a
    if-eqz p2, :cond_d

    move v3, v2

    .line 1802
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 1803
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1804
    iget v1, v0, Landroid/support/v4/app/Fragment;->ai:I

    if-ltz v1, :cond_b

    .line 1805
    iget v1, v0, Landroid/support/v4/app/Fragment;->ai:I

    iget-object v4, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 1806
    iget-object v1, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->ai:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    .line 1802
    :cond_b
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1808
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Re-attaching retained fragment "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " target no longer exists: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroid/support/v4/app/Fragment;->ai:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1810
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1817
    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->bI:[I

    if-eqz v0, :cond_11

    .line 1818
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->bI:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    move v1, v2

    .line 1819
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->bI:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 1820
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->bI:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1821
    if-nez v0, :cond_e

    .line 1822
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No instantiated fragment for index #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerState;->bI:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/m;->a(Ljava/lang/RuntimeException;)V

    .line 1825
    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->ak:Z

    .line 1826
    sget-boolean v3, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: added #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1827
    :cond_f
    iget-object v3, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1828
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1830
    :cond_10
    iget-object v3, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1833
    :cond_11
    iput-object v6, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    .line 1837
    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->bJ:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_15

    .line 1838
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->bJ:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    move v0, v2

    .line 1839
    :goto_7
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->bJ:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1840
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->bJ:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/m;)Landroid/support/v4/app/a;

    move-result-object v1

    .line 1841
    sget-boolean v3, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v3, :cond_13

    .line 1842
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: back stack #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/support/v4/app/a;->K:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1844
    new-instance v3, Landroid/support/v4/c/b;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/c/b;-><init>(Ljava/lang/String;)V

    .line 1845
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1846
    const-string v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1848
    :cond_13
    iget-object v3, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1849
    iget v3, v1, Landroid/support/v4/app/a;->K:I

    if-ltz v3, :cond_14

    .line 1850
    iget v3, v1, Landroid/support/v4/app/a;->K:I

    invoke-direct {p0, v3, v1}, Landroid/support/v4/app/m;->a(ILandroid/support/v4/app/a;)V

    .line 1839
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1854
    :cond_15
    iput-object v6, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public final a(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1190
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " nesting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/Fragment;->aq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1191
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->e()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1192
    :goto_0
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->az:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    .line 1193
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1194
    iget-object v2, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1196
    :cond_2
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->aD:Z

    if-eqz v2, :cond_3

    .line 1197
    iput-boolean v1, p0, Landroid/support/v4/app/m;->bt:Z

    .line 1199
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->ak:Z

    .line 1200
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->al:Z

    .line 1201
    if-eqz v0, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1204
    :cond_4
    return-void

    :cond_5
    move v0, v5

    .line 1191
    goto :goto_0

    :cond_6
    move v2, v1

    .line 1201
    goto :goto_1
.end method

.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 830
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ak:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->az:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le p2, v5, :cond_1

    move p2, v5

    .line 833
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->al:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le p2, v0, :cond_2

    .line 835
    iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 839
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aJ:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v8, :cond_3

    if-le p2, v6, :cond_3

    move p2, v6

    .line 842
    :cond_3
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, p2, :cond_1d

    .line 846
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->an:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ao:Z

    if-nez v0, :cond_4

    .line 1079
    :goto_0
    return-void

    .line 849
    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ab:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 854
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ab:Landroid/view/View;

    .line 855
    iget v2, p1, Landroid/support/v4/app/Fragment;->ac:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 857
    :cond_5
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1078
    :cond_6
    :goto_1
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_0

    .line 859
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 861
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    .line 863
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/m;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    .line 865
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 866
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->aj:I

    .line 869
    :cond_8
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->aK:Z

    .line 871
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aK:Z

    if-nez v0, :cond_9

    .line 872
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->aJ:Z

    .line 873
    if-le p2, v6, :cond_9

    move p2, v6

    .line 878
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    .line 879
    iget-object v0, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->au:Landroid/support/v4/app/Fragment;

    .line 880
    iget-object v0, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    :goto_2
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/support/v4/app/m;

    .line 882
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aE:Z

    .line 883
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 884
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_b

    .line 885
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->aQ:Landroid/support/v4/app/m;

    goto :goto_2

    .line 888
    :cond_b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->au:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_c

    .line 889
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Landroid/support/v4/app/FragmentActivity;->v()V

    .line 892
    :cond_c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aB:Z

    if-nez v0, :cond_d

    .line 893
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 895
    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aB:Z

    .line 896
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->an:Z

    if-eqz v0, :cond_f

    .line 900
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->g()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    .line 902
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 903
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/view/View;

    .line 904
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/ae;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    .line 905
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ay:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 906
    :cond_e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-static {}, Landroid/support/v4/app/Fragment;->j()V

    .line 912
    :cond_f
    :goto_3
    :pswitch_1
    if-le p2, v5, :cond_17

    .line 913
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 914
    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->an:Z

    if-nez v0, :cond_15

    .line 916
    iget v0, p1, Landroid/support/v4/app/Fragment;->aw:I

    if-eqz v0, :cond_32

    .line 917
    iget-object v0, p0, Landroid/support/v4/app/m;->aR:Landroid/support/v4/app/k;

    iget v1, p1, Landroid/support/v4/app/Fragment;->aw:I

    invoke-interface {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 918
    if-nez v0, :cond_11

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->ap:Z

    if-nez v1, :cond_11

    .line 919
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/support/v4/app/Fragment;->aw:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/Fragment;->aw:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/m;->a(Ljava/lang/RuntimeException;)V

    .line 926
    :cond_11
    :goto_4
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->aG:Landroid/view/ViewGroup;

    .line 927
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->g()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    .line 929
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 930
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/view/View;

    .line 931
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/ae;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    .line 932
    if-eqz v0, :cond_13

    .line 933
    invoke-direct {p0, p1, p3, v5, p4}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 935
    if-eqz v1, :cond_12

    .line 936
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 938
    :cond_12
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 940
    :cond_13
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ay:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 941
    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-static {}, Landroid/support/v4/app/Fragment;->j()V

    .line 947
    :cond_15
    :goto_5
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 948
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 949
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->d()V

    .line 951
    :cond_16
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    .line 955
    :cond_17
    :pswitch_2
    if-le p2, v6, :cond_19

    .line 956
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 957
    :cond_18
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l()V

    .line 960
    :cond_19
    :pswitch_3
    if-le p2, v8, :cond_6

    .line 961
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 962
    :cond_1a
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->am:Z

    .line 963
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->m()V

    .line 964
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    .line 965
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 908
    :cond_1b
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/view/View;

    goto/16 :goto_3

    .line 943
    :cond_1c
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/view/View;

    goto :goto_5

    .line 968
    :cond_1d
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, p2, :cond_6

    .line 969
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1032
    :cond_1e
    :goto_6
    :pswitch_4
    if-gtz p2, :cond_6

    .line 1033
    iget-boolean v0, p0, Landroid/support/v4/app/m;->bv:Z

    if-eqz v0, :cond_1f

    .line 1034
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ab:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1041
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ab:Landroid/view/View;

    .line 1042
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ab:Landroid/view/View;

    .line 1043
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1046
    :cond_1f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ab:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 1051
    iput p2, p1, Landroid/support/v4/app/Fragment;->ac:I

    move p2, v5

    .line 1052
    goto/16 :goto_1

    .line 971
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_21

    .line 972
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    :cond_20
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->o()V

    .line 974
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->am:Z

    .line 977
    :cond_21
    :pswitch_6
    if-ge p2, v8, :cond_23

    .line 978
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 979
    :cond_22
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->p()V

    .line 982
    :cond_23
    :pswitch_7
    if-ge p2, v6, :cond_25

    .line 983
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom STOPPED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 984
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->q()V

    .line 987
    :cond_25
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1e

    .line 988
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    :cond_26
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 992
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 993
    invoke-direct {p0, p1}, Landroid/support/v4/app/m;->g(Landroid/support/v4/app/Fragment;)V

    .line 996
    :cond_27
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->r()V

    .line 997
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aG:Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    .line 999
    iget v0, p0, Landroid/support/v4/app/m;->bq:I

    if-lez v0, :cond_31

    iget-boolean v0, p0, Landroid/support/v4/app/m;->bv:Z

    if-nez v0, :cond_31

    .line 1000
    invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1003
    :goto_7
    if-eqz v0, :cond_28

    .line 1005
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->ab:Landroid/view/View;

    .line 1006
    iput p2, p1, Landroid/support/v4/app/Fragment;->ac:I

    .line 1007
    new-instance v1, Landroid/support/v4/app/p;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/m;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1023
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1025
    :cond_28
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aG:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1027
    :cond_29
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aG:Landroid/view/ViewGroup;

    .line 1028
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    .line 1029
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->aI:Landroid/view/View;

    goto/16 :goto_6

    .line 1054
    :cond_2a
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1055
    :cond_2b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aB:Z

    if-nez v0, :cond_2c

    .line 1056
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->s()V

    .line 1059
    :cond_2c
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1060
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1061
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_2d

    .line 1062
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_2d
    if-nez p5, :cond_6

    .line 1066
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aB:Z

    if-nez v0, :cond_30

    .line 1067
    iget v0, p1, Landroid/support/v4/app/Fragment;->K:I

    if-ltz v0, :cond_6

    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Freeing fragment index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->K:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    if-nez v0, :cond_2f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    :cond_2f
    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->K:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->k()V

    goto/16 :goto_1

    .line 1069
    :cond_30
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    .line 1070
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->ar:Landroid/support/v4/app/m;

    goto/16 :goto_1

    :cond_31
    move-object v0, v7

    goto/16 :goto_7

    :cond_32
    move-object v0, v7

    goto/16 :goto_4

    .line 857
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 969
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1168
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    .line 1171
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1172
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->K:I

    if-gez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->b(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Allocated fragment index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1173
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->az:Z

    if-nez v0, :cond_8

    .line 1174
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1175
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->b(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->K:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1177
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->ak:Z

    .line 1179
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->al:Z

    .line 1180
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aD:Z

    if-eqz v0, :cond_7

    .line 1181
    iput-boolean v2, p0, Landroid/support/v4/app/m;->bt:Z

    .line 1183
    :cond_7
    if-eqz p2, :cond_8

    .line 1184
    invoke-virtual {p0, p1}, Landroid/support/v4/app/m;->f(Landroid/support/v4/app/Fragment;)V

    .line 1187
    :cond_8
    return-void
.end method

.method public final a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/k;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1860
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1861
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    .line 1862
    iput-object p2, p0, Landroid/support/v4/app/m;->aR:Landroid/support/v4/app/k;

    .line 1863
    iput-object p3, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    .line 1864
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1353
    if-nez p2, :cond_0

    .line 1354
    invoke-direct {p0}, Landroid/support/v4/app/m;->z()V

    .line 1356
    :cond_0
    monitor-enter p0

    .line 1357
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1

    .line 1358
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1360
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    .line 1363
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    iget-object v0, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1365
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/m;->bA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1366
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/m;->bA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1368
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 1286
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1288
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1289
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1290
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->av:I

    if-ne v2, p1, :cond_1

    .line 1304
    :cond_0
    :goto_1
    return-object v0

    .line 1288
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1295
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1297
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1298
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1299
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->av:I

    if-eq v2, p1, :cond_0

    .line 1297
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1304
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Landroid/support/v4/app/Fragment;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1207
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1208
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ay:Z

    if-nez v0, :cond_4

    .line 1209
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->ay:Z

    .line 1210
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1211
    invoke-direct {p0, p1, p2, v2, p3}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1213
    if-eqz v0, :cond_1

    .line 1214
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1216
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ak:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aD:Z

    if-eqz v0, :cond_3

    .line 1219
    iput-boolean v2, p0, Landroid/support/v4/app/m;->bt:Z

    .line 1221
    :cond_3
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1223
    :cond_4
    return-void
.end method

.method final b(Landroid/support/v4/app/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1492
    iget-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    .line 1495
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    invoke-direct {p0}, Landroid/support/v4/app/m;->B()V

    .line 1497
    return-void
.end method

.method public final b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1943
    .line 1944
    const/4 v1, 0x0

    .line 1945
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v3, v4

    move v2, v4

    .line 1946
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1947
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1948
    if-eqz v0, :cond_1

    .line 1949
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1950
    const/4 v2, 0x1

    .line 1951
    if-nez v1, :cond_0

    .line 1952
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1954
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    .line 1946
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    .line 1960
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/m;->bm:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1961
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 1962
    iget-object v0, p0, Landroid/support/v4/app/m;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1963
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1964
    :cond_4
    invoke-static {}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 1961
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1969
    :cond_6
    iput-object v1, p0, Landroid/support/v4/app/m;->bm:Ljava/util/ArrayList;

    .line 1971
    return v2
.end method

.method public final c(Landroid/support/v4/app/Fragment;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1226
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1227
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ay:Z

    if-eqz v0, :cond_4

    .line 1228
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->ay:Z

    .line 1229
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1230
    invoke-direct {p0, p1, p2, v3, p3}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1232
    if-eqz v0, :cond_1

    .line 1233
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1235
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ak:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aD:Z

    if-eqz v0, :cond_3

    .line 1238
    iput-boolean v3, p0, Landroid/support/v4/app/m;->bt:Z

    .line 1240
    :cond_3
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1242
    :cond_4
    return-void
.end method

.method public final c(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1975
    .line 1976
    iget-object v1, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    move v2, v0

    .line 1977
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1978
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1979
    if-eqz v0, :cond_0

    .line 1980
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    const/4 v2, 0x1

    .line 1977
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1986
    :cond_2
    return v2
.end method

.method public final c(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1990
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 1991
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1992
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1993
    if-eqz v0, :cond_1

    .line 1994
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1995
    const/4 v2, 0x1

    .line 2000
    :cond_0
    return v2

    .line 1991
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 588
    iget v1, p1, Landroid/support/v4/app/Fragment;->K:I

    if-gez v1, :cond_0

    .line 589
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/m;->a(Ljava/lang/RuntimeException;)V

    .line 592
    :cond_0
    iget v1, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v1, :cond_1

    .line 593
    invoke-direct {p0, p1}, Landroid/support/v4/app/m;->h(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_1

    new-instance v0, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 596
    :cond_1
    return-object v0
.end method

.method public final d(I)V
    .locals 2
    .parameter

    .prologue
    .line 1417
    monitor-enter p0

    .line 1418
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1419
    iget-object v0, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    .line 1422
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Freeing back stack index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1423
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1245
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1246
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->az:Z

    if-nez v0, :cond_4

    .line 1247
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->az:Z

    .line 1248
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ak:Z

    if-eqz v0, :cond_4

    .line 1250
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1251
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove from detach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1252
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1254
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aD:Z

    if-eqz v0, :cond_3

    .line 1255
    iput-boolean v2, p0, Landroid/support/v4/app/m;->bt:Z

    .line 1257
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->ak:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1258
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1261
    :cond_4
    return-void
.end method

.method public final d(Landroid/view/Menu;)V
    .locals 2
    .parameter

    .prologue
    .line 2018
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2019
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2020
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2021
    if-eqz v0, :cond_0

    .line 2022
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/Menu;)V

    .line 2019
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2026
    :cond_1
    return-void
.end method

.method public final d(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2004
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 2005
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2006
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2007
    if-eqz v0, :cond_1

    .line 2008
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2009
    const/4 v2, 0x1

    .line 2014
    :cond_0
    return v2

    .line 2005
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 1921
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1922
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1923
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1924
    if-eqz v0, :cond_0

    .line 1925
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/res/Configuration;)V

    .line 1922
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1929
    :cond_1
    return-void
.end method

.method public final dispatchResume()V
    .locals 1

    .prologue
    .line 1886
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/m;->bu:Z

    .line 1887
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->c(I)V

    .line 1888
    return-void
.end method

.method public final dispatchStop()V
    .locals 1

    .prologue
    .line 1898
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/m;->bu:Z

    .line 1900
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/m;->c(I)V

    .line 1901
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 619
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 621
    if-lez v4, :cond_1

    .line 622
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 625
    :goto_0
    if-ge v2, v4, :cond_1

    .line 626
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 627
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 628
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 629
    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 625
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 637
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 638
    if-lez v4, :cond_2

    .line 639
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 640
    :goto_1
    if-ge v2, v4, :cond_2

    .line 641
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 642
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 643
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 648
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/m;->bm:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Landroid/support/v4/app/m;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 650
    if-lez v4, :cond_3

    .line 651
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 652
    :goto_2
    if-ge v2, v4, :cond_3

    .line 653
    iget-object v0, p0, Landroid/support/v4/app/m;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 654
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 655
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 660
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 661
    iget-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 662
    if-lez v4, :cond_4

    .line 663
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 664
    :goto_3
    if-ge v2, v4, :cond_4

    .line 665
    iget-object v0, p0, Landroid/support/v4/app/m;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 666
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 667
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 664
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 673
    :cond_4
    monitor-enter p0

    .line 674
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 675
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 676
    if-lez v3, :cond_5

    .line 677
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 678
    :goto_4
    if-ge v2, v3, :cond_5

    .line 679
    iget-object v0, p0, Landroid/support/v4/app/m;->bn:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 680
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 681
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 678
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 686
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 687
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Landroid/support/v4/app/m;->bo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    iget-object v0, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 693
    iget-object v0, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 694
    if-lez v2, :cond_7

    .line 695
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    :goto_5
    if-ge v1, v2, :cond_7

    .line 697
    iget-object v0, p0, Landroid/support/v4/app/m;->bf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 698
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 699
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 696
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 704
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 706
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/m;->aR:Landroid/support/v4/app/k;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 707
    iget-object v0, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 708
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 710
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/m;->bq:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 711
    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/m;->bu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 712
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/m;->bv:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 713
    iget-boolean v0, p0, Landroid/support/v4/app/m;->bt:Z

    if-eqz v0, :cond_9

    .line 714
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    iget-boolean v0, p0, Landroid/support/v4/app/m;->bt:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 717
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/m;->bw:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 718
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Landroid/support/v4/app/m;->bw:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 722
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Landroid/support/v4/app/m;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    :cond_b
    return-void
.end method

.method public final e(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 816
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aJ:Z

    if-eqz v0, :cond_0

    .line 817
    iget-boolean v0, p0, Landroid/support/v4/app/m;->bh:Z

    if-eqz v0, :cond_1

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/m;->bx:Z

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->aJ:Z

    .line 823
    iget v2, p0, Landroid/support/v4/app/m;->bq:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_0
.end method

.method public final e(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1264
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1265
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->az:Z

    if-eqz v0, :cond_5

    .line 1266
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->az:Z

    .line 1267
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ak:Z

    if-nez v0, :cond_5

    .line 1268
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    .line 1271
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1272
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/m;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add from attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1275
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->ak:Z

    .line 1277
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->aD:Z

    if-eqz v0, :cond_4

    .line 1278
    iput-boolean v2, p0, Landroid/support/v4/app/m;->bt:Z

    .line 1280
    :cond_4
    iget v2, p0, Landroid/support/v4/app/m;->bq:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1283
    :cond_5
    return-void
.end method

.method public final executePendingTransactions()Z
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/support/v4/app/m;->A()Z

    move-result v0

    return v0
.end method

.method final f(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1082
    iget v2, p0, Landroid/support/v4/app/m;->bq:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1083
    return-void
.end method

.method public final g(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 1308
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1310
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1311
    iget-object v0, p0, Landroid/support/v4/app/m;->bj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1312
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->ax:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1326
    :cond_0
    :goto_1
    return-object v0

    .line 1310
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1317
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1319
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1320
    iget-object v0, p0, Landroid/support/v4/app/m;->bi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1321
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->ax:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1319
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1326
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final popBackStack()V
    .locals 2

    .prologue
    .line 477
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0, p0}, Landroid/support/v4/app/o;-><init>(Landroid/support/v4/app/m;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/m;->a(Ljava/lang/Runnable;Z)V

    .line 482
    return-void
.end method

.method public final popBackStackImmediate()Z
    .locals 1

    .prologue
    .line 486
    invoke-direct {p0}, Landroid/support/v4/app/m;->z()V

    .line 487
    invoke-virtual {p0}, Landroid/support/v4/app/m;->A()Z

    .line 488
    iget-object v0, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/support/v4/app/m;->C()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 602
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-object v1, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Landroid/support/v4/app/m;->br:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 610
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 608
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public final x()Landroid/support/v4/app/v;
    .locals 1

    .prologue
    .line 467
    new-instance v0, Landroid/support/v4/app/a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/m;)V

    return-object v0
.end method
