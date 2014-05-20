.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final aa:Ljava/util/HashMap;


# instance fields
.field K:I

.field aA:Z

.field aB:Z

.field aC:Z

.field aD:Z

.field aE:Z

.field aF:I

.field aG:Landroid/view/ViewGroup;

.field aH:Landroid/view/View;

.field aI:Landroid/view/View;

.field aJ:Z

.field aK:Z

.field aL:Landroid/support/v4/app/y;

.field aM:Z

.field aN:Z

.field ab:Landroid/view/View;

.field ac:I

.field ad:Landroid/os/Bundle;

.field ae:Landroid/util/SparseArray;

.field af:Ljava/lang/String;

.field ag:Landroid/os/Bundle;

.field ah:Landroid/support/v4/app/Fragment;

.field ai:I

.field aj:I

.field ak:Z

.field al:Z

.field am:Z

.field an:Z

.field ao:Z

.field ap:Z

.field aq:I

.field ar:Landroid/support/v4/app/m;

.field as:Landroid/support/v4/app/FragmentActivity;

.field at:Landroid/support/v4/app/m;

.field au:Landroid/support/v4/app/Fragment;

.field av:I

.field aw:I

.field ax:Ljava/lang/String;

.field ay:Z

.field az:Z

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->aa:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 190
    iput v1, p0, Landroid/support/v4/app/Fragment;->K:I

    .line 202
    iput v1, p0, Landroid/support/v4/app/Fragment;->ai:I

    .line 273
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->aD:Z

    .line 295
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->aK:Z

    .line 370
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->aa:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 397
    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 400
    sget-object v1, Landroid/support/v4/app/Fragment;->aa:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 403
    if-eqz p2, :cond_1

    .line 404
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 405
    iput-object p2, v0, Landroid/support/v4/app/Fragment;->ag:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 407
    :cond_1
    return-object v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    new-instance v1, Landroid/support/v4/app/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 412
    :catch_1
    move-exception v0

    .line 413
    new-instance v1, Landroid/support/v4/app/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 416
    :catch_2
    move-exception v0

    .line 417
    new-instance v1, Landroid/support/v4/app/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static i()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    return-object v0
.end method

.method public static j()V
    .locals 0

    .prologue
    .line 1010
    return-void
.end method

.method public static onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 1240
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 996
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 864
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 868
    return-void
.end method

