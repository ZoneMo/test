.class public final Landroid/support/v4/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final gb:Landroid/support/v4/widget/m;


# instance fields
.field private ga:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Landroid/support/v4/widget/l;

    invoke-direct {v0}, Landroid/support/v4/widget/l;-><init>()V

    sput-object v0, Landroid/support/v4/widget/j;->gb:Landroid/support/v4/widget/m;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/support/v4/widget/k;

    invoke-direct {v0}, Landroid/support/v4/widget/k;-><init>()V

    sput-object v0, Landroid/support/v4/widget/j;->gb:Landroid/support/v4/widget/m;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/support/v4/widget/j;->gb:Landroid/support/v4/widget/m;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/m;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/j;->ga:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public final aG()Z
    .locals 2

    .prologue
    .line 189
    sget-object v0, Landroid/support/v4/widget/j;->gb:Landroid/support/v4/widget/m;

    iget-object v1, p0, Landroid/support/v4/widget/j;->ga:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/m;->z(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(F)Z
    .locals 2
    .parameter

    .prologue
    .line 177
    sget-object v0, Landroid/support/v4/widget/j;->gb:Landroid/support/v4/widget/m;

    iget-object v1, p0, Landroid/support/v4/widget/j;->ga:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/m;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)Z
    .locals 2
    .parameter

    .prologue
    .line 218
    sget-object v0, Landroid/support/v4/widget/j;->gb:Landroid/support/v4/widget/m;

    iget-object v1, p0, Landroid/support/v4/widget/j;->ga:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/m;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public final finish()V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/widget/j;->gb:Landroid/support/v4/widget/m;

    iget-object v1, p0, Landroid/support/v4/widget/j;->ga:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/m;->y(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public final isFinished()Z
    .locals 2

    .prologue
    .line 154
    sget-object v0, Landroid/support/v4/widget/j;->gb:Landroid/support/v4/widget/m;

    iget-object v1, p0, Landroid/support/v4/widget/j;->ga:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/m;->x(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setSize(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/widget/j;->gb:Landroid/support/v4/widget/m;

    iget-object v1, p0, Landroid/support/v4/widget/j;->ga:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/m;->a(Ljava/lang/Object;II)V

    .line 144
    return-void
.end method
