.class public final Landroid/support/v4/content/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cz:Landroid/support/v4/content/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Landroid/support/v4/content/g;

    invoke-direct {v0}, Landroid/support/v4/content/g;-><init>()V

    sput-object v0, Landroid/support/v4/content/c;->cz:Landroid/support/v4/content/d;

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroid/support/v4/content/f;

    invoke-direct {v0}, Landroid/support/v4/content/f;-><init>()V

    sput-object v0, Landroid/support/v4/content/c;->cz:Landroid/support/v4/content/d;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroid/support/v4/content/e;

    invoke-direct {v0}, Landroid/support/v4/content/e;-><init>()V

    sput-object v0, Landroid/support/v4/content/c;->cz:Landroid/support/v4/content/d;

    goto :goto_0
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 221
    sget-object v0, Landroid/support/v4/content/c;->cz:Landroid/support/v4/content/d;

    invoke-interface {v0, p0}, Landroid/support/v4/content/d;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
