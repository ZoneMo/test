.class public abstract Landroid/support/v4/view/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dd:Landroid/support/v4/view/o;

.field private de:Landroid/support/v4/view/p;

.field private final mContext:Landroid/content/Context;


# virtual methods
.method public final a(Landroid/support/v4/view/o;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/v4/view/n;->dd:Landroid/support/v4/view/o;

    .line 227
    return-void
.end method

.method public final a(Landroid/support/v4/view/p;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/n;->de:Landroid/support/v4/view/p;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance while it is still in use somewhere else?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    :cond_0
    iput-object p1, p0, Landroid/support/v4/view/n;->de:Landroid/support/v4/view/p;

    .line 242
    return-void
.end method

.method public final c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/view/n;->dd:Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/v4/view/n;->dd:Landroid/support/v4/view/o;

    invoke-interface {v0, p1}, Landroid/support/v4/view/o;->d(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v4/view/n;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public final refreshVisibility()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v4/view/n;->de:Landroid/support/v4/view/p;

    .line 146
    return-void
.end method
