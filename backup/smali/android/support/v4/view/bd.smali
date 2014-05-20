.class Landroid/support/v4/view/bd;
.super Landroid/support/v4/view/bc;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/support/v4/view/bc;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method
