.class public final Landroid/support/v4/view/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final dl:Landroid/support/v4/view/am;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 109
    new-instance v0, Landroid/support/v4/view/al;

    invoke-direct {v0}, Landroid/support/v4/view/al;-><init>()V

    sput-object v0, Landroid/support/v4/view/aj;->dl:Landroid/support/v4/view/am;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/support/v4/view/ak;

    invoke-direct {v0}, Landroid/support/v4/view/ak;-><init>()V

    sput-object v0, Landroid/support/v4/view/aj;->dl:Landroid/support/v4/view/am;

    goto :goto_0
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/aj;->dl:Landroid/support/v4/view/am;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/am;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    sget-object v0, Landroid/support/v4/view/aj;->dl:Landroid/support/v4/view/am;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/am;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    sget-object v0, Landroid/support/v4/view/aj;->dl:Landroid/support/v4/view/am;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/am;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 236
    sget-object v0, Landroid/support/v4/view/aj;->dl:Landroid/support/v4/view/am;

    invoke-interface {v0, p0}, Landroid/support/v4/view/am;->c(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    sget-object v0, Landroid/support/v4/view/aj;->dl:Landroid/support/v4/view/am;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/am;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