.method final a(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 1533
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1534
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/m;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1537
    :cond_0
    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 1451
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->F()V

    .line 1454
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1455
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1456
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_1

    .line 1457
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1460
    :cond_1
    if-eqz p1, :cond_3

    .line 1461
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1463
    if-eqz v0, :cond_3

    .line 1464
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-nez v1, :cond_2

    .line 1465
    new-instance v1, Landroid/support/v4/app/m;

    invoke-direct {v1}, Landroid/support/v4/app/m;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Landroid/support/v4/app/d;

    invoke-direct {v3, p0}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/k;Landroid/support/v4/app/Fragment;)V

    .line 1467
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/m;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1468
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->G()V

    .line 1471
    :cond_3
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment$SavedState;)V
    .locals 2
    .parameter

    .prologue
    .line 530
    iget v0, p0, Landroid/support/v4/app/Fragment;->K:I

    if-ltz v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->aP:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->aP:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    .line 535
    return-void

    .line 533
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1570
    const/4 v0, 0x0

    .line 1571
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->ay:Z

    if-nez v1, :cond_1

    .line 1572
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->aD:Z

    if-eqz v1, :cond_0

    .line 1573
    const/4 v0, 0x1

    .line 1574
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v1, :cond_1

    .line 1577
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/m;->c(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1580
    :cond_1
    return v0
.end method

.method final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1556
    const/4 v0, 0x0

    .line 1557
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->ay:Z

    if-nez v1, :cond_1

    .line 1558
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->aD:Z

    if-eqz v1, :cond_0

    .line 1559
    const/4 v0, 0x1

    .line 1560
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v1, :cond_1

    .line 1563
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/m;->b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1566
    :cond_1
    return v0
.end method

.method final a(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 1584
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ay:Z

    if-nez v0, :cond_1

    .line 1585
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aD:Z

    .line 1586
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/m;->c(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1592
    const/4 v0, 0x1

    .line 1596
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->F()V

    .line 1478
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final b(ILandroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 437
    iput p1, p0, Landroid/support/v4/app/Fragment;->K:I

    .line 438
    if-eqz p2, :cond_0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->af:Ljava/lang/String;

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/Fragment;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->af:Ljava/lang/String;

    goto :goto_0
.end method

.method final b(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1482
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->F()V

    .line 1485
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1486
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1487
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_1

    .line 1488
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1491
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_2

    .line 1492
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->H()V

    .line 1494
    :cond_2
    return-void
.end method

.method final b(Landroid/view/Menu;)V
    .locals 1
    .parameter

    .prologue
    .line 1614
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ay:Z

    if-nez v0, :cond_1

    .line 1615
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aD:Z

    .line 1616
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_1

    .line 1619
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/m;->d(Landroid/view/Menu;)V

    .line 1622
    :cond_1
    return-void
.end method

.method final b(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1600
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->ay:Z

    if-nez v1, :cond_2

    .line 1601
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return v0

    .line 1604
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v1, :cond_2

    .line 1605
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/m;->d(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1610
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1625
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1626
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->E()Landroid/os/Parcelable;

    move-result-object v0

    .line 1628
    if-eqz v0, :cond_0

    .line 1629
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1632
    :cond_0
    return-void
.end method

.method final d()V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aI:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    .line 428
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 430
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_1

    .line 431
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_1
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1351
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1352
    iget v0, p0, Landroid/support/v4/app/Fragment;->av:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1353
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1354
    iget v0, p0, Landroid/support/v4/app/Fragment;->aw:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1355
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ax:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1357
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->K:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1358
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->af:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1359
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->aq:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1360
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ak:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1361
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->al:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1362
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->am:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1363
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->an:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1364
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ao:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1365
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ay:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1366
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->az:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1367
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aD:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1368
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aC:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1369
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aA:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1370
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aB:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1371
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aK:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1372
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ar:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1373
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ar:Landroid/support/v4/app/m;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1376
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 1377
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1380
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->au:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 1381
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->au:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1384
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ag:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1385
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ag:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1387
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1388
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ad:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1391
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 1392
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ae:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1395
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_6

    .line 1396
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1397
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1398
    iget v0, p0, Landroid/support/v4/app/Fragment;->aj:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1400
    :cond_6
    iget v0, p0, Landroid/support/v4/app/Fragment;->aF:I

    if-eqz v0, :cond_7

    .line 1401
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->aF:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1403
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aG:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 1404
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aG:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1406
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1407
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1409
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aI:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1410
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1412
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ab:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1413
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ab:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1414
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1415
    iget v0, p0, Landroid/support/v4/app/Fragment;->ac:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1417
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    if-eqz v0, :cond_c

    .line 1418
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/y;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1421
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_d

    .line 1422
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/m;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1425
    :cond_d
    return-void
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Landroid/support/v4/app/Fragment;->aq:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 453
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public final g()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ag:Landroid/os/Bundle;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aH:Landroid/view/View;

    return-object v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 940
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 460
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isDetached()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->az:Z

    return v0
.end method

.method final k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1169
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->K:I

    .line 1170
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->af:Ljava/lang/String;

    .line 1171
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->ak:Z

    .line 1172
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->al:Z

    .line 1173
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->am:Z

    .line 1174
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->an:Z

    .line 1175
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->ao:Z

    .line 1176
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->ap:Z

    .line 1177
    iput v1, p0, Landroid/support/v4/app/Fragment;->aq:I

    .line 1178
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->ar:Landroid/support/v4/app/m;

    .line 1179
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    .line 1180
    iput v1, p0, Landroid/support/v4/app/Fragment;->av:I

    .line 1181
    iput v1, p0, Landroid/support/v4/app/Fragment;->aw:I

    .line 1182
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->ax:Ljava/lang/String;

    .line 1183
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->ay:Z

    .line 1184
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->az:Z

    .line 1185
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->aB:Z

    .line 1186
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    .line 1187
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->aM:Z

    .line 1188
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->aN:Z

    .line 1189
    return-void
.end method

.method final l()V
    .locals 3

    .prologue
    .line 1497
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->F()V

    .line 1499
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->A()Z

    .line 1501
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1502
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 1503
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_1

    .line 1504
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_2

    .line 1508
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->I()V

    .line 1510
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    if-eqz v0, :cond_3

    .line 1511
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->X()V

    .line 1513
    :cond_3
    return-void
.end method

.method final m()V
    .locals 3

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->F()V

    .line 1518
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->A()Z

    .line 1520
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1521
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 1522
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_1

    .line 1523
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1526
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_2

    .line 1527
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->dispatchResume()V

    .line 1528
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->A()Z

    .line 1530
    :cond_2
    return-void
.end method

.method final n()V
    .locals 1

    .prologue
    .line 1540
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1541
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->N()V

    .line 1544
    :cond_0
    return-void
.end method

.method final o()V
    .locals 3

    .prologue
    .line 1635
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->J()V

    .line 1638
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1639
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 1640
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_1

    .line 1641
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1644
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1037
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 948
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1108
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 1338
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 972
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 973
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1292
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1293
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1150
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1153
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aN:Z

    if-nez v0, :cond_0

    .line 1154
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->aN:Z

    .line 1155
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->af:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->aM:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->f(Ljava/lang/String;)Landroid/support/v4/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    .line 1157
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->Y()V

    .line 1160
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1143
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1197
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 742
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1130
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1117
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1082
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1104
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1060
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1062
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aM:Z

    if-nez v0, :cond_1

    .line 1063
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->aM:Z

    .line 1064
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aN:Z

    if-nez v0, :cond_0

    .line 1065
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->aN:Z

    .line 1066
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->af:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->aM:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->f(Ljava/lang/String;)Landroid/support/v4/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    .line 1068
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->S()V

    .line 1072
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1126
    return-void
.end method

.method final p()V
    .locals 3

    .prologue
    .line 1647
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->dispatchStop()V

    .line 1650
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1651
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 1652
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_1

    .line 1653
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1656
    :cond_1
    return-void
.end method

.method final q()V
    .locals 3

    .prologue
    .line 1659
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->K()V

    .line 1662
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aM:Z

    if-eqz v0, :cond_2

    .line 1663
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aM:Z

    .line 1664
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aN:Z

    if-nez v0, :cond_1

    .line 1665
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aN:Z

    .line 1666
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->af:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->aM:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->f(Ljava/lang/String;)Landroid/support/v4/app/y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    .line 1668
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    if-eqz v0, :cond_2

    .line 1669
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->aB:Z

    if-nez v0, :cond_3

    .line 1670
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->T()V

    .line 1676
    :cond_2
    :goto_0
    return-void

    .line 1672
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->U()V

    goto :goto_0
.end method

.method final r()V
    .locals 3

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->L()V

    .line 1682
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1683
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 1684
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_1

    .line 1685
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1688
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    if-eqz v0, :cond_2

    .line 1689
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aL:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->W()V

    .line 1691
    :cond_2
    return-void
.end method

.method final s()V
    .locals 3

    .prologue
    .line 1694
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->at:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->M()V

    .line 1697
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    .line 1698
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 1699
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aE:Z

    if-nez v0, :cond_1

    .line 1700
    new-instance v0, Landroid/support/v4/app/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/af;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1703
    :cond_1
    return-void
.end method

.method public final setArguments(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 507
    iget v0, p0, Landroid/support/v4/app/Fragment;->K:I

    if-ltz v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->ag:Landroid/os/Bundle;

    .line 511
    return-void
.end method

.method public final setMenuVisibility(Z)V
    .locals 1
    .parameter

    .prologue
    .line 796
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aD:Z

    if-eq v0, p1, :cond_0

    .line 797
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->aD:Z

    .line 798
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ak:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ay:Z

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->u()V

    .line 802
    :cond_0
    return-void

    .line 798
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setUserVisibleHint(Z)V
    .locals 2
    .parameter

    .prologue
    .line 818
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->aK:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 819
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ar:Landroid/support/v4/app/m;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/m;->e(Landroid/support/v4/app/Fragment;)V

    .line 821
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->aK:Z

    .line 822
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->aJ:Z

    .line 823
    return-void

    .line 822
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 853
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->as:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 857
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 466
    invoke-static {p0, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 467
    iget v1, p0, Landroid/support/v4/app/Fragment;->K:I

    if-ltz v1, :cond_0

    .line 468
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget v1, p0, Landroid/support/v4/app/Fragment;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    :cond_0
    iget v1, p0, Landroid/support/v4/app/Fragment;->av:I

    if-eqz v1, :cond_1

    .line 472
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget v1, p0, Landroid/support/v4/app/Fragment;->av:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->ax:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 476
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
