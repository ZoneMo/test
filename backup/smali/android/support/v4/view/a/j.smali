.class final Landroid/support/v4/view/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/a/n;


# instance fields
.field final synthetic fq:Landroid/support/v4/view/a/g;

.field final synthetic fr:Landroid/support/v4/view/a/i;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/i;Landroid/support/v4/view/a/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Landroid/support/v4/view/a/j;->fr:Landroid/support/v4/view/a/i;

    iput-object p2, p0, Landroid/support/v4/view/a/j;->fq:Landroid/support/v4/view/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final av()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/view/a/j;->fq:Landroid/support/v4/view/a/g;

    invoke-static {}, Landroid/support/v4/view/a/g;->av()Z

    move-result v0

    return v0
.end method

.method public final aw()Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-object v0, p0, Landroid/support/v4/view/a/j;->fq:Landroid/support/v4/view/a/g;

    invoke-static {}, Landroid/support/v4/view/a/g;->aw()Ljava/util/List;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 62
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 63
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/a;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->as()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_0
    return-object v2
.end method

.method public final ax()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/view/a/j;->fq:Landroid/support/v4/view/a/g;

    invoke-static {}, Landroid/support/v4/view/a/g;->au()Landroid/support/v4/view/a/a;

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method
