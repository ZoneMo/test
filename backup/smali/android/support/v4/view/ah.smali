.class final Landroid/support/v4/view/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field private dk:Landroid/support/v4/view/ai;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/support/v4/view/ah;->dk:Landroid/support/v4/view/ai;

    .line 56
    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/view/ah;->dk:Landroid/support/v4/view/ai;

    invoke-interface {v0}, Landroid/support/v4/view/ai;->ae()Z

    move-result v0

    return v0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/view/ah;->dk:Landroid/support/v4/view/ai;

    invoke-interface {v0}, Landroid/support/v4/view/ai;->ad()Z

    move-result v0

    return v0
.end method
