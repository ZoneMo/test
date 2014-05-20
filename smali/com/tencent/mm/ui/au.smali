.class public final Lcom/tencent/mm/ui/au;
.super Landroid/support/v4/app/s;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bz;
.implements Lcom/tencent/mm/ui/ay;


# instance fields
.field private final dew:Landroid/support/v4/view/ViewPager;

.field final synthetic gmk:Lcom/tencent/mm/ui/LauncherUI;

.field private gmm:Lcom/tencent/mm/ui/contact/m;

.field private gmn:Z

.field private gmo:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/LauncherUI;Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1473
    iput-object p1, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    .line 1474
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->w()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/l;)V

    .line 1470
    iput-boolean v1, p0, Lcom/tencent/mm/ui/au;->gmn:Z

    .line 1471
    iput v1, p0, Lcom/tencent/mm/ui/au;->gmo:I

    .line 1475
    iput-object p3, p0, Lcom/tencent/mm/ui/au;->dew:Landroid/support/v4/view/ViewPager;

    .line 1476
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->dew:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/an;)V

    .line 1477
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->dew:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bz;)V

    .line 1478
    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;)Lcom/tencent/mm/ui/LauncherUITabView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/ui/LauncherUITabView;->b(IF)V

    .line 1494
    const/4 v0, 0x0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 1495
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmm:Lcom/tencent/mm/ui/contact/m;

    if-nez v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->mr(I)Lcom/tencent/mm/ui/cy;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/m;

    iput-object v0, p0, Lcom/tencent/mm/ui/au;->gmm:Lcom/tencent/mm/ui/contact/m;

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmm:Lcom/tencent/mm/ui/contact/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/m;->dQ(Z)V

    .line 1509
    :goto_0
    return-void

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmm:Lcom/tencent/mm/ui/contact/m;

    if-eqz v0, :cond_2

    .line 1501
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmm:Lcom/tencent/mm/ui/contact/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/m;->dQ(Z)V

    .line 1502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/au;->gmm:Lcom/tencent/mm/ui/contact/m;

    .line 1505
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/LauncherUI;->i(Lcom/tencent/mm/ui/LauncherUI;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/LauncherUI;->j(Lcom/tencent/mm/ui/LauncherUI;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/LauncherUI;->aY(II)V

    .line 1507
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/LauncherUI;->mp(I)V

    goto :goto_0
.end method

.method public final f(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/LauncherUI;->mr(I)Lcom/tencent/mm/ui/cy;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 1482
    const/4 v0, 0x3

    return v0
.end method

.method public final j(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x2acd

    .line 1513
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "on page selected changed to %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1514
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "reportSwitch clickCount:%d, pos:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/ui/au;->gmo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/tencent/mm/ui/au;->gmo:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/au;->gmo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/au;->gmo:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput-boolean v5, p0, Lcom/tencent/mm/ui/au;->gmn:Z

    .line 1516
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/LauncherUI;->j(Lcom/tencent/mm/ui/LauncherUI;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;I)I

    .line 1517
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/LauncherUI;->b(Lcom/tencent/mm/ui/LauncherUI;I)I

    .line 1518
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;)Lcom/tencent/mm/ui/LauncherUITabView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/LauncherUITabView;->mu(I)V

    .line 1519
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/LauncherUI;->mr(I)Lcom/tencent/mm/ui/cy;

    invoke-static {}, Lcom/tencent/mm/ui/cy;->aFp()V

    .line 1520
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->u()V

    .line 1521
    return-void

    .line 1514
    :pswitch_0
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "1"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "2"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "3"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "4"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "5"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "6"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "7"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final k(I)V
    .locals 5
    .parameter

    .prologue
    .line 1564
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "onPageScrollStateChanged state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1565
    return-void
.end method

.method public final mt(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1570
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->j(Lcom/tencent/mm/ui/LauncherUI;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1571
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "on click same index"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/LauncherUI;->mr(I)Lcom/tencent/mm/ui/cy;

    move-result-object v0

    .line 1573
    instance-of v1, v0, Lcom/tencent/mm/ui/a;

    if-eqz v1, :cond_0

    .line 1574
    check-cast v0, Lcom/tencent/mm/ui/a;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/a;->aDM()V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1578
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/mm/ui/au;->gmn:Z

    .line 1579
    iget v0, p0, Lcom/tencent/mm/ui/au;->gmo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/au;->gmo:I

    .line 1580
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "onTabClick count:%d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mm/ui/au;->gmo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1581
    iget-object v0, p0, Lcom/tencent/mm/ui/au;->dew:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->m(I)V

    goto :goto_0
.end method
