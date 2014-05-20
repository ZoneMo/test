.class public final Landroid/support/v4/view/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final dY:Landroid/support/v4/view/az;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0}, Landroid/support/v4/view/ay;-><init>()V

    sput-object v0, Landroid/support/v4/view/aw;->dY:Landroid/support/v4/view/az;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Landroid/support/v4/view/ax;

    invoke-direct {v0}, Landroid/support/v4/view/ax;-><init>()V

    sput-object v0, Landroid/support/v4/view/aw;->dY:Landroid/support/v4/view/az;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    sget-object v0, Landroid/support/v4/view/aw;->dY:Landroid/support/v4/view/az;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/az;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    sget-object v0, Landroid/support/v4/view/aw;->dY:Landroid/support/v4/view/az;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/az;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
