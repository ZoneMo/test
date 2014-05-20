.class final Landroid/support/v7/app/p;
.super Landroid/support/v7/app/c;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field final ia:Landroid/app/ActionBar$Tab;

.field private ib:Landroid/support/v4/app/v;

.field private ic:Ljava/lang/CharSequence;

.field private ie:Landroid/support/v7/app/d;

.field final synthetic if:Landroid/support/v7/app/o;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/o;Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Landroid/support/v7/app/p;->if:Landroid/support/v7/app/o;

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    .line 352
    iput-object p2, p0, Landroid/support/v7/app/p;->ia:Landroid/app/ActionBar$Tab;

    .line 353
    return-void
.end method

.method private bn()Landroid/support/v4/app/v;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v7/app/p;->ib:Landroid/support/v4/app/v;

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Landroid/support/v7/app/p;->if:Landroid/support/v7/app/o;

    iget-object v0, v0, Landroid/support/v7/app/o;->hM:Landroid/support/v7/app/a;

    invoke-interface {v0}, Landroid/support/v7/app/a;->w()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->x()Landroid/support/v4/app/v;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/v;->b()Landroid/support/v4/app/v;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->ib:Landroid/support/v4/app/v;

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p;->ib:Landroid/support/v4/app/v;

    return-object v0
.end method

.method private bo()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/v7/app/p;->ib:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->ib:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/support/v7/app/p;->ib:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->commit()I

    .line 483
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/p;->ib:Landroid/support/v4/app/v;

    .line 484
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/app/d;)Landroid/support/v7/app/c;
    .locals 2
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Landroid/support/v7/app/p;->ie:Landroid/support/v7/app/d;

    .line 425
    iget-object v1, p0, Landroid/support/v7/app/p;->ia:Landroid/app/ActionBar$Tab;

    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 426
    return-object p0

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v7/app/c;
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v7/app/p;->ia:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 385
    return-object p0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v7/app/p;->ic:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/app/p;->ia:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v7/app/p;->ia:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/app/p;->ia:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/app/p;->ia:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v7/app/p;->ie:Landroid/support/v7/app/d;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/p;->bn()Landroid/support/v4/app/v;

    .line 468
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/p;->bo()V

    .line 469
    return-void
.end method

.method public final onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v7/app/p;->ie:Landroid/support/v7/app/d;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/p;->bn()Landroid/support/v4/app/v;

    .line 455
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/p;->bo()V

    .line 456
    return-void
.end method

.method public final onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/app/p;->ie:Landroid/support/v7/app/d;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/p;->bn()Landroid/support/v4/app/v;

    .line 462
    :cond_0
    return-void
.end method

.method public final select()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/v7/app/p;->ia:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 432
    return-void
.end method
