.class final Landroid/support/v7/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ho:Landroid/support/v7/app/f;


# direct methods
.method constructor <init>(Landroid/support/v7/app/f;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Landroid/support/v7/app/g;->ho:Landroid/support/v7/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Landroid/support/v7/app/g;->ho:Landroid/support/v7/app/f;

    invoke-static {v0}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f;)Landroid/support/v7/internal/view/menu/o;

    move-result-object v0

    .line 70
    iget-object v1, p0, Landroid/support/v7/app/g;->ho:Landroid/support/v7/app/f;

    iget-object v1, v1, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/g;->ho:Landroid/support/v7/app/f;

    iget-object v1, v1, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Landroid/support/v7/app/g;->ho:Landroid/support/v7/app/f;

    invoke-static {v1, v0}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f;Landroid/support/v7/internal/view/menu/o;)V

    .line 77
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/g;->ho:Landroid/support/v7/app/f;

    invoke-static {v0}, Landroid/support/v7/app/f;->b(Landroid/support/v7/app/f;)Z

    .line 78
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->ho:Landroid/support/v7/app/f;

    invoke-static {v0, v3}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/f;Landroid/support/v7/internal/view/menu/o;)V

    goto :goto_0
.end method
