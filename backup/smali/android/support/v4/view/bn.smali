.class public final Landroid/support/v4/view/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final eb:Landroid/support/v4/view/bq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 67
    new-instance v0, Landroid/support/v4/view/bp;

    invoke-direct {v0}, Landroid/support/v4/view/bp;-><init>()V

    sput-object v0, Landroid/support/v4/view/bn;->eb:Landroid/support/v4/view/bq;

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 69
    new-instance v0, Landroid/support/v4/view/bo;

    invoke-direct {v0}, Landroid/support/v4/view/bo;-><init>()V

    sput-object v0, Landroid/support/v4/view/bn;->eb:Landroid/support/v4/view/bq;

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Landroid/support/v4/view/br;

    invoke-direct {v0}, Landroid/support/v4/view/br;-><init>()V

    sput-object v0, Landroid/support/v4/view/bn;->eb:Landroid/support/v4/view/bq;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    sget-object v0, Landroid/support/v4/view/bn;->eb:Landroid/support/v4/view/bq;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bq;->a(Landroid/view/ViewGroup;)V

    .line 120
    return-void
.end method
