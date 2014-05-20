.class final Landroid/support/v4/app/y;
.super Landroid/support/v4/app/w;
.source "SourceFile"


# static fields
.field static DEBUG:Z


# instance fields
.field aB:Z

.field final af:Ljava/lang/String;

.field as:Landroid/support/v4/app/FragmentActivity;

.field final bZ:Landroid/support/v4/c/d;

.field final ca:Landroid/support/v4/c/d;

.field cb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/y;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public final Q()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 825
    .line 826
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 827
    :goto_0
    if-ge v2, v4, :cond_1

    .line 828
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0, v2}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 829
    iget-boolean v5, v0, Landroid/support/v4/app/z;->cb:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/z;->ch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    .line 827
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 829
    goto :goto_1

    .line 831
    :cond_1
    return v3
.end method

.method final S()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 701
    sget-boolean v0, Landroid/support/v4/app/y;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/y;->cb:Z

    if-eqz v0, :cond_2

    .line 703
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called doStart when already started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    :cond_1
    return-void

    .line 709
    :cond_2
    iput-boolean v4, p0, Landroid/support/v4/app/y;->cb:Z

    .line 713
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 714
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    iget-boolean v2, v0, Landroid/support/v4/app/z;->aB:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Landroid/support/v4/app/z;->cj:Z

    if-eqz v2, :cond_4

    iput-boolean v4, v0, Landroid/support/v4/app/z;->cb:Z

    .line 713
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 714
    :cond_4
    iget-boolean v2, v0, Landroid/support/v4/app/z;->cb:Z

    if-nez v2, :cond_3

    iput-boolean v4, v0, Landroid/support/v4/app/z;->cb:Z

    sget-boolean v2, Landroid/support/v4/app/y;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Starting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    iget-object v2, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    if-nez v2, :cond_6

    iget-object v2, v0, Landroid/support/v4/app/z;->ce:Landroid/support/v4/app/x;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/support/v4/app/z;->ce:Landroid/support/v4/app/x;

    iget v3, v0, Landroid/support/v4/app/z;->cc:I

    iget-object v3, v0, Landroid/support/v4/app/z;->cd:Landroid/os/Bundle;

    invoke-interface {v2}, Landroid/support/v4/app/x;->R()Landroid/support/v4/content/h;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    :cond_6
    iget-object v2, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-boolean v2, v0, Landroid/support/v4/app/z;->cl:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    iget v3, v0, Landroid/support/v4/app/z;->cc:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/h;->a(ILandroid/support/v4/content/i;)V

    iput-boolean v4, v0, Landroid/support/v4/app/z;->cl:Z

    :cond_8
    iget-object v0, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    invoke-virtual {v0}, Landroid/support/v4/content/h;->startLoading()V

    goto :goto_1
.end method

.method final T()V
    .locals 2

    .prologue
    .line 719
    sget-boolean v0, Landroid/support/v4/app/y;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stopping in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/y;->cb:Z

    if-nez v0, :cond_1

    .line 721
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called doStop when not started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 728
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->stop()V

    .line 727
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 730
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/y;->cb:Z

    goto :goto_0
.end method

.method final U()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 734
    sget-boolean v0, Landroid/support/v4/app/y;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retaining in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/y;->cb:Z

    if-nez v0, :cond_2

    .line 736
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called doRetain when not started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    :cond_1
    return-void

    .line 742
    :cond_2
    iput-boolean v5, p0, Landroid/support/v4/app/y;->aB:Z

    .line 743
    iput-boolean v4, p0, Landroid/support/v4/app/y;->cb:Z

    .line 744
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 745
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    sget-boolean v2, Landroid/support/v4/app/y;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Retaining: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    iput-boolean v5, v0, Landroid/support/v4/app/z;->aB:Z

    iget-boolean v2, v0, Landroid/support/v4/app/z;->cb:Z

    iput-boolean v2, v0, Landroid/support/v4/app/z;->cj:Z

    iput-boolean v4, v0, Landroid/support/v4/app/z;->cb:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/app/z;->ce:Landroid/support/v4/app/x;

    .line 744
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final V()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 750
    iget-boolean v0, p0, Landroid/support/v4/app/y;->aB:Z

    if-eqz v0, :cond_4

    .line 751
    sget-boolean v0, Landroid/support/v4/app/y;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished Retaining in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/app/y;->aB:Z

    .line 754
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 755
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    iget-boolean v2, v0, Landroid/support/v4/app/z;->aB:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/support/v4/app/y;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Finished Retaining: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    iput-boolean v4, v0, Landroid/support/v4/app/z;->aB:Z

    iget-boolean v2, v0, Landroid/support/v4/app/z;->cb:Z

    iget-boolean v3, v0, Landroid/support/v4/app/z;->cj:Z

    if-eq v2, v3, :cond_2

    iget-boolean v2, v0, Landroid/support/v4/app/z;->cb:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/z;->stop()V

    :cond_2
    iget-boolean v2, v0, Landroid/support/v4/app/z;->cb:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/support/v4/app/z;->cg:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/support/v4/app/z;->ck:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    iget-object v3, v0, Landroid/support/v4/app/z;->ci:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/z;->a(Landroid/support/v4/content/h;Ljava/lang/Object;)V

    .line 754
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 758
    :cond_4
    return-void
.end method

.method final W()V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 762
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/z;->ck:Z

    .line 761
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 764
    :cond_0
    return-void
.end method

.method final X()V
    .locals 4

    .prologue
    .line 767
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 768
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    iget-boolean v2, v0, Landroid/support/v4/app/z;->cb:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/z;->ck:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/z;->ck:Z

    iget-boolean v2, v0, Landroid/support/v4/app/z;->cg:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/z;->cf:Landroid/support/v4/content/h;

    iget-object v3, v0, Landroid/support/v4/app/z;->ci:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/z;->a(Landroid/support/v4/content/h;Ljava/lang/Object;)V

    .line 767
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 770
    :cond_1
    return-void
.end method

.method final Y()V
    .locals 2

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/support/v4/app/y;->aB:Z

    if-nez v0, :cond_2

    .line 774
    sget-boolean v0, Landroid/support/v4/app/y;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroying Active in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 776
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->destroy()V

    .line 775
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->clear()V

    .line 781
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/y;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroying Inactive in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/y;->ca:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 783
    iget-object v0, p0, Landroid/support/v4/app/y;->ca:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->destroy()V

    .line 782
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 785
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/y;->ca:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->clear()V

    .line 786
    return-void
.end method

.method final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Landroid/support/v4/app/y;->as:Landroid/support/v4/app/FragmentActivity;

    .line 485
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 802
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 804
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 805
    iget-object v0, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 806
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/y;->bZ:Landroid/support/v4/c/d;

    invoke-virtual {v4, v1}, Landroid/support/v4/c/d;->keyAt(I)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 807
    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/z;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, v3, p2}, Landroid/support/v4/app/z;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 804
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 811
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/y;->ca:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 812
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/y;->ca:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 815
    iget-object v0, p0, Landroid/support/v4/app/y;->ca:Landroid/support/v4/c/d;

    invoke-virtual {v0, v2}, Landroid/support/v4/c/d;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 816
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/y;->ca:Landroid/support/v4/c/d;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/d;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 817
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/z;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, v1, p2}, Landroid/support/v4/app/z;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 821
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 791
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget-object v1, p0, Landroid/support/v4/app/y;->as:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 795
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
