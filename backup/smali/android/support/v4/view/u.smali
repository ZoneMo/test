.class public final Landroid/support/v4/view/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final dg:Landroid/support/v4/view/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 167
    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0}, Landroid/support/v4/view/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/u;->dg:Landroid/support/v4/view/y;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Landroid/support/v4/view/v;

    invoke-direct {v0}, Landroid/support/v4/view/v;-><init>()V

    sput-object v0, Landroid/support/v4/view/u;->dg:Landroid/support/v4/view/y;

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 188
    sget-object v0, Landroid/support/v4/view/u;->dg:Landroid/support/v4/view/y;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/y;->h(I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 192
    sget-object v0, Landroid/support/v4/view/u;->dg:Landroid/support/v4/view/y;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/y;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    sget-object v0, Landroid/support/v4/view/u;->dg:Landroid/support/v4/view/y;

    invoke-interface {v0, p0}, Landroid/support/v4/view/y;->c(Landroid/view/KeyEvent;)V

    .line 197
    return-void
.end method
