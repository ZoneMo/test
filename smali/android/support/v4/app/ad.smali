.class final Landroid/support/v4/app/ad;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 125
    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ac;->a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-virtual {p1, p2}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-virtual {p1, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 120
    return-void
.end method
