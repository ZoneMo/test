.class final Landroid/support/v7/internal/view/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private iA:I

.field private iB:Ljava/lang/CharSequence;

.field private iC:Ljava/lang/CharSequence;

.field private iD:I

.field private iE:C

.field private iF:C

.field private iG:I

.field private iH:Z

.field private iI:Z

.field private iJ:Z

.field private iK:I

.field private iL:I

.field private iM:Ljava/lang/String;

.field private iN:Ljava/lang/String;

.field private iO:Ljava/lang/String;

.field private iP:Landroid/support/v4/view/n;

.field final synthetic iQ:Landroid/support/v7/internal/view/c;

.field private ir:Landroid/view/Menu;

.field private is:I

.field private it:I

.field private iu:I

.field private iv:I

.field private iw:Z

.field private ix:Z

.field private iy:Z

.field private iz:I


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/c;Landroid/view/Menu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Landroid/support/v7/internal/view/e;->iQ:Landroid/support/v7/internal/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Landroid/support/v7/internal/view/e;->ir:Landroid/view/Menu;

    .line 315
    invoke-virtual {p0}, Landroid/support/v7/internal/view/e;->bx()V

    .line 316
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/e;)Landroid/support/v4/view/n;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iP:Landroid/support/v4/view/n;

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iQ:Landroid/support/v7/internal/view/c;

    invoke-static {v0}, Landroid/support/v7/internal/view/c;->a(Landroid/support/v7/internal/view/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 477
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 478
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    .line 480
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot instantiate class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)C
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 400
    if-nez p0, :cond_0

    .line 403
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private i(Landroid/view/MenuItem;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 408
    iget-boolean v0, p0, Landroid/support/v7/internal/view/e;->iH:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/e;->iI:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/e;->iJ:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Landroid/support/v7/internal/view/e;->iG:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/view/e;->iC:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Landroid/support/v7/internal/view/e;->iD:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/e;->iE:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/e;->iF:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 417
    iget v0, p0, Landroid/support/v7/internal/view/e;->iK:I

    if-ltz v0, :cond_0

    .line 418
    iget v0, p0, Landroid/support/v7/internal/view/e;->iK:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;I)V

    .line 421
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iO:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iQ:Landroid/support/v7/internal/view/c;

    invoke-static {v0}, Landroid/support/v7/internal/view/c;->a(Landroid/support/v7/internal/view/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 408
    goto :goto_0

    .line 426
    :cond_2
    new-instance v0, Landroid/support/v7/internal/view/d;

    iget-object v3, p0, Landroid/support/v7/internal/view/e;->iQ:Landroid/support/v7/internal/view/c;

    invoke-static {v3}, Landroid/support/v7/internal/view/c;->c(Landroid/support/v7/internal/view/c;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/view/e;->iO:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/support/v7/internal/view/d;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 430
    :cond_3
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/s;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 431
    :goto_1
    if-eqz v0, :cond_4

    iget v3, p0, Landroid/support/v7/internal/view/e;->iG:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 432
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/s;->n(Z)V

    .line 436
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iM:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 437
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iM:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/c;->bw()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/view/e;->iQ:Landroid/support/v7/internal/view/c;

    invoke-static {v3}, Landroid/support/v7/internal/view/c;->d(Landroid/support/v7/internal/view/c;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/internal/view/e;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 439
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 442
    :goto_2
    iget v0, p0, Landroid/support/v7/internal/view/e;->iL:I

    if-lez v0, :cond_5

    .line 443
    if-nez v1, :cond_5

    .line 444
    iget v0, p0, Landroid/support/v7/internal/view/e;->iL:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 445
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iP:Landroid/support/v4/view/n;

    if-eqz v0, :cond_6

    .line 452
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iP:Landroid/support/v4/view/n;

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;Landroid/support/v4/view/n;)Landroid/view/MenuItem;

    .line 454
    :cond_6
    return-void

    .line 430
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iQ:Landroid/support/v7/internal/view/c;

    invoke-static {v0}, Landroid/support/v7/internal/view/c;->a(Landroid/support/v7/internal/view/c;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/p;->bJr:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/e;->is:I

    .line 334
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/e;->it:I

    .line 336
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/e;->iu:I

    .line 337
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/e;->iv:I

    .line 339
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/e;->iw:Z

    .line 340
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/e;->ix:Z

    .line 342
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iQ:Landroid/support/v7/internal/view/c;

    invoke-static {v0}, Landroid/support/v7/internal/view/c;->a(Landroid/support/v7/internal/view/c;)Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/tencent/mm/p;->bJs:[I

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 352
    const/4 v0, 0x2

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/e;->iz:I

    .line 353
    const/4 v0, 0x5

    iget v4, p0, Landroid/support/v7/internal/view/e;->it:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 354
    const/4 v4, 0x6

    iget v5, p0, Landroid/support/v7/internal/view/e;->iu:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 355
    const/high16 v5, -0x1

    and-int/2addr v0, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/support/v7/internal/view/e;->iA:I

    .line 357
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->iB:Ljava/lang/CharSequence;

    .line 358
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->iC:Ljava/lang/CharSequence;

    .line 359
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/e;->iD:I

    .line 360
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->h(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/e;->iE:C

    .line 362
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->h(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/e;->iF:C

    .line 364
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/support/v7/internal/view/e;->iG:I

    .line 372
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->iH:Z

    .line 373
    const/4 v0, 0x4

    iget-boolean v4, p0, Landroid/support/v7/internal/view/e;->iw:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->iI:Z

    .line 374
    iget-boolean v0, p0, Landroid/support/v7/internal/view/e;->ix:Z

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->iJ:Z

    .line 375
    const/16 v0, 0xd

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/e;->iK:I

    .line 376
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->iO:Ljava/lang/String;

    .line 377
    const/16 v0, 0xe

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/e;->iL:I

    .line 378
    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->iM:Ljava/lang/String;

    .line 379
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->iN:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iN:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 382
    :goto_2
    if-eqz v1, :cond_3

    iget v0, p0, Landroid/support/v7/internal/view/e;->iL:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iM:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 383
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->iN:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/c;->bv()[Ljava/lang/Class;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/internal/view/e;->iQ:Landroid/support/v7/internal/view/c;

    invoke-static {v4}, Landroid/support/v7/internal/view/c;->b(Landroid/support/v7/internal/view/c;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Landroid/support/v7/internal/view/e;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/n;

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->iP:Landroid/support/v4/view/n;

    .line 394
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    iput-boolean v2, p0, Landroid/support/v7/internal/view/e;->iy:Z

    .line 397
    return-void

    :cond_0
    move v0, v2

    .line 366
    goto :goto_0

    .line 370
    :cond_1
    iget v0, p0, Landroid/support/v7/internal/view/e;->iv:I

    iput v0, p0, Landroid/support/v7/internal/view/e;->iG:I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 381
    goto :goto_2

    .line 387
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->iP:Landroid/support/v4/view/n;

    goto :goto_3
.end method

.method public final bA()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Landroid/support/v7/internal/view/e;->iy:Z

    return v0
.end method

.method public final bx()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 319
    iput v0, p0, Landroid/support/v7/internal/view/e;->is:I

    .line 320
    iput v0, p0, Landroid/support/v7/internal/view/e;->it:I

    .line 321
    iput v0, p0, Landroid/support/v7/internal/view/e;->iu:I

    .line 322
    iput v0, p0, Landroid/support/v7/internal/view/e;->iv:I

    .line 323
    iput-boolean v1, p0, Landroid/support/v7/internal/view/e;->iw:Z

    .line 324
    iput-boolean v1, p0, Landroid/support/v7/internal/view/e;->ix:Z

    .line 325
    return-void
.end method

.method public final by()V
    .locals 5

    .prologue
    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->iy:Z

    .line 458
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->ir:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/internal/view/e;->is:I

    iget v2, p0, Landroid/support/v7/internal/view/e;->iz:I

    iget v3, p0, Landroid/support/v7/internal/view/e;->iA:I

    iget-object v4, p0, Landroid/support/v7/internal/view/e;->iB:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/e;->i(Landroid/view/MenuItem;)V

    .line 459
    return-void
.end method

.method public final bz()Landroid/view/SubMenu;
    .locals 5

    .prologue
    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->iy:Z

    .line 463
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->ir:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/internal/view/e;->is:I

    iget v2, p0, Landroid/support/v7/internal/view/e;->iz:I

    iget v3, p0, Landroid/support/v7/internal/view/e;->iA:I

    iget-object v4, p0, Landroid/support/v7/internal/view/e;->iB:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/internal/view/e;->i(Landroid/view/MenuItem;)V

    .line 465
    return-object v0
.end method
