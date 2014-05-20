.class public abstract Lcom/tencent/mapapi/map/b;
.super Lcom/tencent/mapapi/map/m;
.source "SourceFile"


# static fields
.field private static Ud:I


# instance fields
.field private TW:Z

.field private UZ:Landroid/graphics/drawable/Drawable;

.field private Uo:I

.field private Va:Landroid/graphics/drawable/Drawable;

.field private Vb:Lcom/tencent/mapapi/map/e;

.field private Vc:Lcom/tencent/mapapi/map/c;

.field private Vd:Lcom/tencent/mapapi/map/OverlayItem;

.field private g:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/tencent/mapapi/map/b;->Ud:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Lcom/tencent/mapapi/map/m;-><init>()V

    .line 29
    iput-boolean v4, p0, Lcom/tencent/mapapi/map/b;->TW:Z

    .line 33
    iput-object v1, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    .line 34
    iput-object v1, p0, Lcom/tencent/mapapi/map/b;->Vc:Lcom/tencent/mapapi/map/c;

    .line 35
    iput v0, p0, Lcom/tencent/mapapi/map/b;->g:I

    .line 36
    iput v0, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    .line 38
    iput-boolean v3, p0, Lcom/tencent/mapapi/map/b;->j:Z

    .line 45
    iput-object p1, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    .line 48
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/tencent/mapapi/map/bq;->WE:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 55
    iget-object v2, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    new-instance v0, Lcom/tencent/mapapi/map/u;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/u;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/u;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/b;->Va:Landroid/graphics/drawable/Drawable;

    .line 60
    sget v0, Lcom/tencent/mapapi/map/b;->Ud:I

    if-ne v4, v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/tencent/mapapi/map/b;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x2

    sget v1, Lcom/tencent/mapapi/map/b;->Ud:I

    if-ne v0, v1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/tencent/mapapi/map/b;->boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/tencent/mapapi/map/b;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Lcom/tencent/mapapi/map/d;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 91
    if-eqz p0, :cond_0

    sget-object v1, Lcom/tencent/mapapi/map/d;->Ve:Lcom/tencent/mapapi/map/d;

    if-ne v1, p1, :cond_1

    .line 92
    :cond_0
    const/4 p0, 0x0

    .line 108
    :goto_0
    return-object p0

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 100
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    .line 103
    sget-object v3, Lcom/tencent/mapapi/map/d;->Vf:Lcom/tencent/mapapi/map/d;

    if-ne p1, v3, :cond_2

    .line 104
    div-int/lit8 v1, v1, 0x2

    .line 105
    neg-int v0, v1

    .line 107
    :cond_2
    neg-int v3, v2

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/b;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/b;Lcom/tencent/mapapi/map/OverlayItem;)Lcom/tencent/mapapi/map/OverlayItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tencent/mapapi/map/b;->Vd:Lcom/tencent/mapapi/map/OverlayItem;

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;ZLcom/tencent/mapapi/map/OverlayItem;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-virtual {p4, p5}, Lcom/tencent/mapapi/map/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    :cond_0
    const/4 v0, 0x1

    .line 451
    :goto_0
    if-eqz v0, :cond_2

    .line 452
    if-eqz p3, :cond_1

    .line 453
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Va:Landroid/graphics/drawable/Drawable;

    .line 454
    iget-object v1, p0, Lcom/tencent/mapapi/map/b;->Va:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 455
    iget-object v1, p0, Lcom/tencent/mapapi/map/b;->Va:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/tencent/mapapi/map/u;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 472
    :goto_1
    invoke-virtual {p2}, Lcom/tencent/mapapi/map/MapView;->mp()Lcom/tencent/mapapi/map/o;

    move-result-object v1

    .line 473
    invoke-virtual {p4}, Lcom/tencent/mapapi/map/OverlayItem;->my()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/tencent/mapapi/map/o;->a(Lcom/tencent/mapapi/map/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 477
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v2

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v2

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v1

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int v2, v6, v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v1

    invoke-virtual {v0, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 492
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->UZ:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 460
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v2, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 462
    invoke-static {v1}, Lcom/tencent/mapapi/map/b;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 463
    if-eqz p3, :cond_3

    .line 464
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Va:Landroid/graphics/drawable/Drawable;

    .line 465
    iget-object v2, p0, Lcom/tencent/mapapi/map/b;->Va:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 466
    iget-object v2, p0, Lcom/tencent/mapapi/map/b;->Va:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v1}, Lcom/tencent/mapapi/map/u;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 468
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected static a(Landroid/graphics/drawable/Drawable;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private bg(I)Lcom/tencent/mapapi/map/OverlayItem;
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/e;->bh(I)Lcom/tencent/mapapi/map/OverlayItem;

    move-result-object v0

    return-object v0
.end method

.method public static boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x2

    sput v0, Lcom/tencent/mapapi/map/b;->Ud:I

    .line 87
    sget-object v0, Lcom/tencent/mapapi/map/d;->Vf:Lcom/tencent/mapapi/map/d;

    invoke-static {p0, v0}, Lcom/tencent/mapapi/map/b;->a(Landroid/graphics/drawable/Drawable;Lcom/tencent/mapapi/map/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x1

    sput v0, Lcom/tencent/mapapi/map/b;->Ud:I

    .line 77
    sget-object v0, Lcom/tencent/mapapi/map/d;->Vg:Lcom/tencent/mapapi/map/d;

    invoke-static {p0, v0}, Lcom/tencent/mapapi/map/b;->a(Landroid/graphics/drawable/Drawable;Lcom/tencent/mapapi/map/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 421
    move v6, v5

    :goto_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/e;->ml()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    invoke-virtual {v0, v6}, Lcom/tencent/mapapi/map/e;->bi(I)I

    move-result v0

    .line 423
    iget v1, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    if-eq v0, v1, :cond_0

    .line 424
    invoke-direct {p0, v0}, Lcom/tencent/mapapi/map/b;->bg(I)Lcom/tencent/mapapi/map/OverlayItem;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 425
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mapapi/map/b;->a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;ZLcom/tencent/mapapi/map/OverlayItem;I)V

    .line 421
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 429
    :cond_1
    const/4 v10, 0x0

    iget v0, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    iget v1, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/e;->bh(I)Lcom/tencent/mapapi/map/OverlayItem;

    move-result-object v10

    .line 430
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/b;->TW:Z

    if-eqz v0, :cond_4

    if-eqz v10, :cond_4

    .line 432
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/b;->mv()Z

    move-result v0

    if-ne v0, v9, :cond_3

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    .line 434
    invoke-direct/range {v6 .. v11}, Lcom/tencent/mapapi/map/b;->a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;ZLcom/tencent/mapapi/map/OverlayItem;I)V

    :cond_3
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, v5

    .line 438
    invoke-direct/range {v6 .. v11}, Lcom/tencent/mapapi/map/b;->a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;ZLcom/tencent/mapapi/map/OverlayItem;I)V

    .line 441
    :cond_4
    return-void
.end method

.method public final a(Lcom/tencent/mapapi/map/OverlayItem;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 225
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    iget-object v1, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    invoke-virtual {v1, p1}, Lcom/tencent/mapapi/map/e;->b(Lcom/tencent/mapapi/map/OverlayItem;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-nez p1, :cond_3

    iget v0, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    if-eq v0, v2, :cond_3

    .line 229
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vc:Lcom/tencent/mapapi/map/c;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vc:Lcom/tencent/mapapi/map/c;

    .line 232
    :cond_2
    iput v2, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/e;->b(Lcom/tencent/mapapi/map/OverlayItem;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    .line 236
    iget v0, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    if-eq v0, v2, :cond_0

    .line 237
    iget v0, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    iput v0, p0, Lcom/tencent/mapapi/map/b;->g:I

    .line 238
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vc:Lcom/tencent/mapapi/map/c;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vc:Lcom/tencent/mapapi/map/c;

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;Lcom/tencent/mapapi/map/MapView;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 350
    .line 352
    iget-boolean v2, p0, Lcom/tencent/mapapi/map/b;->j:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mapapi/map/b;->Vd:Lcom/tencent/mapapi/map/OverlayItem;

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/tencent/mapapi/map/b;->Vd:Lcom/tencent/mapapi/map/OverlayItem;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/OverlayItem;->mw()Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 357
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 359
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 373
    :pswitch_1
    iput-boolean v0, p0, Lcom/tencent/mapapi/map/b;->j:Z

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/b;->Vd:Lcom/tencent/mapapi/map/OverlayItem;

    move v0, v1

    .line 375
    goto :goto_0

    .line 363
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 365
    invoke-virtual {p2}, Lcom/tencent/mapapi/map/MapView;->mp()Lcom/tencent/mapapi/map/o;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/tencent/mapapi/map/o;->s(II)Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    .line 366
    iget-object v2, p0, Lcom/tencent/mapapi/map/b;->Vd:Lcom/tencent/mapapi/map/OverlayItem;

    invoke-virtual {v2, v0}, Lcom/tencent/mapapi/map/OverlayItem;->c(Lcom/tencent/mapapi/map/GeoPoint;)V

    .line 367
    invoke-virtual {p2}, Lcom/tencent/mapapi/map/MapView;->invalidate()V

    move v0, v1

    .line 369
    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mapapi/map/e;->d(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mapapi/map/e;->c(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/b;->j:Z

    .line 299
    iget-object v0, p0, Lcom/tencent/mapapi/map/b;->Vd:Lcom/tencent/mapapi/map/OverlayItem;

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract bf(I)Lcom/tencent/mapapi/map/OverlayItem;
.end method

.method protected final onTap(I)Z
    .locals 1
    .parameter

    .prologue
    .line 388
    iget v0, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    if-eq p1, v0, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lcom/tencent/mapapi/map/b;->bg(I)Lcom/tencent/mapapi/map/OverlayItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/b;->a(Lcom/tencent/mapapi/map/OverlayItem;)V

    .line 391
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final populate()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 128
    new-instance v0, Lcom/tencent/mapapi/map/e;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/e;-><init>(Lcom/tencent/mapapi/map/b;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/b;->Vb:Lcom/tencent/mapapi/map/e;

    .line 129
    iput v1, p0, Lcom/tencent/mapapi/map/b;->g:I

    .line 130
    iput v1, p0, Lcom/tencent/mapapi/map/b;->Uo:I

    .line 131
    return-void
.end method

.method public abstract size()I
.end method
